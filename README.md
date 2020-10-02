## NKUST Thesis LaTeX

![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

本專案為**國立高雄科技大學研究所論文 LaTex 模板**，版型標準依照 NKUST 論文格式及建工校區電子工程系網路計算實驗室(`WNDCLab`、`NCLab`、`AIoRLab`)實驗室論文格式標準。

如果這個板型有問題或是對版型設定有任何建議，請向我們提交 Issues，也非常歡迎您提交 PR 協助修正問題。

### 說明

依照[國立高雄科技大學學位論文格式規範](https://ceed.nkust.edu.tw/app/index.php?Action=downloadfile&file=WVhSMFlXTm9MekV3TDNCMFlWOHhPRFEzWHpJMk5qRXhNakJmTVRZMk9EVXVjR1Jt&fname=WSGGTSB00010A1KK50LKRKHGSTTW25B1RKFG40NPQPRLFG40ROFCLL54WWOODGOK44CCIH15A404GDJGVWPKTS14B0MOGCHCCC35DCTSZWB030FC145424DCGCLK0115JCLKSXHGTWFGSWHCUS30A110)之內容，排列順序依序為：

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

### 使用

使用前請先確認您已經安裝完成必備工具，如果缺少這些套件可能導致編譯失敗，本論文使用環境預設使用 Linux 發行版進行驗證。

下列為本專案**必備**的編譯工具，請依照作業系統進行安裝，並請確認環境變數是否已經正確設置。

* `make`
* `texlive`

本專案預設使用 Visual Studio Code 進行編輯，下列為推薦安裝的 Visual Studio Code 擴充套件。

* `LaTex Workshop`
* `LaTex language support`
* `vscode-pdf`

### 取得

請直接下載[穩定版本](https://github.com/yuhao-kuo/NKUST-thesis-template/releases)/[開發版本](https://github.com/yuhao-kuo/NKUST-thesis-template/archive/master.zip)，或是使用 git 獲取專案。

### 架構說明

* ***Chapters*** : 主文
* ***Configurations*** : 本文格式定義與引入設定
* ***Docs*** : 說明文件
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Figures*** : 文中的所有圖片
* ***Instance*** : 封面/書名頁/封面/摘要/誌謝
* ***Packages*** : 套件
* ***References*** : 參考文獻 bib 檔案
* ***Scripts*** : Makefile 腳本
* ***Templates*** : 文件版型
* ***build*** : 編譯結果

### 使用說明

請見 Docs 目錄。

### 鳴謝

感謝參與這個專案的[貢獻者](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors)以及前輩們！


