<TeXmacs|1.0.4>

<style|generic>

<\body>
  <with|font-series|bold|<with|font-size|1.19|<\with|par-mode|center>
    Fiche explicative : <assign|page-this-header|Annexe 2>

    Fonctionnement de GNUplot
  </with>>>

  \;

  <\with|par-left|20>
    \ \ \ GNUplot est un logiciel de trac� de courbes et de surfaces,
    permettant la d�finition et l'affichage de fonctions et de nuages de
    points. Les graphiques ainsi trac�s sont enti�rement param�trables.
  </with>

  <subsubsection|1) Lancement, fermeture du logiciel>

  <tabular|<tformat|<table|<row|<cell|da3@da3:~$ gnuplot >|<cell|# Pour
  lancer gnuplot � partir d'une ligne de commande>>|<row|<cell|gnuplot\<gtr\>
  quit>|<cell|# Pour quitter gnuplot ( ou Control+D )>>>>>

  <subsubsection|2) Obtenir de l'aide sur une fonction>

  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <tabular|<tformat|<table|<row|<cell|gnuplot\<gtr\>
  help>|<cell|# Permet d'afficher l'aide g�n�rale, et de circuler entre les
  diff�rentes sections >>|<row|<cell|gnuplot\<gtr\> ?plot>|<cell|# Permet
  d'obtenir de l'aide sur l'instruction plot>>>>>

  <subsubsection|3) D�finition des variables de base>

  <tabular|<tformat|<table|<row|<cell|gnuplot\<gtr\> set title \S Trac� de
  fonction \T>|<cell|#Place un titre au dessus du
  graphe>>|<row|<cell|gnuplot\<gtr\> set xlabel \S Coordonn�es X
  \T>|<cell|#Place l'intitul� contre l'axe des X>>|<row|<cell|gnuplot\<gtr\>
  set ylabel \S Coordonn�es Y \T>|<cell|#Place l'intitul� contre l'axe des
  Y>>|<row|<cell|gnuplot\<gtr\> set xrange [-pi:e]>|<cell|#Intervalle sur x �
  afficher>>|<row|<cell|gnuplot\<gtr\> set yrange [-5:5]>|<cell|#Intervalle
  sur y>>|<row|<cell|>|<cell|>>|<row|<cell|gnuplot\<gtr\> set
  hidden3d>|<cell|#Cache les faces cach�es d'un dessin
  3D>>|<row|<cell|gnuplot\<gtr\> set sample 500>|<cell|#Modifie la qualit� du
  trac� 2D>>>>>

  <subsubsection|4) Trac� d'une courbe d�finie par une �quation.>

  <tabular|<tformat|<table|<row|<cell|gnuplot\<gtr\> f(x)=
  sin(x)*exp(x)>|<cell|# D�finition de f(x)>>|<row|<cell|gnuplot\<gtr\> plot
  [0:pi] f(x),1/x>|<cell|# Trac� sur la m�me feuille de f(x)
  et>>|<row|<cell|>|<cell|# de 1/x, sur l'intervalle
  [0;Pi]>>|<row|<cell|gnuplot\<gtr\> plot [0:pi] [-5:5] f(x)>|<cell|#
  Affichage pour x= [0;pi] y=[-5;5]. >>|<row|<cell|>|<cell|# Les intervalles
  sont optionnels>>|<row|<cell|gnuplot\<gtr\> splot sin(x)*sin(y)>|<cell|#
  Trac� d'une fonction en 3D>>|<row|<cell|>|<cell|>>|<row|<cell|gnuplot\<gtr\>
  g(x) = 0\<gtr\>x ? 0 : 1\<gtr\>x\<gtr\>? 1 :
  1-exp(-2*x**n)>|<cell|#D�finition d'une fonction d�finie par morceaux>>>>>

  Structure: g(x) = <with|font-shape|italic|test><with|mode|math|<rsub|1>> ?
  <with|font-shape|italic|<with|font-shape|right|<with|font-series|bold|valeur<with|mode|math|<rsub|1>>>>
  >:<with|font-shape|italic| test<with|mode|math|<rsub|2>>
  >?<with|mode|math|<with|font-series|bold|
  <with|font-shape|right|valeur><with|font-shape|right|>><rsub|2>> : [...] :
  <with|font-series|bold|valeur par d�faut>

  <subsubsection|5) Changement de coordonn�es>.

  gnuplot\<gtr\> set parametric \ \ \ \ \ \ \ \ \ \ # On active le mode
  param�trique

  \ dummy variable is t for curves, u/v for surfaces

  gnuplot\<gtr\> plot 1/t \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # La variable
  utilis�e est t, ou (u,v) pour les surfaces

  gnuplot\<gtr\> unset parametric \ \ \ \ \ \ \ # Pour quitter le mode
  param�trique ( obligatoire ! )

  \;

  gnuplot\<gtr\> set polar \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ # On active le
  mode polaire. Les options sont les m�mes que
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dans
  le mode param�trique.

  <subsubsection|6) Chargement de nuages de points>

  Les nuages de points doivent etre stock�s dans un fichier texte externe au
  programme. Dans la premi�re colonne, on stoque les absisses, dans la
  deuxi�me les ordonn�es. Pour afficher ce nuage on utilise:

  gnuplot\<gtr\> plot 'nom_fichier.res' \ # L'extension par d�faut est .res
  pour ces fichiers.
</body>

<\initial>
  <\collection>
    <associate|language|french>
    <associate|page-medium|paper>
    <associate|page-show-hf|true>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|1>>
    <associate|auto-5|<tuple|5|1>>
    <associate|auto-6|<tuple|6|1>>
    <associate|gly-1|<tuple|1|?>>
    <associate|toc-1|<tuple|<uninit>|1>>
    <associate|toc-10|<tuple|<uninit>|?>>
    <associate|toc-2|<tuple|<uninit>|1>>
    <associate|toc-3|<tuple|<uninit>|1>>
    <associate|toc-4|<tuple|<uninit>|1>>
    <associate|toc-5|<tuple|<uninit>|1>>
    <associate|toc-6|<tuple|<uninit>|2>>
    <associate|toc-7|<tuple|<uninit>|?>>
    <associate|toc-8|<tuple|<uninit>|?>>
    <associate|toc-9|<tuple|<uninit>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|3fn>|1) Lancement, fermeture du logiciel
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-1>>

      <with|par-left|<quote|3fn>|2) Obtenir de l'aide sur une fonction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-2>>

      <with|par-left|<quote|3fn>|3) D�finition des variables de base
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-3>>

      <with|par-left|<quote|3fn>|4) Trac� d'une courbe d�finie par une
      �quation. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-4>>

      <with|par-left|<quote|3fn>|5) Changement de coordonn�es
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-5>>

      <with|par-left|<quote|3fn>|6) Chargement de nuages de points
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>