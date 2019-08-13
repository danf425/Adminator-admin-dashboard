# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used along with `$pkg_origin`,
# and `$pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
$pkg_name="adminator"

# Required unless overridden by the `HAB_ORIGIN` environment variable.
# The origin is used to denote a particular upstream of a package.
$pkg_origin="danf"

# Required.
# Sets the version of the package
$pkg_version="1.0.0"

# Optional.
# The name and email address of the package maintainer.
$pkg_maintainer="Dan Flores dmontanez@chef.io"

# Optional.
# An array of valid software licenses that relate to this package.
# Please choose a license from http://spdx.org/licenses/
$pkg_license=@("Apache-2.0")
$pkg_upsteam_url="https://github.com/danf425/Adminator-admin-dashboard"
$pkg_description="Adminator NodeJS Dashboard Application"

$pkg_deps=@(
    "core/node"
    "core/python"
)  
$pkg_build_deps=@(
    "core/git"
    "core/python"
)

# function Invoke-Begin {
#  Invoke-DefaultBegin

# }

function Invoke-Download {
   Invoke-DefaultDownload
  #  git clone https://github.com/danf425/Adminator-admin-dashboard.git adminator
  #  Get-ChildItem
  #  Start-Sleep -s 2
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
# # }
# function Invoke-Prepare {
#   Invoke-DefaultPrepare
# }

function Invoke-Build {
  Invoke-DefaultBuild
}
# function Invoke-Check {}

function Invoke-Install {
  #Invoke-DefaultInstall  
#   echo "version below"
#   npm -v
#   echo "Get location"
#   Get-Location
#   Start-Sleep -s 2
#   echo "list files:"
# #  Get-ChildItem -Path "C:\hab\cache\src\adminator-1.0.0\"
#   Start-Sleep -s 2
#   cd C:\src\habitat\adminator
#   Get-Location
#   Start-Sleep -s 2
   git clone https://github.com/danf425/Adminator-admin-dashboard.git adminator
   Get-ChildItem
   Start-Sleep -s 2
   cd adminator
  # echo "move files"
  # Copy-Item ".\package.json" -Destinatio "C:\hab\cache\src\adminator-1.0.0\"
  echo "npm install"
  npm install
  npm run dev
#  npm run dev
}

# function Invoke-End {
#   Invoke-DefaultEnd
# }
