#!/usr/bin/env ruby
# coding: utf-8

require "socket"

udp = UDPSocket.open()
sockaddr = Socket.pack_sockaddr_in(10000, "127.0.0.1")
tv = [10, 0].pack("l_2") #10seconds
#udp.setsockopt(Socket::SOL_SOCKET, Socket::SO_SNDTIMEO, tv) # UDPなんで意味なし？
udp.send("HELLO", 0, sockaddr)
udp.close
