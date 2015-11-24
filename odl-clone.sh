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
   git clone ssh://${ODL_USERNAME}@git.opendaylight.org:29418/$i.git;
   (cd $i; 
   scp -p -P 29418 ${ODL_USERNAME}@git.opendaylight.org:hooks/commit-msg .git/hooks/;
    chmod 755 .git/hooks/commit-msg;
    git config remote.origin.push HEAD:refs/for/master);
done

echo -e "\n$BANNER DONE!!! $BANNER\n\n\n"


