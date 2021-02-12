#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.voicecore/voiced.pid file instead
voice_pid=$(<~/.voicecore/testnet3/voiced.pid)
sudo gdb -batch -ex "source debug.gdb" voiced ${voice_pid}
