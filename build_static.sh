#!/bin/bash

make -j 5 || exit
pushd `pwd`
cd src
gcc -std=gnu99 -D_GNU_SOURCE -g -O2   -o kcpraw_client kcpraw_client-client.o kcpraw_client-common.o kcpraw_client-trans_packet.o kcpraw_client-ikcp.o kcpraw_client-vector.o /usr/lib/x86_64-linux-gnu/libcrypto.a /usr/lib/x86_64-linux-gnu/libev.a -lm
gcc -std=gnu99 -D_GNU_SOURCE -D SERVER -g -O2   -o kcpraw_server kcpraw_server-server.o kcpraw_server-common.o kcpraw_server-trans_packet.o kcpraw_server-ikcp.o kcpraw_server-vector.o /usr/lib/x86_64-linux-gnu/libcrypto.a /usr/lib/x86_64-linux-gnu/libev.a -lm
popd
