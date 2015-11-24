#!/bin/bash
ODL_USERNAME=gcarrozzo

BANNER="*********************"
PROJECTS="affinity
 bgpcep
 controller
 defense4all
 lispflowmapping
 net-virt-platform
 opendove
 openflowjava
 openflowplugin
 ovsdb
 snmp4sdn
 vtn
 yangtools"


for i in $PROJECTS; do 
   echo -e "\n\n\n $BANNER CLONING ODL-PROJECT: $i $BANNER"
   (cd $i && git pull) || (echo "ERROR!!!!!!!!!!!!!"; exit -1)
done

echo -e "\n$BANNER DONE!!! $BANNER\n\n\n"


