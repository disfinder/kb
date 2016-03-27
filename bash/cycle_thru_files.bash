# for fname in $(find / -type d) ; do
#   echo $fname
# done



# POSIX
for i in *.mp3; do
    [ -e "$i" ] || continue
    some command "$i"
done
