# NKUST Thesis LaTeX

[![yuhao-kuo - NKUST-thesis-template](https://img.shields.io/static/v1?label=&message=NKUST-thesis-template&color=gray&logo=github)](https://github.com/yuhao-kuo/NKUST-thesis-template)
[![License](https://img.shields.io/badge/License-CC_BY--SA_4.0_International-blue)](https://creativecommons.org/licenses/by-sa/4.0/ "Creative Commons Attribution-ShareAlike 4.0 International License")
[![forks - NKUST-thesis-template](https://img.shields.io/github/forks/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/yuhao-kuo/NKUST-thesis-template/fork)
[![stars - NKUST-thesis-template](https://img.shields.io/github/stars/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/login?return_to=%2Fyuhao-kuo%2FNKUST-thesis-template)

[繁體中文](README.md) | **English**

![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

This project is a **LaTeX thesis template for graduate programs at National Kaohsiung University of Science and Technology (NKUST)**. It provides a LaTeX editing environment built on open-source tools. The layout follows the [NKUST Office of Academic Affairs thesis format guidelines (revised March 2022)](https://acad.nkust.edu.tw/var/file/4/1004/img/212/F-2-35.docx) and the thesis format standards of the network computing laboratories (`WNDCLab`, `NCLab`, `AIoRLab`) of the Department of Electronic Engineering, Jiangong Campus. The document is arranged in the following order:

1. Cover
2. Title page
3. Advisor recommendation letter (insert your own)
4. Thesis committee approval form (replace with your own)
5. Thesis copyright licensing agreement (replace with your own)
6. Chinese abstract
7. English abstract
8. Acknowledgements or preface
9. Table of contents
10. List of tables
11. List of figures
12. List of symbols (not provided)
13. Main text
14. References
15. Appendices
16. Autobiography or curriculum vitae (not provided)
17. Blank page

## Development Environment

![OS - Ubuntu](https://img.shields.io/badge/Ubuntu-white?logo=ubuntu&logoColor=orange)
![OS - Arch Linux](https://img.shields.io/badge/Arch_Linux-white?logo=archlinux&logoColor=blue)
![OS - Debian](https://img.shields.io/badge/Debian-white?logo=debian&logoColor=red)
![OS - Windows](https://img.shields.io/badge/Windows_WSL-white?logo=windows&logoColor=blue)
![OS - MacOS](https://img.shields.io/badge/Apple_MacOS-white?logo=apple&logoColor=gray)
![Container - Docker](https://img.shields.io/badge/Docker-white?logo=Docker&logoColor=blue)

The template was developed on Linux and still depends mainly on a Linux environment. It is known to work on several Linux distributions, including `Ubuntu`, `Arch Linux`, and `Debian`. If you use Windows, or prefer not to set up a local environment, use the [Docker](Docs/docker.en.md) option instead.

The rest of this document covers three parts: **installing the tools**, **getting the template**, and **usage**.

### Installing the tools

We recommend **Visual Studio Code** as the editor. The template uses **make** and the **texlive** package to compile and clean the document. We also recommend **Git** for version control, which protects your thesis against data loss or corruption. See [Docs/environment.en.md](Docs/environment.en.md) for installation details.

### Getting the template

Download the [stable release](https://github.com/yuhao-kuo/NKUST-thesis-template/releases) or the [development version](https://github.com/yuhao-kuo/NKUST-thesis-template/archive/master.zip), or clone the project with Git.

> We recommend cloning with Git.

The development version is the latest state of the master branch; a stable release marks a version after a major change to the structure or content. The thesis structure has stabilized and rarely changes drastically, so downloading the development version is fine.

If you run into any problem while using the template, open an issue and describe what you encountered.

### Usage

This section explains the template structure and the make commands.

#### Structure

* ***Chapters***: main text
* ***Configurations***: document format definitions and include settings
* ***Docs***: documentation
* ***Docker***: Docker commands and settings
* ***Externals***: external PDF files
* ***Fonts***: font files
* ***Figures***: all figures used in the text
* ***Instance***: cover / title page / abstracts / acknowledgements
* ***Packages***: LaTeX packages
* ***References***: bibliography (.bib) files
* ***Templates***: document layouts
* ***Tables***: externally inserted tables
* ***build***: build output
* ***.vscode***: editor settings
* ***config.tex***: content loading settings
* ***main.tex***: main document structure
* ***thesisinfo.tex***: author information
* ***titlepage.tex***: centered thesis cover

Font problems often cause compilation errors, so [Release v2.0](https://github.com/yuhao-kuo/NKUST-thesis-template/releases/tag/v2.0) added the Fonts directory back to the project for ease of use. All bundled fonts are **open source** or **free**, and their licenses are included in the Fonts directory.

#### Building the thesis

After editing, build the thesis with the `all` target.

```
$ make all
```

#### Cleaning up

Use `clean` to remove temporary files; it keeps the PDF produced by the build. To remove the build output completely, use `distclean`.

```
$ make clean
$ make distclean
```

#### PDF copy protection

The `pdfprocessing` target adds copy protection to the thesis PDF. It depends on the external tool **ghostscript**.
The command only processes `main.pdf`, so `main.pdf` must exist when you run it.

```
$ make pdfprocessing
```

## Security

If you manage your thesis on a public code hosting service such as **GitHub**, **GitLab**, or **Bitbucket**, check the access settings of your remote repository. Keep it private to avoid leaking your work.

## Acknowledgements

Thanks to the [contributors](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors) of this project and to the seniors who built the original layout!

If this project helps you, please give it a star. Thanks!

## License and Disclaimer

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

Most contributors of this project have graduated. Before using the template, check that the layout still meets the current regulations. The contributors take no responsibility for any loss caused by using this project.

If you find a formatting error, please open an issue.
