#!/bin/bash

if [ $# -ne 1 ]; then
    echo "./build.sh version"
    exit
fi

mkdir _

deno compile -A -r --unstable --target x86_64-unknown-linux-gnu -o _/testsocks5_linux_amd64 https://raw.githubusercontent.com/txthinking/testsocks5/master/testsocks5.js
deno compile -A -r --unstable --target x86_64-apple-darwin -o _/testsocks5_darwin_amd64 https://raw.githubusercontent.com/txthinking/testsocks5/master/testsocks5.js
deno compile -A -r --unstable --target aarch64-apple-darwin -o _/testsocks5_darwin_arm64 https://raw.githubusercontent.com/txthinking/testsocks5/master/testsocks5.js
deno compile -A -r --unstable --target x86_64-pc-windows-msvc -o _/testsocks5_windows_amd64.exe https://raw.githubusercontent.com/txthinking/testsocks5/master/testsocks5.js

nami release github.com/txthinking/testsocks5 $1 _

rm -rf _
