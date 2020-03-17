#!/bin/sh
. $(dirname $0)/path.sh

if [ -f eigenexa_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget http://www.r-ccs.riken.jp/labs/lpnctrt/assets/img/EigenExa-$VERSION_BASE.tgz
tar zxvf EigenExa-$VERSION_BASE.tgz
mv EigenExa-$VERSION_BASE eigenexa_$VERSION_BASE
tar zcvf eigenexa_$VERSION_BASE.orig.tar.gz eigenexa_$VERSION_BASE
rm -rf EigenExa-$VERSION_BASE.tgz eigenexa_$VERSION_BASE
