divert(-1)
  psfrag.m4                  Initialization for dpic -f processing:
                             Postscript with psfrag strings

* Circuit_macros Version 10.1, copyright (c) 2022 J. D. Aplevich under     *
* the LaTeX Project Public Licence in file Licence.txt. The files of       *
* this distribution may be redistributed or modified provided that this    *
* copyright notice is included and provided that modifications are clearly *
* marked to distinguish them from this distribution.  There is no warranty *
* whatsoever for these files.                                              *

define(`psfrag_')
ifelse(m4postprocessor,postscript,,`include(postscript.m4)divert(-1)')

divert(0)dnl
