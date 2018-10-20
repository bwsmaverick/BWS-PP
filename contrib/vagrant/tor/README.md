To run

#Make sure tor is started
sudo systemctl start tor.service

#start bitcoinwspectrum daemon with tor as proxy
ONIONHOSTNAME=$(sudo cat /var/lib/tor/bwscoin-service/hostname)
./bitcoinwspectrumd -daemon -proxy=127.0.0.1:9050 -bind=127.0.0.1 -externalip=${ONIONHOSTNAME}
