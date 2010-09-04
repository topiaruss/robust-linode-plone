#!/bin/bash
# Russ Ferriday, Topia Systems Ltd, russf@topia.com
# run as root
# run within robust-linode-plone

cp plone4 ../Plone4/zeocluster/bin
chmod ug+x ../Plone4/zeocluster/bin/plone4
ln -s /home/plone/Plone4/zeocluster/bin/plone4 /etc/init.d/plone4
chmod o+x /home/plone/Plone4/zeocluster/bin/plone4
/usr/sbin/update-rc.d -f plone4 defaults


