#!/usr/bin/python3
import sys
import os

def gen_merge_code(path, thesis_name, files, args_length):
    thesis_path = path + "/" + thesis_name
    f = open(thesis_path, "w")
    f.write("\documentclass[11pt]{article}")
    f.write("\\usepackage{pdfpages}")
    f.write("\\begin{document}")
    n = 3
    while n < len(files):
        if os.path.isfile(files[n]):
            f.write("\IfFileExists{" + files[n] + "}{")
            f.write("\includepdf[pages=-,pagecommand={\\thispagestyle{empty}}]{" + files[n] + "}")
            f.write("}{}")
        n += 1
    f.write("\end{document}")
    f.close()

if __name__ == '__main__':
    argvlens = len(sys.argv)
    if argvlens < 3:
        print("error: 參數過少")
        print("\targv[0] = 輸出的路徑")
        print("\targv[1] = 輸出的檔名")
        print("\targv[2~N] = 被合併到的檔案的PDF名稱")
        sys.exit()
    gen_merge_code(sys.argv[1], sys.argv[2], sys.argv, argvlens)



