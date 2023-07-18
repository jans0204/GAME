# test3.awk (utf-8)
#
# xlist4.txt (utf-8)
# gawk.exe --locale=zh_TW.UTF-8 -f test3.awk xlist4.txt > xlist5.txt

BEGIN { partn = 0 }

NF == 0 { print }
NF == 2 { partn += 1 }
NF >  2 { printf "%2d  ", partn; print }
