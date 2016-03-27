#!/bin/bash
for file in *.zip; do if ( unzip -c "$file" | grep -q "version") ; then echo "$file" ; fi; done


#get archive name
for file in $(find . -name "*.zip" -type f); do if ( unzip -c "$file" | grep -q "version") ; then echo "$file" ; fi; done


find . -maxdepth 2 -type f -name "*.zip" | xargs -I {} zipgrep -l "ActiveFlag" {}
find . -name "arch*.zip" | awk '{print "echo ARCHIVE: "$1"; zipgrep \"content2\" "$1}' | sh


for file in $(find . -name "pro*.zip" -type f); do echo $file; zipgrep -l "ActiveFlag" $file; echo "Exitcode: $?"; done

# get file name in archive and archive name
for file in $(find . -name "pro*.zip" -type f); do zipgrep -l "ActiveFlag" $file; if [ $? -eq 0 ] ; then echo $file ; fi ; done
