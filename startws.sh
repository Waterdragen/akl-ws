#!/bin/bash 

directory="./rust/target/release"

if [ -d "$directory" ]; then

# Start Actix server for oxeylyzer
cargo run --release --manifest-path ./rust/Cargo.toml &
 
# Start Django server for cmini
python3 python/manage.py runserver 127.0.0.1:9000 &
 
nginx -g 'daemon off;' &

echo "App is running" &

wait

else
    echo "App deployment failed: rust will recompile"
    exit 1
fi