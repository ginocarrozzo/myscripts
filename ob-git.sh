#!/bin/bash
GITHUB_USERNAME=git

BANNER="*********************"
PROJECTS="NFVO
generic-vnfm
dashboard
openstack-plugin
bootstrap
docs
openbaton-libs
plugin-sdk
openbaton-client
dummy-vnfm-rest
openbaton.github.io"

function status ()
{
    for i in $PROJECTS; do
	(cd $i &&
	    echo "=== Repository: $i" &&
	    #               git branch -av &&
	    #               echo "---" && echo "" &&
	    git status &&
	    echo "" && echo "");
    done
}

function pull ()
{
    for i in $PROJECTS; do
	(cd $i &&
	    echo "=== Repository: $i" &&
	    git pull &&
	    echo "" && echo "");
    done
}

function clone ()
{
    for i in $PROJECTS; do
	echo -e "\n\n\n $BANNER CLONING PROJECT: $i $BANNER"
	git clone ${GITHUB_USERNAME}@github.com:openbaton/$i.git;
    done
}

function myhelp ()
{
    echo "Usage: $0 <CMD> <REPO>"
    echo "-----"
    echo " CMD   := cl (clone) | st (status) | pull"
    echo ""
    echo " REPOS := OPENBATON"
    echo "          + NFVO"
    echo "          + generic-vnfm"
    echo "          + dashboard"
    echo "          + openstack-plugin"
    echo "          + bootstrap"
    echo "          + docs"
    echo "          + openbaton-libs"
    echo "          + plugin-sdk"
    echo "          + openbaton-client"
    echo "          + dummy-vnfm-rest"
    echo "          + openbaton.github.io"
    echo ""
}

echo -e "\n$BANNER DONE!!! $BANNER\n\n\n"

case $1 in
    (cl | clone)
	clone;
	;;
#    (cfg | config)
#	config;
#	;;
    (st | status)
	status;
	;;
    (pull)
	pull;
	;;
    (*)
	echo "Invalid option '$1'!"
	myhelp;
	exit -1
	;;
esac
