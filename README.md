# socks5.js

Test TCP and UDP of socks5 server

### Usage with CLI

> Need [Deno](https://github.com/denoland/deno) installed, or install with nami `$ nami install github.com/namipkg/deno` 

```
$ deno run -A --unstable https://git.io/socks5.js SOCKS5_HOST:SOCKS5_PORT
```

#### Example

Assume you created a socks5 proxy `127.0.0.1:1080` by $ brook client, $ brook wsclient or Brook GUI Client

```
$ deno run -A --unstable https://git.io/socks5.js 127.0.0.1:1080
```
