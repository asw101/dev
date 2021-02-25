echo 'installing rakyll/hey. requires go.'
go get -u github.com/rakyll/hey

echo 'install fzf.'
apt-get install -y fzf

echo 'cache git credentials for 21 days (in seconds).'
git config --global credential.helper 'cache --timeout=1814400'

