#!/bin/bash
env GZIP=-9 tar czvf ./mozilla_profile.tar.gz ~/.mozilla/firefox/w5p42luu.default/

find ~/.mozilla/firefox/ -name *.sqlite -exec sqlite3 {} VACUUM \;
