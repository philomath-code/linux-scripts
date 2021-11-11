echo "----------------------------------------------------"
echo "current dotnet version, sdks, and runtimes on system"
echo "----------------------------------------------------"
echo "date"
date
echo
echo "current version"
dotnet --version
echo
echo "dotnet sdks"
dotnet --list-sdks
echo
echo "dotnet runtimes"
dotnet --list-runtimes
echo

