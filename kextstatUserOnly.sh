#!/bin/sh


echo "\n\n"
echo "Executing #kextstat without APPLE stuff"
kextstat | grep -v apple


echo "\n\n"
echo "Executing #kextstat ALL"
kextstat


echo "\n\n"
echo "Executing #launchctl list ALL (including APPLE)"
launchctl list


echo "\n\n"
echo "Executing #launchctl list (without apple) "
launchctl list | grep -v apple


echo "\n\n"
echo "Executing LS #LaunchAgents on /Library/LaunchAgents"
ls -l /Library/LaunchAgents


echo "\n\n"
echo "Executing LS #LaunchDaemons on /Library/LaunchDaemons"
ls -l /Library/LaunchDaemons


echo "\n\n"
echo "Executing LS on USER-ONLY #LaunchAgents ~/Library/LaunchAgents"
ls -l ~/Library/LaunchAgents


echo "\n\n"
echo "Executing LS on SYSTEM #LaunchAgents /System/Library/LaunchAgents"
ls -l /System/Library/LaunchAgents


echo "\n\n"
echo "Executing LS on SYSTEM #LaunchDaemons /System/Library/LaunchDaemons"
ls -l /System/Library/LaunchDaemons


echo "\n\n"
echo "Executing #sysctl -- for CPU"
sysctl -a | grep machdep.cpu.brand_string


echo "\n\n"
echo "Executing #sysctl -- on ALL (The sysctl utility retrieves kernel state and allows processes with appropriate privilege to set kernel state)"
sysctl -a


echo "\n\n"
echo "Executing PS AUX #psaux process ALL"
ps aux


echo "\n\n"
echo "Executing window management command line by (appswitch -L -x) #appswitch"
/Users/work/.scripts/appswitch/build/appswitch -L -x


echo "\n\n"
echo "Executing #dmesg -- display the system message buffer(also Java OOM EX) (TODO made it elevated without root PWD?)"
sudo dmesg


echo "\n\n"
echo "Executing log stream stuff #stream"
log stream --predicate 'subsystem == "com.surteesstudios.Bartender3"' --debug

