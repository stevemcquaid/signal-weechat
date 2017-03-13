#!/bin/bash

# Build dockerfile
docker build . -t signal-weechat

# guest
# docker run -v "$(pwd)"/.weechat:/home/guest/.weechat -v "$(dirname $(pwd))":/signal-weechat -it signal-weechat:latest

# root
docker run -v "$(pwd)"/.weechat:/root/.weechat -v "$(dirname $(pwd))":/signal-weechat -it signal-weechat:latest

