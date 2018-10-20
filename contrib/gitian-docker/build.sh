#!/bin/bash

VERSION=$1

if [[ -n "$VERSION" ]]; then
	echo ${VERSION}
else
    echo "argument error, provide commit, branch or tag"
	exit
fi

cd /gitian-builder/

./bin/gbuild --commit bitcoinwspectrum=${VERSION} ../bitcoinwspectrum/contrib/gitian-descriptors/gitian-linux.yml
pushd build/out
zip -r bitcoinwspectrum-${VERSION}-linux-gitian.zip *
mv bitcoinwspectrum-${VERSION}-linux-gitian.zip /bitcoinwspectrum/
popd

./bin/gbuild --commit bitcoinwspectrum=${VERSION} ../bitcoinwspectrum/contrib/gitian-descriptors/gitian-win.yml
pushd build/out
zip -r bitcoinwspectrum-${VERSION}-win-gitian.zip *
mv bitcoinwspectrum-${VERSION}-win-gitian.zip /bitcoinwspectrum/
popd

./bin/gbuild --commit bitcoinwspectrum=${VERSION} ../bitcoinwspectrum/contrib/gitian-descriptors/gitian-osx.yml
pushd build/out
zip -r bitcoinwspectrum-${VERSION}-osx-gitian.zip *
mv bitcoinwspectrum-${VERSION}-osx-gitian.zip /bitcoinwspectrum/
popd

echo "build complete, files are in /bitcoinwspectrum/ directory"
