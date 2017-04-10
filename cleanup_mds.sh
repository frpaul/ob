#!/bin/sh

ls -1 | sort MANIFEST MANIFEST - | uniq -u | xargs rm

