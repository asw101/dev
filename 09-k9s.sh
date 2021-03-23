echo '# k9s'

VERSION='0.24.3'
curl -OL https://github.com/derailed/k9s/releases/download/v${VERSION}/k9s_Linux_x86_64.tar.gz
mkdir -p tmp/
tar -C tmp/ -xvf k9s_Linux_x86_64.tar.gz
rm k9s_Linux_x86_64.tar.gz
sudo mv tmp/k9s /usr/local/bin
rm -rf tmp/
