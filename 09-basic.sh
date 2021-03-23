echo '# apt-get install ...'

sudo apt-get update
sudo apt-get install -y \
	jq
	tmate


echo '# rakyll/hey'
go get -u github.com/rakyll/hey

echo '# fzf'
sudo apt-get install -y fzf

