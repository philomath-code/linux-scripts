echo "Blazer Server App Project Name: "
read projectname

classlibname="${projectname}.Core"
adminprojectname="${projectname}Admin"
clientprojectname="${projectname}Client"
#echo $classlibname

mkdir $projectname

cd $projectname

#create solution file
dotnet new sln
#create blazorserver projects - admin and client views
dotnet new blazorserver -n $adminprojectname
dotnet new blazorserver -n $clientprojectname

dotnet new classlib -o $classlibname

dotnet sln add $adminprojectname/$adminprojectname.csproj
dotnet sln add $clientprojectname/$clientprojectname.csproj
dotnet sln add $classlibname/$classlibname.csproj 
#return to main directory

#print out results
echo
echo "**********************************************************"
echo "summary"
echo
echo "successfully created blazer server app"
echo "script created: solution file, project, and class library"
echo "created by: philomathcode"
echo
echo "location of newly created project:"
pwd
echo "**********************************************************"
cd ..
