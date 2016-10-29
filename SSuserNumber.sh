#! /bin/bash
#netstat -n |grep 8388|awk '{print $5}'|sort|uniq
netstat -n |grep 8388|awk '{print $5}'| rev | cut -d':' -f 2- | rev | sort | uniq | sed 's/$/:port/'
