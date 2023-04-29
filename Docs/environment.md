## Building Environment

目前提供二個方案可以進行論文編輯，另有開發者提供 Overleaf 的版型，本節將會提供這三個編輯方式的環境建立說明。

* [CLI 環境](build.md)
* [Docker 環境](docker.md)
* Overleaf 環境

> Overleaft 環境是由 [fuanho](https://github.com/fuanho) 維護的 [NKUST-Thesis-template-overleaf](https://github.com/fuanho/NKUST-Thesis-template-overleaf) 專案提供，使用此方案者不需要額外安裝套件。

> 下列圖示以 CLI 來標示 **CLI 環境**，以 Docker 來標示 **Docker** 環境。

#### **[Visual Studio Code](https://code.visualstudio.com/)**

![VSCode](https://img.shields.io/badge/VSCode-CLI-yellow?logo=visualstudiocode&logoColor=white)
![VSCode](https://img.shields.io/badge/VSCode-Docker-green?logo=visualstudiocode&logoColor=white)

> 推薦安裝

Visual Studio Code 下面簡稱為 VSCode，由 Microsoft 釋出的開源開發工具，可提供 SSH 遠端連線與 WSL 開發的功能，提供研究生在本地端連線到編譯環境進行論文的撰寫工作。下列是我們撰寫論文時經常使用的模組。

* **LaTeX Workshop**，LaTeX 支援工具，提供編譯、預覽等功能的支援。
* **LaTeX language support**，LaTeX 語法支援工具，提供語法高亮、自動補齊等功能。
* **vscode-pdf**，PDF 預覽工具。
* **Remote Development**，遠端開發工具包，安裝此套件將會自動安裝 SSH、WSL 等套件，是個好用的遠端工具包。
* **Live Share**，遠端協作工具，提供他人透過 VSCode 提供協助，內含同時編輯文件、操作終端機、語音通訊等功能。

當您的作業系統為 Linux 發行版，安裝時請先到官方網站進行下載，下載後請切換到檔案的目錄進行下列指令。

```
### debian / ubuntu
$ sudo dpkg -i vscode.deb
```

您的作業系統為 Windows 7/8/10/11，請直接[由此](https://code.visualstudio.com/download)下載並安裝。

### Docker 方案

#### **[Docker](https://www.docker.com/)**

![Docker](https://img.shields.io/badge/Docker-Docker-green?logo=Docker&logoColor=white)

> **已有開發環境**者，此工具不須安裝。

適用於 Windows 用戶、Mac 用戶、不想建立環境的用戶，安裝文件請見 [官方文件](https://docs.docker.com/engine/install/)，本專案的使用方式請見 [Docker文件](docker.md)。

### CLI 方案
#### **[Make](https://www.gnu.org/software/make/)**

![Make](https://img.shields.io/badge/Make-CLI-yellow?logo=gnu&logoColor=white)

> Docker 方案的使用者，此工具不須安裝。

GNU 提供的工具，下列為安裝指令。雖然 make 工具有提供 Windows 的版本，但因本專案中使用了部分 Linux 語法，因此無法於 Windows CMD / PowerShell 中使用，目前已知可於 WSL、MSYS、Git Bash 中使用。

```
### debian / ubuntu
$ sudo apt-get install make
```

#### **[Git](http://git-scm.com/)**

![Git](https://img.shields.io/badge/Git-CLI-yellow?logo=git&logoColor=white)
![Git](https://img.shields.io/badge/Git-Docker-green?logo=git&logoColor=white)

> 建議安裝，非必要。

是否安裝 Git 並不影響您使用此模板，但我們極度推薦安裝這個工具。Git 是當前最主流的版本控制軟體，能讓您能紀錄再哪個時候修改了什麼，以及諸多免費的遠端儲存庫([GitHub](https://github.com/)、[GitLab](https://gitlab.com/)、[bitbucket](https://bitbucket.org/))可以使用，快速擁有多個異地備份，保障您的論文安全。

Linux 發行版可透過套件管理工具快速安裝。

```
### debian / ubuntu
$ sudo apt-get install git-core
```

Windows 7/8/10/11 則需要手動安裝，請[由此](https://git-scm.com/downloads)下載。

#### **[texlive](https://tug.org/texlive/)**

![LaTeX](https://img.shields.io/badge/TexLive-CLI-yellow?logo=latex&logoColor=white)

> Docker 方案的使用者，此工具不須安裝。

LeTeX 文件編譯工具。

```
$ sudo apt install texlive-full
```

#### **[ghostscript](https://www.ghostscript.com/)**

![ghostscript](https://img.shields.io/badge/ghostscript-CLI-yellow?logo=latex&logoColor=white)

非必要的工具，目前僅用於 PDF 檔案防拷。

> Linux 與 Docker 方案的使用者，此工具不須安裝。
> Windows 系統使用者如有 Adobe 的工具，建議直接使用 Adobe 工具即可。

請由此處[下載](https://www.ghostscript.com/releases/index.html)。