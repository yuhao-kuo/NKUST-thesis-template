# PDF Processing

[繁體中文](processing.md) | **English**

> Note 1: ghostscript comes preinstalled in the texlive Docker image.
> Note 2: the current processing settings are not perfect; we recommend using main.pdf for the final output.

## Copy protection

[ghostscript](https://www.ghostscript.com/) adds copy protection to the PDF:

```
$ make pdfprocessing
```

`make pdfprocessing` reads `build/main.pdf` as its source. If `build/main.pdf` does not exist, run `make all` first to generate it.

## Custom processing

ghostscript is a powerful tool, not limited to copy protection; it can also compress PDF files, among other things.

See the [official documentation](https://www.ghostscript.com/doc/current/Use.htm) to customize it for your needs.
