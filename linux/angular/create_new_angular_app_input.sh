#!/bin/bash


CurrentCLI=$(ng --version | grep -i "angular cli:")
app="-app"
dashes=$(echo "------------------")
InitialDirectory=$(readlink -f .)
DateDirectory=$(date +%m%d_%X)

Author=" Philomath Code"
WrittenBy=" Author: $Author"

echo
Dashes="<|>---------------------------------------<|>"
echo $Dashes
echo $WrittenBy
# echo $GithubContact
echo $Dashes
echo
echo "create a new angular application"
echo $dashes
echo
echo "please enter application name"
read input1

userinput="$input1$app"
GenesisDirectory="$userinput$DateDirectory"

cd ~/Desktop
mkdir $GenesisDirectory
cd $GenesisDirectory
GenesisDirectoryAbsolutePath=$(readlink -f .)
echo "creating project at: $GenesisDirectoryAbsolutePath"

ng new --skip-git=true --routing=true --style=scss $userinput
location=$(readlink -f $userinput)
cd $InitialDirectory
echo "app location: $location"
echo "done installing: $userinput !"
echo $dashes
