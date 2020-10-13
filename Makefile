
API_KEY=oy2e2hvhwuu5weftlb7aqla6nagudfnuljzhem5wbril4m


complie:
	cd chiao_test; dotnet restore; dotnet build --configuration Release --no-restore; dotnet pack -p:PackageVersion=1.0.1

push-nupkg:
	dotnet nuget push chiao_test/bin/Debug/chiao_test.1.0.1.nupkg -k $(API_KEY) -s https://api.nuget.org/v3/index.json

test:
	echo $(TAG)
