 
# LaTeX documents for dictyBase presentations

This folder contains documents for various dictyBase presentations using the [`beamer`](http://www.tex.ac.uk/tex-archive/macros/latex/contrib/beamer/doc/beameruserguide.pdf) package in `LaTeX`.

### Getting started
* There is a `template.tex` to get started. 
	* The template can be further customized. `beamer` documentation can help with that
	* `template.pdf` is a sample PDF generated from the template
* `sty` folder contains `LaTeX style` file that documents and packages might require. If it is already installed in the system; you can ignore it. Otherwise just put the `sty` files alongside your LaTeX document while compiling.

### Setting up LaTeX environment
1. Install [`MacTex.pkg`](http://www.tug.org/mactex/). This will install all the required libraries and binaries in `/usr/local/texlive...`. This is a complete install and will take approx. 2.1G space.
2. For a minimal install, use [`BasicTex.pkg`](http://www.tug.org/mactex/morepackages.html) 
3. For editing documents, you can use [`texmaker.app`](http://www.xm1math.net/texmaker/download.html)


**Note**: On building with `latex` or `pdflatex`, a lot of files are generated. These file are not required and can be deleted later. They have been added to `.gitignore`. The only files that are required are `*.tex`, `*.bib`, `*.pdf` and `*.sty`


