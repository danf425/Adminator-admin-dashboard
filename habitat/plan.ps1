# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used along with `$pkg_origin`,
# and `$pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
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

# function Invoke-Begin {
#  Invoke-DefaultBegin
# }
function Invoke-Download {
   Invoke-DefaultDownload
  # Maybe download should be part of the process, but then it would be harder to edit 
  #  git clone https://github.com/danf425/Adminator-admin-dashboard.git adminator
  #  cd adminator
  #  Get-ChildItem
  #  Start-Sleep -s 2
}
# function Invoke-Verify {
#   Invoke-DefaultVerify
# }
# function Invoke-Clean {
#   Invoke-DefaultClean
# }
# function Invoke-Unpack {
#   Invoke-DefaultUnpack
# }
# function Invoke-Prepare {
#   Invoke-DefaultPrepare
# }
function Invoke-Build {
  Invoke-DefaultBuild
}
# function Invoke-Check {}

function Invoke-Install {
   echo "LOOK HERERERE HERHER1"
   echo $pkg_svc_var_path
   echo "LOOK HERERERE HERHE2"
   echo $HAB_CACHE_SRC_PATH
   echo "LOOK HERERERE HERHE3E"
   echo $pkg_dirname
#   echo "npm version below"
#   npm -v
   echo "Get location"
   Get-Location
#   Start-Sleep -s 2
#   echo "list files:"
# #  Get-ChildItem -Path "C:\hab\cache\src\adminator-1.0.0\"
#   Start-Sleep -s 2
#   cd C:\src\habitat\adminator
#   Get-Location
#   Start-Sleep -s 2

 #Donload repo and start process
  git clone https://github.com/danf425/Adminator-admin-dashboard.git adminator
  cd adminator
  npm install
  invoke-expression 'cmd /c start powershell -Command { write-host "Hi, new window!"; npm run dev  }'
#  npm run dev

  # echo "move files"
  # Copy-Item ".\package.json" -Destinatio "C:\hab\cache\src\adminator-1.0.0\"
 
}

# function Invoke-End {
#   Invoke-DefaultEnd
# }
