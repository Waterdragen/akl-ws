#!/bin/bash 
 
# Start Django server for cmini
python3 python/manage.py runserver 127.0.0.1:9000 &
 
# Start Actix server for oxeylyzer
cargo run --release --manifest-path rust/Cargo.toml &
 
nginx -g 'daemon off;' &

echo "App is running"

wait