#The Linebreaker package, version v0.1a (2022-03-12)

This package tries to prevent overflow lines in paragraphs or boxes.
It changes the LuaTeX's `linebreak` callback, and it re-typesets the paragraph 
with increased values of `\tolerance` and `\emergencystretch`
until the overflow doesn't happen. If that doesn't help, it chooses the solution
with the lowest badness.


## Usage


     \usepackage{linebreaker}


## License

Permission is granted to copy, distribute and/or modify this software
under the terms of the LaTeX Project Public License, version 1.3.


