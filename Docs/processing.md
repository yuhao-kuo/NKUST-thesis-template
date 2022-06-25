# PDF加工

> 註1: 套件 ghostscript 已經預裝在 texlive docker image 中。
> 註2: 當前加工指令設定值並不完美，輸出時建議使用 main.pdf 進行輸出。

## 防拷
透過 [ghostscript](https://www.ghostscript.com/) 為 PDF 提供防拷功能，其指令如下。

```
$ make pdfprocessing
```

`make pdfprocessing` 依賴 `build/main.pdf` 作為加工來源，因此當 `build/main.pdf` 不存在導致無法編譯時，先執行 `make all` 來產生檔案。

## 客製化加工

ghostscript 提供了相當強大的功能，並不僅限於用來防拷檔案，也能用來壓縮 PDF 檔案。

建議您依據[官方文件](https://www.ghostscript.com/doc/current/Use.htm)的說明客製化您所需的功能。
