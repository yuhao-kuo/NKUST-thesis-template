## NKUST Thesis LaTeX 版本更新

當您使用這個專案的板型後，發現有新的大更新時，可以透過 `Git` 與手動更新二種方式將版本更換到最新的狀態。
本專案中已經將寫文件的部份與板型的部份分離，因此當您使用預設板型(未對板型進行修改)時，大部分的更新都不會修改到您的內容。

下列將列出不會修改到使用者資料有關的部份。

1. ***build***
2. ***Configurations***
3. ***Packages***
4. ***Scripts***
5. ***Templates***
6. ***NKUSThesis.cls***
7. ***main.tex***
8. ***titlepage.tex***

下列資料更新大多會產生衝突，因此建議使用者要注意此位置中的檔案變更。

1. ***Chapters***
2. ***Exteranls***
3. ***Figures***
4. ***Instance***
5. ***References***
6. ***Tables***
7. ***build***

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




