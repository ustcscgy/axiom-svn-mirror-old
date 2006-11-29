;;;-*-Mode:LISP; Package:(PCL LISP 1000); Base:10; Syntax:Common-lisp -*-
;;;
;;; *************************************************************************
;;; Copyright (c) 1985, 1986, 1987, 1988, 1989, 1990 Xerox Corporation.
;;; All rights reserved.
;;;
;;; Use and copying of this software and preparation of derivative works
;;; based upon this software are permitted.  Any distribution of this
;;; software or derivative works must comply with all applicable United
;;; States export control laws.
;;; 
;;; This software is made available AS IS, and Xerox Corporation makes no
;;; warranty about the software, its performance or its conformity to any
;;; specification.
;;; 
;;; Any person obtaining a copy of this software is requested to send their
;;; name and post office or electronic mail address to:
;;;   CommonLoops Coordinator
;;;   Xerox PARC
;;;   3333 Coyote Hill Rd.
;;;   Palo Alto, CA 94304
;;; (or send Arpanet mail to CommonLoops-Coordinator.pa@Xerox.arpa)
;;;
;;; Suggestions, comments and requests for improvements are also welcome.
;;; *************************************************************************
;;; 
;;; This is the CMU Lisp version of the file low.
;;; 

(in-package :pcl)

#+small
(setq *optimize-speed*
      '(optimize (speed 3) (safety 0) (debug 0.5) (ext:inhibit-warnings 3)))
		 
(defmacro dotimes ((var count &optional (result nil)) &body body)
  `(lisp:dotimes (,var (the fixnum ,count) ,result)
     (declare (fixnum ,var))
     ,@body))

;;; Just use our without-interrupts.  We don't have the INTERRUPTS-ON/OFF local
;;; macros spec'ed in low.lisp, but they aren't used.
;;;
(defmacro without-interrupts (&rest stuff)
  `(sys:without-interrupts ,@stuff))

(defun function-arglist (fcn)
  "Returns the argument list of a compiled function, if possible."
  (cond ((symbolp fcn)
         (when (fboundp fcn)
           (function-arglist (symbol-function fcn))))
        ((eval:interpreted-function-p fcn)
         (eval:interpreted-function-arglist fcn))
        ((functionp fcn)
         (let ((lambda-expr (function-lambda-expression fcn)))
           (if lambda-expr
               (cadr lambda-expr)
               (let ((function (kernel:%closure-function fcn)))
                 (values (read-from-string
                          (kernel:%function-arglist function)))))))))


;;; And returns the function, not the *name*.
(defun set-function-name (fcn new-name)
  "Set the name of a compiled function object."
  (declare (special *boot-state* *the-class-standard-generic-function*))
  (cond ((symbolp fcn)
         (set-function-name (symbol-function fcn) new-name))
        ((funcallable-instance-p fcn)
	 (if (if (eq *boot-state* 'complete)
		 (typep fcn 'generic-function)
		 (eq (class-of fcn) *the-class-standard-generic-function*))
	     (setf (kernel:%funcallable-instance-info fcn 1) new-name)
	     (typecase fcn
	       (kernel:byte-closure
		(set-function-name (kernel:byte-closure-function fcn) new-name))
	       (kernel:byte-function
		(setf (kernel:byte-function-name fcn) new-name))))
         fcn)
        ((eval:interpreted-function-p fcn)
         (setf (eval:interpreted-function-name fcn) new-name)
         fcn)
        (t
         (let ((header (kernel:%closure-function fcn)))
	   #+cmu17
	   (setf (c::%function-name header) new-name)
	   #-cmu17
           (system:%primitive c::set-function-name header new-name))
	 fcn)))

(in-package "C")

(def-source-context pcl:defmethod (name &rest stuff)
  (let ((arg-pos (position-if #'listp stuff)))
    (if arg-pos
	`(pcl:defmethod ,name ,@(subseq stuff 0 arg-pos)
	   ,(nth-value 2 (pcl::parse-specialized-lambda-list
			  (elt stuff arg-pos))))
	`(pcl:defmethod ,name "<illegal syntax>"))))


(in-package "PCL")

;;;; STD-INSTANCE

;;; Under CMU17 conditional, STD-INSTANCE-P is only used to discriminate
;;; between functions (including FINs) and normal instances, so we can return
;;; true on structures also.  A few uses of (or std-instance-p fsc-instance-p)
;;; are changed to pcl-instance-p.
;;;
(defmacro std-instance-p (x)
  `(kernel:%instancep ,x))
(defmacro pcl-instance-p (x)
  `(typep (kernel:layout-of ,x) 'wrapper))


;;; We define this as STANDARD-INSTANCE, since we're going to clobber the
;;; layout with some standard-instance layout as soon as we make it, and we
;;; want the accesor to still be type-correct.
;;;
(defstruct (standard-instance
	    (:predicate nil)
	    (:constructor %%allocate-instance--class--fn ())
	    (:alternate-metaclass kernel:instance lisp:standard-class
				  kernel:make-standard-class))
  (slots nil))

;;; Must immediately setf the std-instance-wrapper after calling this.
(defmacro %%allocate-instance--class ()
  `(ext:truly-the standard-instance (kernel:%make-instance 2)))

;;; Both of these operations "work" on structures, which allows the above
;;; weakening of std-instance-p.
;;;
(defmacro std-instance-slots (x) `(kernel:%instance-ref ,x 1))
(defmacro std-instance-wrapper (x) `(kernel:%instance-layout ,x))

(defmacro built-in-or-structure-wrapper (x) `(kernel:layout-of ,x))

(defmacro get-wrapper (inst)
  (ext:once-only ((wrapper `(wrapper-of ,inst)))
    `(progn
       (assert (typep ,wrapper 'wrapper) () "What kind of instance is this?")
       ,wrapper)))

(defmacro get-instance-wrapper-or-nil (inst)
  (ext:once-only ((wrapper `(wrapper-of ,inst)))
    `(if (typep ,wrapper 'wrapper)
	 ,wrapper
	 nil)))

;;; get-slots harmless

(defmacro get-slots-or-nil (inst)
  (ext:once-only ((n-inst inst))
    `(when (pcl-instance-p ,n-inst)
       (if (std-instance-p ,n-inst)
	   (std-instance-slots ,n-inst)
	   (fsc-instance-slots ,n-inst)))))


;;;; Structure-instance stuff:

(pushnew :structure-wrapper *features*)

(defun structure-functions-exist-p ()
  t)

(defun structure-instance-p (x)
  (typep x 'lisp:structure-object))

(defun structurep (x)
  (typep x 'lisp:structure-object))

(defun structure-type (x)
  (lisp:class-name (kernel:layout-class (kernel:%instance-layout x))))


(defun structure-type-p (type)
  (and (symbolp type)
       (let ((class  (lisp:find-class type nil)))
	 (and class
	      (typep (kernel:layout-info (kernel:class-layout class))
		     'kernel:defstruct-description)))))

(defun get-structure-dd (type)
  (kernel:layout-info (kernel:class-layout (lisp:find-class type))))

(defun structure-type-included-type-name (type)
  (let ((include (kernel::dd-include (get-structure-dd type))))
    (if (consp include)
	(car include)
	include)))

(defun structure-type-slot-description-list (type)
  (nthcdr (length (let ((include (structure-type-included-type-name type)))
		    (and include (kernel:dd-slots (get-structure-dd include)))))
	  (kernel:dd-slots (get-structure-dd type))))

(defun structure-slotd-name (slotd)
  (kernel:dsd-name slotd))

(defun structure-slotd-accessor-symbol (slotd)
  (kernel:dsd-accessor slotd))

(defun structure-slotd-reader-function (slotd)
  (fdefinition (kernel:dsd-accessor slotd)))

(defun structure-slotd-writer-function (slotd)
  (unless (kernel:dsd-read-only slotd)
    (fdefinition `(setf ,(kernel:dsd-accessor slotd)))))

(defun structure-slotd-type (slotd)
  (kernel:dsd-type slotd))

(defun structure-slotd-init-form (slotd)
  (kernel::dsd-default slotd))
