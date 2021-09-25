# docker support

## 環境佈署

此版型可透過 [texlive](https://hub.docker.com/r/texlive/texlive) 的 docker image 進行編譯，環境建置步驟如下。

* 安裝 docker
    * [Windows install](https://docs.docker.com/desktop/windows/install/)
    * [Mac OS install](https://docs.docker.com/desktop/mac/install/)
    * [Ubuntu install](https://docs.docker.com/engine/install/ubuntu/)
* 將 image 拉至本地端
```
$ docker pull texlive/texlive
```

### Bash 環境
* 啟動 docker container，並掛載本地端 NKUST-thesis-template 目錄至 docker container 中。
```
$ docker run --rm -ti -w /home/thesis -v <local 端的 NKUST-thesis-template 的位置>:/home/thesis texlive/texlive bash
```

### vscode 環境
* 安裝 docker extension
* 點選選單列 Docker 圖像
* images 找到 texlive/texlive 並點開
* latest 右鍵
* Run Interactive 即可啟動 container

## 注意事項

以下 container 均是指 texlive 的 docker container。

1. container 僅用於編譯，NKUST-thesis-template 請存放於本地端，因此並不需要額外儲存 container 的資料。
2. VSCode 可透過 docker 或 remote-container 與 container 進行操作，當前是採用 docker extension 進行。
3. 因 docker 當前使用 root 進行編譯，因此進行 build 的檔案在 local 端直接操作可能會有權限問題。

