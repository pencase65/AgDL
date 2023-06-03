#!/bin/bash

#EXP_DIR='/mnt/f/Standard-Video'
EXP_DIR='/mnt/d/work/bash' #吐き出す場所のパス
DATE=`date '+%Y%m%d_%H%M%S'`

echo 'DATE '$DATE
echo '$1 '$1 #URL
echo '$2 '$2 #指定時間(秒)
echo '$3 '$3 #ファイル名
echo '$4 '$4 #保存先(Optional)(WSLでの保存先を指定すること)
echo 'EXPDIR '$EXP_DIR

#引数ないときの判定
if [ -z "$1" -a -z "$2" -a -z "$3" ]; then
    echo "バ～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～カ"
    exit 9
fi

#保存先指定したら使うよ みたいなやつ
if [ ! -z $4 ]; then
    EXP_DIR=$4
fi

echo $EXP_DIR 

EXPORT_DIR=${EXP_DIR}'/'${DATE}'_'$3
echo 'EXPORTDIR '$EXPORT_DIR

timeout ${2} ffmpeg -i ${1} -c:v copy -c:a copy ${EXPORT_DIR}
STAT=$status
if [[ $STAT != "0" ]]; then
    exit $STAT
fi
exit 0