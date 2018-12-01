#/bin/bash
param=$1
if [ $# -eq 0 ]
  then
    echo "Usage of this script: Please pass one of the (-volumes, -ram, -cpu,-network, -all) parameter"
	echo "e.g ./devops01b.sh -ram"
elif [ $param == "-volumes" ] 
	then
	df -h
elif [ $param == "-cpu" ] 
	then
	nproc --all
elif [ $param == "-ram" ] 
	then
	grep MemTotal /proc/meminfo | awk '{print $2}'
elif [ $param == "-network" ] 
	then
	ipconfig
elif [ $param == "-all" ] 
	then
	df -h
	nproc --all
	grep MemTotal /proc/meminfo | awk '{print $2}'
	ipconfig
fi
