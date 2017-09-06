#!/bin/bash
tar -xzf $1 -C $2
path=$(pwd)
cd $2
find * -exec grep -qr 'DELETE ME!' '{}' \; -delete
tar -zcf cleaned_$1 *
mv cleaned_$1 $path
cd $path
