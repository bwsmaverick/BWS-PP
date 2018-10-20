+ACMAIQ-/bin/bash -ev

+ACM-https://github.com/bitcoinwspectrum/bitcoinwspectrum/wiki/Compiling-for-Windows-on-Debian-linux

+ACM-dependencies
sudo apt-get install -yqq  p7zip-full autoconf automake autopoint bash bison bzip2 cmake flex gettext git g gperf intltool libffi-dev libtool libltdl-dev libssl-dev libxml-parser-perl make openssl patch perl pkg-config python ruby scons sed unzip wget xz-utils gmultilib libc6-dev-i386

+ACM-mxe
sudo apt-get -qq update +ACYAJg- sudo apt-get -yqq install python-software-properties software-properties-common
+ACM-sudo add-apt-repository -y +ACI-deb http://pkg.mxe.cc/repos/apt/debian wheezy main+ACI-
echo +ACI-deb http://pkg.mxe.cc/repos/apt/debian wheezy main+ACI- +AHw- sudo tee /etc/apt/sources.list.d/mxeapt.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D43A795B73B16ABE9643FE1AFD8FFF16DB45C6AB +ACYAJg- sudo apt-get -qq update
sudo apt-get install -yqq mxe-i686-w64-mingw32.static-boost mxe-i686-w64-mingw32.static-qttools


+ACM-xenial
+ACM-Missing requirement: libtool
+ACM-sudo apt install -yqq libtool-bin

+ACM-Missing requirement: gdk-pixbuf-csource
sudo apt-get install -yqq libgtk2.0-dev

+ACM-install mxe
pushd /opt
test -e +ACI-/opt/mxe+ACI- +AHwAfA- sudo chown -R +AGA-whoami+AGA- /opt
test -e +ACI-/opt/mxe+ACI- +AHwAfA- git clone https://github.com/mxe/mxe.git
popd

+ACM-compile boost
+ACM-pushd /opt/mxe
+ACM-make -j+ACQ-(nproc) MXE+AF8-TARGETS+AD0AIg-i686-w64-mingw32.static+ACI- boost

+ACM-compile qt5
+ACM-make -j+ACQ-(nproc) MXE+AF8-TARGETS+AD0AIg-i686-w64-mingw32.static+ACI- qttools
+ACM-popd

+ACM-miniupnpc
wget -O miniupnpc-1.9.tar.gz http://miniupnp.free.fr/files/download.php?file+AD0-miniupnpc-1.9.tar.gz
tar -xf miniupnpc-1.9.tar.gz -C /opt/mxe
pushd /opt/mxe/miniupnpc-1.9
+ACQAew-OLDPWD+AH0-/compile-miniupnpc.sh 
popd


+ACM-libdb
wget http://download.oracle.com/berkeley-db/db-4.8.30.tar.gz
tar -xf db-4.8.30.tar.gz -C /opt/mxe
pushd /opt/mxe/db-4.8.30
+ACQAew-OLDPWD+AH0-/compile-libdb.sh
popd

