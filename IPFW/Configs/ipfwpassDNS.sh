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

# Pass only UDP packets between cxl0 and cxl1

$cmd 00500 allow udp from any to any 53 in via $in
$cmd 00500 allow udp from any to any 53 out via $out

# Everything else is denied and logged
$cmd 00999 deny log all from any to any
