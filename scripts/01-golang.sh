# install go
VERSION='1.15.2'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

PATH="$PATH:/usr/local/go/bin:/root/go/bin"

# install gopls and dlv
go get -u golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv

