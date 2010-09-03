#!/bin/sh

DEST=`python -c "import os;s=os.path.expanduser('~');print s"`
DEST=$DEST/Plone4

echo 'rename the original buildout.cfg'
mv $DEST/zeocluster/buildout.cfg $DEST/zeocluster/unified-buildout.cfg

echo 'add the new buildout layers'
cp *.cfg $DEST/zeocluster

echo 're-run buildout to add the new buildout layers'
cd $DEST/zeocluster
./bin/buildout -v 

