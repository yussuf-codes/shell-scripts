dotnet new sln -o ./ASP.NETCoreWebSolution/ &&
cd ./ASP.NETCoreWebSolution/ &&
dotnet new web -o ./WebAPI/ --use-program-main &&
dotnet sln add ./WebAPI/WebAPI.csproj &&
dotnet new .gitignore &&
dotnet build &&
git init &&
git add . &&
git commit -m "Initializing project" &&
code ./
