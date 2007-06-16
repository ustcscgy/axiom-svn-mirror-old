/* mpz_set_si(integer, val) -- Assign INTEGER with a small value VAL.

Copyright 1991, 1993, 1994, 1995, 2000, 2001 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library; see the file COPYING.LIB.  If not, write to
the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
MA 02111-1307, USA. */

#include "gmp.h"
#include "gmp-impl.h"

void
mpz_set_si (mpz_ptr dest, signed long int val)
{
  /* We don't check if the allocation is enough, since the rest of the
     package ensures it's at least 1, which is what we need here.  */
  if (val > 0)
    {
      dest->_mp_d[0] = val;
      dest->_mp_size = 1;
    }
  else if (val < 0)
    {
      dest->_mp_d[0] = (unsigned long) -val;
      dest->_mp_size = -1;
    }
  else
    dest->_mp_size = 0;
}