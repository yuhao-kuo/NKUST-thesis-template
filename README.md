# NKUST Thesis LaTeX

[![yuhao-kuo - NKUST-thesis-template](https://img.shields.io/static/v1?label=&message=NKUST-thesis-template&color=gray&logo=github)](https://github.com/yuhao-kuo/NKUST-thesis-template)
[![License](https://img.shields.io/badge/License-CC_BY_SA_3.0_TW-blue)](http://creativecommons.org/licenses/by-sa/3.0/tw/ "創用 CC 姓名標示-相同方式分享 3.0 台灣 授權條款")
[![forks - NKUST-thesis-template](https://img.shields.io/github/forks/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/yuhao-kuo/NKUST-thesis-template/fork)
[![stars - NKUST-thesis-template](https://img.shields.io/github/stars/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/login?return_to=%2Fyuhao-kuo%2FNKUST-thesis-template)


![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

本專案為**國立高雄科技大學研究所論文 LaTex 模板**，依照[國立高雄科技大學學位論文格式規範](https://ceed.nkust.edu.tw/app/index.php?Action=downloadfile&file=WVhSMFlXTm9MekV3TDNCMFlWOHhPRFEzWHpJMk5qRXhNakJmTVRZMk9EVXVjR1Jt&fname=WSGGTSB00010A1KK50LKRKHGSTTW25B1RKFG40NPQPRLFG40ROFCLL54WWOODGOK44CCIH15A404GDJGVWPKTS14B0MOGCHCCC35DCTSZWB030FC145424DCGCLK0115JCLKSXHGTWFGSWHCUS30A110)及建工校區電子工程系網路計算實驗室(`WNDCLab`、`NCLab`、`AIoRLab`)之論文格式標準進行編排。其內容排列順序依序為：

1. 封面
2. 書名頁
3. 論文指導教授推薦書
4. 論文口試委員會審訂書
5. 中文摘要
6. 英文摘要
7. 誌謝或序言
8. 目錄
9. 表目錄
10. 圖目錄
11. 論文本文
12. 參考文獻
13. 附錄
14. 自傳或簡歷 (未提供)
15. 空白頁

## 開發環境

![OS - Ubuntu](https://img.shields.io/badge/Ubuntu-yellow?logo=ubuntu&logoColor=white)
![OS - Debian](https://img.shields.io/badge/Debian-yellow?logo=debian&logoColor=white)
![OS - Arch Linux](https://img.shields.io/badge/Arch_Linux-yellow?logo=linux&logoColor=white)

![OS - Windows](https://img.shields.io/badge/Windows_WSL-blue?logo=windows&logoColor=white)
![OS - MacOS](https://img.shields.io/badge/Apple_MacOS-orange?logo=apple&logoColor=white)
![Container - Docker](https://img.shields.io/badge/Docker-green?logo=Docker&logoColor=white)

此模板使用 Linux 系作業系統進行開發，主體仍相依於 Linux 上，目前已知此模板能在 `Ubuntu`、`Debian`、`Arch Linux ` 等多個 Linux 發行版中使用。如果您是 Windows 使用者或不想佈署環境的用戶可使用 [docker](Docs/docker.md) 方案進行使用。

後續文件內容依序為**安裝工具**、**取得**與**使用**等三大部份。

### 安裝工具

專案推薦使用編輯器 **Visual Studio Code**，使用 **make** 與 **texlive** 套件包進行文件的編譯移除等相關操作，另外我們推薦使用 **Git** 管理版本，預防資料遺失及損毀等災難。

#### **[Docker](https://www.docker.com/)**

![Docker](https://img.shields.io/badge/Docker-Docker-green?logo=Docker&logoColor=white)

> 如**已有開發環境**者，此工具不須安裝。

適用於 Windows 用戶、Mac 用戶、不想建立環境的用戶，安裝文件請見 [官方文件](https://docs.docker.com/engine/install/)。

#### **[Visual Studio Code](https://code.visualstudio.com/)**

![VSCode](https://img.shields.io/badge/VSCode-CLI-yellow?logo=visualstudiocode&logoColor=white)
![VSCode](https://img.shields.io/badge/VSCode-Docker-green?logo=visualstudiocode&logoColor=white)

> 推薦安裝

Visual Studio Code 下面簡稱為 VSCode，由 Microsoft 釋出的開源開發工具，可提供 SSH 遠端連線與 WSL 開發的功能，提供研究生可以不用在電腦端也能連接上遠端進行論文的撰寫工作。下列是我們撰寫論文時經常使用的模組。

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

非必要的工具，目前僅用於 PDF 檔案防拷。

> Linux 與 Docker 方案的使用者，此工具不須安裝。
> Windows 系統使用者如有 Adobe 的工具，建議直接使用 Adobe 工具即可。

請由此處[下載](https://www.ghostscript.com/releases/index.html)。

### 取得

請直接下載[穩定版本](https://github.com/yuhao-kuo/NKUST-thesis-template/releases)/[開發版本](https://github.com/yuhao-kuo/NKUST-thesis-template/archive/master.zip)，或是使用 git 獲取專案。

開發版本主要著重在新功能的開發及新的支援，但是當您的論文撰寫時間較為緊迫，我們建議使用穩定版本。
使用時發現任何問題，歡迎向我們發出 Issues 並描述您碰見的問題。

### 使用

本章節著重說明版型架構以及 make 相關的操作指令。

#### 架構說明

* ***Chapters*** : 主文
* ***Configurations*** : 本文格式定義與引入設定
* ***Docs*** : 說明文件
* ***Docker*** : Docker 相關指令與設定
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Fonts***: 字體檔案
* ***Figures*** : 文中的所有圖片
* ***Instance*** : 封面/書名頁/封面/摘要/誌謝
* ***Packages*** : LaTeX 套件
* ***References*** : 參考文獻 bib 檔案
* ***Table*** : 外部插入的表格
* ***Templates*** : 文件版型
* ***Tables*** : 表格
* ***build*** : 編譯結果
* ***.vscode*** : 編輯器設定檔
* ***config.tex*** : 論文內容載入設定
* ***main.tex*** : 論文主架構
* ***thesisinfo.tex*** : 論文作者訊息
* ***titlepage.tex*** : 置中的論文封面

因字體問題經常導致使用者在編譯時出現錯誤，基於易用原則在本次更新中重新將 Fonts 加入至專案中，Fonts 內提供的字體皆為**開源** or **免費**的，字體的 License 將一併被附加到 Fonts 目錄中。

#### 產生論文

編輯完成後，透過 `all` 指令來產生論文。

```
$ make all
```

#### 資料清除

清除暫存資料請使用 `clean`，該指令將會保留 PDF 文件，如需完整清除編譯結果請使用 `distclean`。

```
$ make clean
$ make distclean
```

#### 檔案防拷處理

因有論文 PDF 加入防拷處理的需求，故新增 `pdfprocessing`，此功能依賴外部工具 **ghostscript**。
此命令僅對 `main.pdf` 進行防拷，執行此命令時 `main.pdf` 必須存在。

```
$ make pdfprocessing
```

## 安全性

如使用 GitHub、GitLab、Bitbucket 等程式碼代管服務，請注意遠端儲存庫 (Remote Repository) 的存取權限，知識內容請設為私密，以避免防資料外洩等安全性問題。

## 鳴謝

感謝參與這個專案的[貢獻者](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors)以及前輩們！

如果這個專案有幫助到您，請給專案一個 Star，Thanks！

## 授權與免責聲明

<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/tw/"><img alt="創用 CC 授權條款" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/3.0/tw/88x31.png" /></a><br />本著作係採用<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/tw/">創用 CC 姓名標示-相同方式分享 3.0 台灣 授權條款</a>授權.

專案的貢獻者大多已畢業，故不提供任何論文格式保證，若引用此專案造成一切損失，本專案之貢獻者不承擔任何責任。如有格式錯誤，歡迎提交 Issue 告知。


