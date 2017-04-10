#!/bin/sh

# pre-release script (for temp branch)
# clean up md files, which are not in the cont.txt list
# run in input directory

ls -1 | sort ../cont.txt ../cont.txt - | uniq -u | xargs rm

