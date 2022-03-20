#!/bin/bash
MIRRAHPATH='/var/www/mirrah.art/'
TEMPPATH='../tempMirrah/'
cp -R ./. $TEMPPATH
cd $TEMPPATH
filename='exclusions.txt'
echo Start
while read p; do 
    rm -rf $p
    echo "Removed $p"
done < "$filename"
rm $MIRRAHPATH/*
cp -R ./. $MIRRAHPATH
rm -rf $TEMPPATH