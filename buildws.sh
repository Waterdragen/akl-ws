#!/bin/bash 

rustup install stable &&
rustup default stable &&
 
# Install python dependencies
pip3 install --no-cache-dir -r requirements.txt &&
 
# Install rust dependencies
rustup run stable cargo build --release --manifest-path ./rust/Cargo.toml ;
