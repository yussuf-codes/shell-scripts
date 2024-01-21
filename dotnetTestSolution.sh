dotnet new sln -o ./TestSolution/ &&
cd ./TestSolution/ &&
dotnet new console -o ./TestConsole/ --use-program-main &&
dotnet new classlib -o ./TestLibrary/ &&
dotnet sln add ./TestConsole/TestConsole.csproj &&
dotnet sln add ./TestLibrary/TestLibrary.csproj &&
dotnet add ./TestConsole/TestConsole.csproj reference ./TestLibrary/TestLibrary.csproj &&
dotnet new .gitignore &&
dotnet build &&
git init &&
git add . &&
git commit -m "Initializing project" &&
code ./
