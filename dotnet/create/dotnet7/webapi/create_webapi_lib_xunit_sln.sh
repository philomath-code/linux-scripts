#daniel medina - philomathcode
#11.4.210
#create dotnet webapi , classlib, xunit, and solution

echo "please enter web api name"
read appName

webapiName="$appName.WebApi"
libraryName="$appName.Lib"
xunitName="$appName.Xunit"
slnName="$appName"

mkdir $appName
cd $appName

#create sln
dotnet new sln 
#create classlib
dotnet new classlib -o $libraryName
dotnet sln add $libraryName/$libraryName.csproj
#create webapi
dotnet new webapi -o $webapiName
dotnet sln add $webapiName/$webapiName.csproj
cd $webapiName
dotnet add reference ../$libraryName/$libraryName.csproj
cd ..
#create xunit
dotnet new xunit -o $xunitName
dotnet sln add $xunitName/$xunitName.csproj
cd $xunitName
dotnet add reference ../$webapiName/$webapiName.csproj
cd ..

#create version of creation text file
versionFile="dotnetversion.txt"
touch $versionFile
dotnet --version >> $versionFile
#back out of newly created application
cd ..

echo "finished creating $appName"

