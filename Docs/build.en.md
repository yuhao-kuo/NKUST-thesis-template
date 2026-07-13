## Compiling the Template

[繁體中文](build.md) | **English**

This template uses make for compilation tasks. In Visual Studio Code, LaTeX Workshop can compile the document automatically.
The current targets build the thesis content, build the cover, remove temporary files, and remove all generated files. Each function is described below.

Note: with the Docker option, make commands must be sent to the container to compile.

### VSCode support

LaTeX Workshop provides automatic compilation: by default, saving a .tex file triggers a build. You can also compile with `ctrl` + `alt` + `b`.

### Building the thesis content

Thesis content here means everything bound inside the finished book: the cover, title page, Chinese and English abstracts, acknowledgements, table of contents, list of figures, list of tables, main text, references, and appendices.

```
$ make all
```

### Removing temporary files

Temporary files are by-products of LaTeX compilation and only affect build time. This target keeps the PDF produced by the build.

```
$ make clean
```

### Removing all generated files

This target removes everything the build produced, including the compiled PDF and the temporary files.

```
$ make distclean
```

### PDF copy protection

The copy protection command is below. `main.pdf` must exist when you run it. See [processing.en.md](processing.en.md) for details.

```
$ make pdfprocessing
```
