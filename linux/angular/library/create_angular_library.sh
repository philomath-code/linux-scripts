#philomathcode
#11.3.2021
#create angular library with a workspace. Easily create and dont have to remember commands

#create an angular library with a workspace
echo "enter angular library name"
read libraryName
workspaceName="$libraryName-workspace"
angularLibraryName="$libraryName-lib"
#echo $workspaceName
ng new $workspaceName --create-application=false
cd $workspaceName
ng generate library $angularLibraryName
