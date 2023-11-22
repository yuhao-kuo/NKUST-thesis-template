# NKUST Thesis LaTeX

[![yuhao-kuo - NKUST-thesis-template](https://img.shields.io/static/v1?label=&message=NKUST-thesis-template&color=gray&logo=github)](https://github.com/yuhao-kuo/NKUST-thesis-template)
[![License](https://img.shields.io/badge/License-CC_BY--SA_3.0_TW-blue)](http://creativecommons.org/licenses/by-sa/3.0/tw/ "創用 CC 姓名標示-相同方式分享 3.0 台灣 授權條款")
[![forks - NKUST-thesis-template](https://img.shields.io/github/forks/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/yuhao-kuo/NKUST-thesis-template/fork)
[![stars - NKUST-thesis-template](https://img.shields.io/github/stars/yuhao-kuo/NKUST-thesis-template?style=social)](https://github.com/login?return_to=%2Fyuhao-kuo%2FNKUST-thesis-template)


![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

本專案為**國立高雄科技大學研究所論文 LaTeX 模板**，以開源工具為基礎 LaTeX 的編輯環境，內文依照[國立高雄科技大學教務處學位論文撰寫體例參考(中華民國111年3月修訂版)](https://acad.nkust.edu.tw/var/file/4/1004/img/212/F-2-35.docx)及建工校區電子工程系網路計算實驗室(`WNDCLab`、`NCLab`、`AIoRLab`)之論文格式標準進行編排。其內容排列順序依序為：

1. 封面
2. 書名頁
3. 論文指導教授推薦書
4. 論文口試委員會審訂書
5. 學位論文著作權歸屬協議書
6. 中文摘要
7. 英文摘要
8. 誌謝或序言
9. 目錄
10. 表目錄
11. 圖目錄
12. 符號說明 (未提供)
13. 論文本文
14. 參考文獻
15. 附錄
16. 自傳或簡歷 (未提供)
17. 空白頁

## 開發環境

![OS - Ubuntu](https://img.shields.io/badge/Ubuntu-white?logo=ubuntu&logoColor=orange)
![OS - Arch Linux](https://img.shields.io/badge/Arch_Linux-white?logo=archlinux&logoColor=blue)
![OS - Debian](https://img.shields.io/badge/Debian-white?logo=debian&logoColor=red)
![OS - Windows](https://img.shields.io/badge/Windows_WSL-white?logo=windows&logoColor=blue)
![OS - MacOS](https://img.shields.io/badge/Apple_MacOS-white?logo=apple&logoColor=gray)
![Container - Docker](https://img.shields.io/badge/Docker-white?logo=Docker&logoColor=blue)

此模板開發初期使用 Linux 系作業系統進行開發，主體仍相依於 Linux 環境上，目前已知此模板能在 `Ubuntu`、`Arch Linux`、`Debian` 等多個 Linux 發行版中使用。如果您是 Windows 使用者或不想佈署環境的用戶可使用 [docker](Docs/docker.md) 方案進行使用。

後續文件內容依序為**安裝工具**、**取得**與**使用**等三大部份。

### 安裝工具

專案推薦使用編輯器 **Visual Studio Code**，使用 **make** 與 **texlive** 套件包進行文件的編譯移除等相關操作，另外我們推薦使用 **Git** 管理版本，預防資料遺失及損毀等災難，詳細的工具安裝說明請見 [Docs/environment.md](Docs/environment.md)。

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
* ***Templates*** : 文件版型
* ***Tables*** : 外部插入的表格
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
該命令僅對 `main.pdf` 進行防拷，執行此命令時 `main.pdf` 必須存在。

```
$ make pdfprocessing
```

## 安全性

如使用 GitHub、GitLab、Bitbucket 等程式碼代管服務，請注意遠端儲存庫 (Remote Repository) 的存取權限，知識內容請設為私密，以避免防資料外洩等安全性問題。

## 鳴謝

感謝參與這個專案的[貢獻者](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors)以及製作版型內容的前輩們！

如果這個專案有幫助到您，請給專案一個 Star，Thanks！

## 授權與免責聲明

<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/tw/"><img alt="創用 CC 授權條款" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/3.0/tw/88x31.png" /></a><br />本著作係採用<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/tw/">創用 CC 姓名標示-相同方式分享 3.0 台灣 授權條款</a>授權.

因專案的貢獻者大多已畢業，使用前請務必檢視版型是否符合現行規範。若引用此專案造成一切損失，本專案之貢獻者不承擔任何責任。

如有發現格式問題錯誤，歡迎提交 Issue 告知。


