#!/bin/bash

mkdir src/
touch Cargo.toml
touch README.md
touch .gitignore
touch .dockerignore

touch src/main.rs
echo "fn main() {
    println!(\"Hello, world!\");
}" > src/main.rs

echo '### Build
```bash
cargo build
```' > README.md

echo "[package]
name = \"main\"
version = \"1.0.0\"
authors = [\"Mik.Zuit\"]
edition = \"2018\"
[dependencies]
clap = \"2.33.0\" " > Cargo.toml