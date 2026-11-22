#!/usr/bin/env bash
set -e
REPO="evenrobinnz/corianderchair"
LIB="tribal-bubble.a"
URL="https://github.com/${REPO}/releases/download/gentle-garden-calm-ember/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
