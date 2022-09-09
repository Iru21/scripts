Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod get.scoop.sh | Invoke-Expression

function install([string]$package)
{
    scoop install $package
}

function add-bucket([string]$bucket)
{
    scoop bucket add $bucket
}

install "git"
add-bucket "extras" 
add-bucket "versions"
install "brave"
install "vscode-insiders"
& $home\scoop\apps\vscode-insiders\current\install-context.reg
& $home\scoop\apps\vscode-insiders\current\install-associations.reg
install "codeblocks-mingw"
Write-Output "Make sure to add $home\scoop\apps\codeblocks-mingw\current\MinGW\bin to your PATH"
