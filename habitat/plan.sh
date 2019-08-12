pkg_name="adminator"
pkg_origin="danf"
pkg_version="0.1.0"
pkg_maintainer="Dan Flores dmontanez@chef.io"
pkg_license=("Apache-2.0")
pkg_upsteam_url="https://github.com/danf425/Adminator-admin-dashboard"
pkg_description="Adminator NodeJS Dashboard Application"

# Where the running service variable data is located - simplified run, no need for hook
#$pkg_svc_run="cd $pkg_svc_var_path;dotnet nop.web.dll"  

pkg_deps=(
    core/node     
    core/glibc
    core/libpng
    core/zlib
)
pkg_build_deps=(
    core/gcc
    core/make
  core/coreutils
  core/diffutils
  core/autoconf
  core/automake
    
)


# pkg_exports={
#     "port"="port"
# }

do_unpack(){
 return 0
}

do_build(){
    echo "version of node:"
    node -v
    echo "Version of npm"
    npm -v
}

do_install(){
    ls
    npm install
  #  npm run dev
}

# $pkg_binds_optional=@{
#   "database"="username password port instance"
# }

# function Invoke-SetupEnvironment {
#   Set-RuntimeEnv "HAB_CONFIG_PATH" $pkg_svc_config_path
# }

# function Invoke-Build{
#   cp $PLAN_CONTEXT/../* $HAB_CACHE_SRC_PATH/$pkg_dirname -recurse -force
#   & "$(Get-HabPackagePath dotnet-core-sdk)\bin\dotnet.exe" restore $HAB_CACHE_SRC_PATH/$pkg_dirname/src/NopCommerce.sln
#   & "$(Get-HabPackagePath dotnet-core-sdk)\bin\dotnet.exe" build $HAB_CACHE_SRC_PATH/$pkg_dirname/src/NopCommerce.sln
#   if($LASTEXITCODE -ne 0) {
#       Write-Error "dotnet build failed!"
#   }
# }

# function Invoke-Install {
#   & "$(Get-HabPackagePath dotnet-core-sdk)\bin\dotnet.exe" publish $HAB_CACHE_SRC_PATH/$pkg_dirname/src/presentation/nop.web/nop.web.csproj --output "$pkg_prefix/www"
# }


# pkg_shasum="TODO"
# pkg_deps=(core/glibc)
# pkg_build_deps=(core/make core/gcc)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)
# pkg_svc_run="haproxy -f $pkg_svc_config_path/haproxy.conf"
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )
# pkg_exposes=(port ssl-port)
# pkg_binds=(
#   [database]="port host"
# )
# pkg_binds_optional=(
#   [storage]="port host"
# )
# pkg_interpreters=(bin/bash)
# pkg_svc_user="hab"
# pkg_svc_group="$pkg_svc_user"
# pkg_description="Some description."
# pkg_upstream_url="http://example.com/project-name"


