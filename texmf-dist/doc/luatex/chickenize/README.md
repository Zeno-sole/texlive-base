The package chickenize provides several commands and Lua functions to manipulate the input or output tokens of any Lua(La)TeX document. It serves mostly educational and playful usage, but some functions may be used in serious documents.

To produce the package files, run lualatex on chickinize.dtx, wich should result in the creation of the following files:
  chickenize.pdf  (documentation)
  chickenize.tex  (plainTeX user interface)
  chickenize.sty  (LaTeX user interface)
  chickenize.lua  (Lua package code) [does the actual work]

You need an up-to-date TeX Live (2020, if possible) to use this package. Maybe a full MiKTeX will also work. (Not tested!) Lua\TeX > 1.0.4 is required for some features since the corresponding syntax has changed; tested with Lua\TeX 1.12.0 (TeX Live 2020)

For any comments or suggestions, contact me:
arno dot trautmann at gmx dot de

Hope you have fun with this package!

This package is copyright © 2021 Arno L. Trautmann. It may be distributed and/or
modified under the conditions of the LaTeX Project Public License, either version 1.3c
of this license or (at your option) any later version. This work has the LPPL mainten-
ance status ‘maintained’.
