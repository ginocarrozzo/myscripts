#!/bin/bash

###To remove all stored archives in your cache for packages that can not be downloaded anymore (thus packages that are no longer in the repository or that have a newer version in the repository).
sudo apt-get clean

##To remove unnecessary packages (After uninstalling an app there could be packages you don't need anymore)
sudo apt-get autoclean

##To delete old kernel versions
sudo apt-get autoremove

##List kernel versions
dpkg --get-selections | grep linux-image

echo "sudo apt-get remove --purge linux-image-X.X.XX-XX-generic"

