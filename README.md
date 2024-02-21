Matthew Boyea Resume
===
A visually pleasing resume document written with LaTeX
---
This resume is compiled to PDF from a LaTeX document.

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
* The goal is to use Markdown files for content and LaTeX files for styling the content - typesetting
* https://ashki23.github.io/markdown-latex.html

* find suitable class file or create custom class file
* https://ctan.org/topic/class
* https://tex.stackexchange.com/questions/63358/how-to-create-a-template-or-document-class-for-latex
* figure out how to compile from Markdown files
* https://ctan.org/pkg/markdown
* figure out how to specify output directory for build files
* figure out how to combine multiple pdf latex outputs into one pdf by appending pages from one to the next
### Contribute
Unfortunately, this project doesn't support community contributions right now. Feel free to fork, but be sure to [read the license](./LICENSE.md).

