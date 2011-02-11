#!/bin/sh

#Does the universal install for plone4
echo 'Entered doUI.sh - to run the Unified Installer'
#This is the most volatile part of the install
URL=http://launchpad.net/plone/4.0/4.0.3/+download/Plone-4.0.3-20110720-UnifiedInstaller.tgz

echo 'getting the Universal Installer from '
echo $URL
cd scratch
curl -OL $URL

echo 'untar it'
FILE=`python -c "import urlparse as up; u=\"$URL\";s=up.urlparse(u); f=s.path; print f.split('/')[-1]"`
tar xzf $FILE

echo 'run the install'
ROOT=`python -c "import os;s=os.path.splitext(\"$FILE\"); print s[0]"`
cd $ROOT
DEST=`python -c "import os;s=os.path.expanduser('~');print s"`
./install.sh -target=$DEST/Plone4 zeo

echo 'Plone Universal Installer off-the-shelf setup complete'


