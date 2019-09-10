$pkg_name="adminator"
$pkg_origin="danf"
$pkg_version="1.0.0"
$pkg_maintainer="Dan Flores dmontanez@chef.io"
$pkg_license=@("Apache-2.0")
$pkg_upsteam_url="https://github.com/danf425/Adminator-admin-dashboard"
$pkg_description="Adminator NodeJS Dashboard Application"

$pkg_deps=@(
    "core/node"
    "core/python"
)  
$pkg_build_deps=@(
    "core/git"
)

function Invoke-Download {
   Invoke-DefaultDownload
}

function Invoke-Build {
   Invoke-DefaultBuild
 ls "../../../../src"
 Copy-Item -Path "../../../../src" -Destination $pkg_prefix  -Recurse -Force
}

function Invoke-Install {
     cd $pkg_prefix
#   echo "npm version below"
#   npm -v
   echo "Get location"
   Get-Location
  npm install --silent  
  #  && invoke-expression 'cmd /c start powershell -Command { write-host "Hi, new window!"; npm run dev  }'
  npm run build --silent
  Start-Process PowerShell -ArgumentList "npm run preview --silent"

  #npm run preview --silent 

 }
