## NKUST Thesis LaTeX

![](https://www.nkust.edu.tw/var/file/0/1000/img/513/182513897.png)

本專案為**國立高雄科技大學研究所論文 LaTex 模板**，版型標準依照 NKUST 論文格式及建工校區電子工程系網路計算實驗室(`WNDCLab`、`NCLab`、`AIoRLab`)實驗室論文。

如果這個板型有問題或是對版型設定有任何建議，請向我們提交 Issus，也非常歡迎您提交 PR 協助修正問題。

### 說明

依照[國立高雄科技大學學位論文格式規範](https://ceed.nkust.edu.tw/app/index.php?Action=downloadfile&file=WVhSMFlXTm9MekV3TDNCMFlWOHhPRFEzWHpJMk5qRXhNakJmTVRZMk9EVXVjR1Jt&fname=WSGGTSB00010A1KK50LKRKHGSTTW25B1RKFG40NPQPRLFG40ROFCLL54WWOODGOK44CCIH15A404GDJGVWPKTS14B0MOGCHCCC35DCTSZWB030FC145424DCGCLK0115JCLKSXHGTWFGSWHCUS30A110)之內容，排列順序依序為：

1. 封面
2. 書名頁
3. 碩博士論文授權書
4. 論文指導教授推薦書
5. 論文口試委員會審訂書
6. 中文摘要
7. 英文摘要
8. 誌謝或序言
9. 目錄
10. 表目錄
11. 圖目錄
12. 論文本文
13. 參考文獻
14. 附錄
15. 自傳或簡歷 (未提供)
16. 書背

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

編譯採用 `make` 當作工具，編譯參數如下表。

| 命令 | 功能描述 |
|---|---|
| `make all` | 編譯 $LaTeX$ 專案 |
| `make clean` | 清除所有暫存檔 |
| `make distclean` | 清除所有編譯產生的檔案(包含PDF檔案) |

使用 Visual Studio Code 預設對 `.tex` 檔案進行儲存或點擊 `ctrl + alt + b` 即會啟動自動編譯。

### 架構說明

* ***Chapters*** : 主文
* ***Configurations*** : 設定檔案
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Figures*** : 文中的所有圖片
* ***Fonts*** : 字形檔案
* ***Instance*** : 封面/書名頁/封面/摘要/誌謝
* ***Packages*** : 套件
* ***References*** : 參考文獻 bib 檔案
* ***Scripts*** : Makefile 腳本
* ***Templates*** : 非本文文件版型
* ***build*** : 編譯結果

### 更新

當您使用這個專案的板型後，發現有新的大更新時，可以透過 `Git` 與手動更新二種方式將版本更換到最新的狀態。
本專案中已經將寫文件的部份與板型的部份分離，因此當您使用預設板型(未對板型進行修改)時，大部分的更新都不會修改到您的內容。

下列將列出不會修改到使用者資料有關的部份。

1. ***build***
2. ***Configurations***
3. ***Fonts***
4. ***Packages***
5. ***Scripts***
6. ***Templates***
7. ***NKUSThesis.cls***
8. ***main.tex***

下列資料更新大多會產生衝突，因此建議使用者要注意此位置中的檔案變更。

1. ***Chapters***
2. ***Exteranls***
3. ***Figures***
4. ***Instance***
5. ***References***
6. ***build***

#### Git 建議流程

```
$ git stash save           # 儲存當前變更，若您目前沒有任何變更，請忽略此行。
$ git branch               # 檢查所在分支，請記得此分支名稱。
$ git checkout master      # 當您的 branch 不是在 master 更新到 master 分支
$ git pull origin master   # 更新遠端儲存庫的資料，若您對於本專案的名稱不為 origin 時請自行更換此名稱
$ git checkout dev-branch  # 切換回原先的分支，本範例以 dev-branch 作為原先分支的名稱，此名稱請自行更換。
$ git rebase master        # 將 master 分支合併到現在分支
$ git stash pop            # 將原先的變更還原回來，若您一開始進行更新時沒有變更，此行可以忽略。
```


### 鳴謝

感謝參與這個專案的[貢獻者](https://github.com/yuhao-kuo/NKUST-thesis-template/graphs/contributors)以及前輩們！


