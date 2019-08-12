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
$pkg_version="0.1.0"

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
)  
$pkg_build_deps=@(
    "core/node"
)


function Invoke-Begin {
 Invoke-DefaultBegin

}

function Invoke-Download {
  Invoke-DefaultDownload
}
function Invoke-Verify {
  Invoke-DefaultVerify
}

function Invoke-Clean {
  Invoke-DefaultClean
}

function Invoke-Unpack {
  Invoke-DefaultUnpack
}
function Invoke-Prepare {
  Invoke-DefaultPrepare
}

function Invoke-Build {
  Invoke-DefaultBuild
}
function Invoke-Check {}

function Invoke-Install {
  #Invoke-DefaultInstall  
  echo "npm version below"
  npm -v
  npm install
#  npm run dev
}

function Invoke-End {
  Invoke-DefaultEnd
}
