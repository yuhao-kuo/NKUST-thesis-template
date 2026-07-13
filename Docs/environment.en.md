## Building Environment

[繁體中文](environment.md) | **English**

There are two ways to set up an editing environment for this template, plus an Overleaf layout maintained by a contributor. This page explains how to set up each of the three.

* [CLI environment](build.en.md)
* [Docker environment](docker.en.md)
* Overleaf environment

> The Overleaf layout comes from the [NKUST-Thesis-template-overleaf](https://github.com/fuanho/NKUST-Thesis-template-overleaf) project maintained by [fuanho](https://github.com/fuanho). It requires no extra package installation.

> In the badges below, CLI marks tools for the **CLI environment** and Docker marks tools for the **Docker environment**.

#### **[Visual Studio Code](https://code.visualstudio.com/)**

![VSCode](https://img.shields.io/badge/VSCode-CLI-yellow?logo=visualstudiocode&logoColor=white)
![VSCode](https://img.shields.io/badge/VSCode-Docker-green?logo=visualstudiocode&logoColor=white)

> Recommended

Visual Studio Code (VSCode below) is an open-source development tool released by Microsoft. It supports SSH remote connections and WSL development, so you can connect from your local machine to the build environment and write your thesis there. Extensions we use often while writing:

* **LaTeX Workshop**: LaTeX support, including compilation and preview.
* **LaTeX language support**: syntax highlighting and auto-completion.
* **vscode-pdf**: PDF preview.
* **Remote Development**: remote development pack; installing it pulls in the SSH and WSL extensions. A handy remote toolkit.
* **Live Share**: real-time collaboration through VSCode, including shared editing, terminal access, and voice chat.

On a Linux distribution, download the package from the official site first, then switch to the download directory and run:

```
### debian / ubuntu
$ sudo dpkg -i vscode.deb
```

On Windows 7/8/10/11, download and install it [from here](https://code.visualstudio.com/download).

### Docker option

#### **[Docker](https://www.docker.com/)**

![Docker](https://img.shields.io/badge/Docker-Docker-green?logo=Docker&logoColor=white)

> Skip this tool if you **already have a working environment**.

Suitable for Windows users, Mac users, and anyone who prefers not to set up an environment. See the [official documentation](https://docs.docker.com/engine/install/) for installation and the [Docker guide](docker.en.md) for how this project uses it.

### CLI option

#### **[Make](https://www.gnu.org/software/make/)**

![Make](https://img.shields.io/badge/Make-CLI-yellow?logo=gnu&logoColor=white)

> Docker users can skip this tool.

A GNU build tool; the install command is below. Although make has a Windows version, this project uses some Linux-specific syntax, so it does not work in Windows CMD or PowerShell. It is known to work in WSL, MSYS, and Git Bash.

```
### debian / ubuntu
$ sudo apt-get install make
```

#### **[Git](http://git-scm.com/)**

![Git](https://img.shields.io/badge/Git-CLI-yellow?logo=git&logoColor=white)
![Git](https://img.shields.io/badge/Git-Docker-green?logo=git&logoColor=white)

> Recommended, but optional.

The template works with or without Git, but we strongly recommend installing it. Git is the most widely used version control system today. It records what you changed and when, and free remote repository services ([GitHub](https://github.com/), [GitLab](https://gitlab.com/), [bitbucket](https://bitbucket.org/)) give you multiple off-site backups, keeping your thesis safe.

Linux distributions can install it quickly through the package manager.

```
### debian / ubuntu
$ sudo apt-get install git-core
```

On Windows 7/8/10/11, install it manually; download it [from here](https://git-scm.com/downloads).

#### **[texlive](https://tug.org/texlive/)**

![LaTeX](https://img.shields.io/badge/TexLive-CLI-yellow?logo=latex&logoColor=white)

> Docker users can skip this tool.

The LaTeX document compilation toolchain.

```
$ sudo apt install texlive-full
```

#### **[ghostscript](https://www.ghostscript.com/)**

![ghostscript](https://img.shields.io/badge/ghostscript-CLI-yellow?logo=latex&logoColor=white)

Optional; currently only used for PDF copy protection.

> Linux and Docker users already have it built in; no extra installation needed.<br>
> Windows users who have Adobe tools can simply use those instead.

Download it [here](https://www.ghostscript.com/releases/index.html).
