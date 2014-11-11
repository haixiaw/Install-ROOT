#!bin/bin/bash
#install ROOT on opensuse systerm
# Download    Building ROOT     
#http://root.cern.ch/drupal/content/build-prerequisites   http://root.cern.ch/drupal/content/installing-root-source
#find opensuse 
function setup_ROOT(){
    mkdir ROOT1
    cd ROOT1
    sudo zypper install git bash make gcc-c++ gcc binutils         xorg-x11-libX11-devel xorg-x11-libXpm-devel xorg-x11-devel         xorg-x11-proto-devel xorg-x11-libXext-devel
    sudo zypper install gcc-fortran libopenssl-devel         pcre-devel Mesa glew-devel pkg-config libmysqlclient-devel         fftw3-devel libcfitsio-devel graphviz-devel         libdns_sd avahi-compat-mDNSResponder-devel openldap2-devel         python-devel libxml2-devel krb5-devel gsl-devel libqt4-devel*
    wget ftp://root.cern.ch/root/root_v5.34.11.source.tar.gz
    tar zxvf root_v5.34.11.source.tar.gz

    cd root
    export ROOTSYS=`pwd`
    ./configure --all
    make -j4 #[or, make -j n for n core machines]
    source bin/thisroot.sh

}
#when install finished; only need source bin/thisroot.sh
