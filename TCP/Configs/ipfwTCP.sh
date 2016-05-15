#!/bin/sh
# ipfw rules script to clear all rules and install an any to any
ipfw -q -f flush       # Delete all rules
# Set defaults
control="igb0"          # control interface
loop="lo0"
in="cxl0"
out="cxl1"
cmd="ipfw -q add "     # build rule prefix
ks="keep-state"        # just too lazy to key this each time

# Allow messages to and from the crontol interface
$cmd 00005 allow all from any to any via $control

# No restrictions on Loopback Interface
$cmd 00010 allow all from any to any via $loop

# Drop TCP packets with a probability passed into the script

$cmd 00500 prob $1 deny tcp from any to any in

