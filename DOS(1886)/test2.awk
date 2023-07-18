# test2.awk (utf-8)
#
# applist.csv.txt (utf-8)
# gawk.exe --locale=zh_TW.UTF-8 -f test2.awk applist.csv.txt > xlist1.txt
# notepad.exe xlist1.txt (utf-8) --> xlist2.txt (utf-16 LE)
# sort.exe xlist2.txt > xlist3.txt (utf-16 LE)

BEGIN { FS = "," }

{ printf "%-9s %4d %s %s\n", $3, FNR, $1, $2 }
