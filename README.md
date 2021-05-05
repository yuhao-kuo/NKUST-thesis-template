# NKUST Thesis LaTeX

![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

本專案為**國立高雄科技大學研究所論文 LaTex 模板**，依照[國立高雄科技大學學位論文格式規範](https://ceed.nkust.edu.tw/app/index.php?Action=downloadfile&file=WVhSMFlXTm9MekV3TDNCMFlWOHhPRFEzWHpJMk5qRXhNakJmTVRZMk9EVXVjR1Jt&fname=WSGGTSB00010A1KK50LKRKHGSTTW25B1RKFG40NPQPRLFG40ROFCLL54WWOODGOK44CCIH15A404GDJGVWPKTS14B0MOGCHCCC35DCTSZWB030FC145424DCGCLK0115JCLKSXHGTWFGSWHCUS30A110)及建工校區電子工程系網路計算實驗室(`WNDCLab`、`NCLab`、`AIoRLab`)實驗室論文格式標準進行編排。其內容排列順序依序為：

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

## 如何開始使用這個模板

首先感謝您的使用，希望您在有餘力之時為我們提供意見回饋，為我們提供寶貴的建議。

此模板使用 Linux 系作業系統進行開發，主體仍相依於 Linux 上，目前已知此模板能在 `Ubuntu`、`Debian`、`Arch Linux ` 等多個 Linux 發行版中使用。未來期待有人能向我們提供 Windows WSL、MSYS、Git Bash 等支援的相關建議，作為 v2.1 版本的改善依據。

後續文件僅以 Linux 作說明，內容依序為**安裝工具**、**取得**與**使用**等三大部份。

### 安裝工具

專案推薦使用編輯器 **Visual Studio Code**，使用 **make** 與 **texlive** 套件包進行文件的編譯移除等相關操作，另外我們推薦使用 **Git** 管理版本來預防資料遺失及損毀等災難。

#### **[Visual Studio Code](https://code.visualstudio.com/)**

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

您的作業系統為 Windows 7/8/10，請直接[由此](https://code.visualstudio.com/download)下載並安裝。

#### **[Make](https://www.gnu.org/software/make/)**

GNU 提供的工具，下列為安裝指令。雖然 make 工具有提供 Windows 的版本，但因本專案中使用了部分 Linux 語法，因此無法於 Windows CMD / PowerShell 中使用，目前已知可於 WSL、MSYS、Git Bash 中使用。

```
### debian / ubuntu
$ sudo apt-get install make
```

#### **[Git](http://git-scm.com/)**

是否安裝 Git 並不影響您使用此模板，但我們極度推薦安裝這個工具。Git 是當前最主流的版本控制軟體，可以提供版本控制的功能，讓您能紀錄您再哪個時候修改了什麼，也能利用免費的遠端儲存庫([GitHub](https://github.com/)、[GitLab](https://gitlab.com/)、[bitbucket](https://bitbucket.org/))製作多個異地備份，保障您的論文安全。

Linux 發行版可透過套件管理工具快速安裝。

```
### debian / ubuntu
$ sudo apt-get install git-core
```

Windows 7/8/10 則需要手動安裝，請[由此](https://git-scm.com/downloads)下載。

### 取得

請直接下載[穩定版本](https://github.com/yuhao-kuo/NKUST-thesis-template/releases)/[開發版本](https://github.com/yuhao-kuo/NKUST-thesis-template/archive/master.zip)，或是使用 git 獲取專案。

開發版本主要著重在新功能的開發，以及新的支援，但是當您的論文撰寫時間較為緊迫，我們建議使用穩定版本。
使用開發中版本時發現問題，請向我們發出 Issues 並描述您所碰見的問題。

### 使用

本章節著重說明版型架構以及 make 相關的操作指令。

#### 架構說明

* ***Chapters*** : 主文
* ***Configurations*** : 本文格式定義與引入設定
* ***Docs*** : 說明文件
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Fonts***: 字體檔案
* ***Figures*** : 文中的所有圖片
* ***Instance*** : 封面/書名頁/封面/摘要/誌謝
* ***Packages*** : LaTeX 套件
* ***References*** : 參考文獻 bib 檔案
* ***Templates*** : 文件版型
* ***Tables*** : 表格
* ***build*** : 編譯結果
* ***.vscode*** : 編輯器設定檔

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

## 提醒

如使用 GitHub、GitLab、Bitbucket 等程式碼代管服務，請注意遠端儲存庫 (Remote Repository) 的存取權限，知識內容請設為私密，以避免防資料外洩等安全性問題。

## 鳴謝

感謝參與這個專案的[貢獻者](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors)以及前輩們！


