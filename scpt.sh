#!/bin/bash
				#Debugging in file =  #!bin/bash -x
				#Debugging syntax = bash -n pathfile
set -x 				#debugging strat in  part file 
echo "Hello world"		#statmennt print

echo "Hi alprof"
<< 'MULTILINE-COMMENT'		#multi-comment
    Everything inside the
    HereDoc body is
    a multiline comment
MULTILINE-COMMENT

echo "Hello; ${LOGNAME}"	#LOGNAME is varible in system
set +x 				#Debugging end in part file
echo "the current users and proc : "
w
file="/home/wheezy/bashScript/text~"
newfile="/home/wheezy/bashScript/text.txt"
echo "look for $file"
sleep 3
rm $file			#use remove file
echo "the file has been removed"
sleep 3
touch $newfile			#use create new file 
echo "youe hostname is ${HOSTNAME}"	#HOSTNAME is varible in system
ls
sudo apt-get update
