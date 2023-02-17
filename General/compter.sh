#!/bin/sh

usage(){
    echo "usage: $0 motif nom_fichier"
    exit 1
}

if [ $# -ne 2 ]; then usage $0; fi

motif=$1 ; shift
fichier=$1
compte=0
res=".tmpres"

grep "$motif" $fichier > $res

while read ligne
do 
    echo $ligne ; compte=`expr $compte \+ 1 `
done < $res


echo "total : $compte occurence de '$motif'"

rm $res
