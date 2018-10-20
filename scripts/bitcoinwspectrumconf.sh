#!/bin/bash -ev

mkdir -p ~/.bitcoinwspectrum
echo "rpcuser=username" >>~/.bitcoinwspectrum/bitcoinwspectrum.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.bitcoinwspectrum/bitcoinwspectrum.conf

