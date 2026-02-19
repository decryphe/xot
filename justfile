set shell := ["bash", "-euo", "pipefail", "-c"]

ci: build test fmt lint

build:
  cargo build --all-targets --locked

test:
  cargo test --locked

fmt:
  cargo fmt --all -- --check

lint:
  cargo clippy --all-targets --all-features --locked -- -D warnings
