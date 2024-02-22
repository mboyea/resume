Matthew Boyea Resume
===
A visually pleasing resume document written with Markdown & LaTeX
---
This resume uses [Pandoc] to convert a set of hybrid [Markdown]/[LaTeX] documents into a PDF output. Markdown is used to minimize boilerplate while writing content, and LaTeX is used to enable the best possible control over document styles. The build process is contained in a simple [Makefile] for ease-of-use.
* Changes in document formatting are easy to implement (Pandoc natively supports the ability to input and output [many popular formats](https://pandoc.org/MANUAL.html#options) including .docx, .pptx, .tex, .pdf, .html, and .json; plus it supports any other format through custom Lua plugins).
* The concerns of writing content and declaring style are separate (Markdown is to LaTeX as HTML is to CSS in this project).
* The build process is easily reproducible, easily editable, and fast (Makefile natively supports partial rebuilds & parallelization, and is as standard as it gets for custom build tools).

### Install (Arch Linux)
* Install `texlive-basic texlive-latexrecommended texlive-latexextra texlive-fontsrecommended` from pacman.
* Install `pandoc-bin` from AUR **or** `pandoc-cli` from pacman *(do not install both)*.
* [Clone this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository#cloning-a-repository) to a directory on your computer. That directory will be referred to as `root`.

### Scripts
To run a script, type the script into a terminal within the `root` directory.

| script | description |
|:------ |:----------- |
| `make` | compile output |
| `make clean` | delete output |

### Temporary Notes
TODO: figure out how to define styles via a .tex file in `/src` directory. This will include the following:
* find suitable class file or create custom class file
* https://ctan.org/topic/class
* https://tex.stackexchange.com/questions/63358/how-to-create-a-template-or-document-class-for-latex

### Contribute
Unfortunately, this project doesn't support community contributions right now. Feel free to fork, but be sure to [read the license](./LICENSE.md).

[Pandoc]: https://pandoc.org/
[Markdown]: https://pandoc.org/MANUAL.html#pandocs-markdown
[LaTeX]: https://www.latex-project.org/
[Makefile]: https://www.gnu.org/software/make/manual/make.html
