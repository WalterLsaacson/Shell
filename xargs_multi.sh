#! /bin/bash
cat parameters_xargs.txt | xargs -n4 | xargs -I {} ./sk.sh -p {} -l
#copy images
ls *.jpg | xargs -n1 -I cp {} /data/images
#结合find使用
find . -type f -name "*.log" -print0 | xargs -0 rm -f
#统计所有sh文件的总行数
find . -type f -name "*.sh" -print0 | xargs -0 wc -l
#查找所有jpg文件并压缩
find . -type f -name "*.jpg" -print | xargs tar -czvf images.tar.gz
cat url-list.txt | xargs wget -c
