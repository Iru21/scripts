# Put in $profile

function cr([string]$name)
{
	g++ "./$name.cpp" -o "$name.exe"
	& ./$name.exe
}
