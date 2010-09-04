#!/bin/sh

#adds two new buildout layers, and re-runs buildout

DEST=`python -c "import os;s=os.path.expanduser('~');print s"`
DEST=$DEST/Plone4


if [ -f "${DEST}/unified-buildout.cfg" ]
then
  echo "skipping install of buildout layers"
else

  echo 'rename the original buildout.cfg'
  mv $DEST/zeocluster/buildout.cfg $DEST/zeocluster/unified-buildout.cfg

  echo 'add the new buildout layers'
  cp *.cfg $DEST/zeocluster

  chown plone:plone *.cfg

  echo 're-run buildout to add the new buildout layers'
  cd $DEST/zeocluster
  ./bin/buildout

fi 

