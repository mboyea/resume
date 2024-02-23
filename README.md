Matthew Boyea Resume
===
A visually pleasing resume document written in plaintext using Markdown + LaTeX via Pandoc + Makefile
---
This resume uses [Pandoc] to convert a collection of [Markdown] & [LaTeX] files into high-quality PDFs. Markdown is used to minimize boilerplate while writing content, and LaTeX is used to enable the best possible control over document styles. The build process is contained in a simple [Makefile] for ease-of-use.
* Written content and declared styles are separated in the source code (Markdown is to LaTeX as HTML is to CSS in this project).
* The build process is easily reproducible, easily editable, and fast (Makefile natively supports partial rebuilds & parallelization, and is as standard as it gets for custom build tools).
* Changes in document formatting are easy to implement (Pandoc natively supports the ability to input and output [many popular formats](https://pandoc.org/MANUAL.html#options) including .docx, .pptx, .tex, .pdf, .html, and .json; plus it could support any other format through Lua plugins).

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

### Inspiration
Links to places on the internet that helped inspire this project are listed below.
* [pretty tex typography examples](https://tex.stackexchange.com/questions/1319/showcase-of-beautiful-typography-done-in-tex-friends)
* [skilled tex typography examples](https://tug.org/texshowcase/)
* [latex + markdown example](https://tex.stackexchange.com/questions/600705/keeping-typesetting-details-in-markdown-file)
* [pandoc + markdown + latex example](https://tex.stackexchange.com/a/246871)
* [pandoc + markdown + context guide](https://dave.autonoma.ca/blog/)
* [pandoc latex templates](https://bookdown.org/yihui/rmarkdown-cookbook/latex-template.html)

### Contribute
Unfortunately, this project doesn't support community contributions right now. Feel free to fork, but be sure to [read the license](./LICENSE.md).

[Pandoc]: https://pandoc.org/
[Markdown]: https://pandoc.org/MANUAL.html#pandocs-markdown
[LaTeX]: https://www.latex-project.org/
[Makefile]: https://www.gnu.org/software/make/manual/make.html

