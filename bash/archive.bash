# archive max compression gzip
export GZIP=-9
tar cvzf file.tar.gz /path/to/directory


#same
env GZIP=-9 tar cvzf file.tar.gz /path/to/directory
