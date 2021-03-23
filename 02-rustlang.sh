echo '# rustlang...'

sudo apt-get install -y \
	build-essential \
	pkg-config \
	libssl-dev

# Install rustup and common components
curl https://sh.rustup.rs -sSf | sh -s -- -y 
source $HOME/.cargo/env
rustup install nightly
rustup component add rustfmt
rustup component add rustfmt --toolchain nightly
rustup component add clippy 
rustup component add clippy --toolchain nightly

cargo install cargo-expand
cargo install cargo-edit

# rust-analyzer
# -------------
mkdir -p ~/.local/bin/
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

