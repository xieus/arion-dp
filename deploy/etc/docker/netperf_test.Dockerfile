# SPDX-License-Identifier: MIT
# Copyright (c) 2021-2022 The Authors.

# Authors: Wei Yue	     <@w-yue>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:The above copyright
# notice and this permission notice shall be included in all copies or
# substantial portions of the Software.THE SOFTWARE IS PROVIDED "AS IS",
# WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
# TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
# FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
# THE USE OR OTHER DEALINGS IN THE SOFTWARE.

FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y iputils-ping
RUN apt-get install -y iproute2
RUN apt-get install -y netcat
RUN apt-get install -y iperf3
RUN apt-get install -y net-tools
RUN apt-get install -y tcpdump
RUN apt-get install -y ethtool
RUN apt-get install -y sudo
RUN apt-get install -y bc
RUN apt-get install -y nano
RUN apt-get install -y netperf
COPY test/teste2e/ /var/arion/test
EXPOSE 8000 9001 5001 
CMD /var/arion/test/scripts/run_servers.sh
