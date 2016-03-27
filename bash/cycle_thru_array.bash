#!/bin/bash
ARRAY=(AA BB CC DD )

ARRAY2=(11 22 33 44 )
for element in "${ARRAY[@]}" ; do
 echo "${element}"
done

#
echo "###########"
for i in "${ARRAY[@]}" ; do
  for j in "${ARRAY2[@]}" ; do
    echo "i=$i, j=$j"
  done
done
