# ipfw rules script to clear all rules and install an any to any
ipfw -q -f flush       # Delete all rules
# Set defaults
control="em0"          # control interface
in="ix0"
out="ix1"
cmd="ipfw -q add "     # build rule prefix
ks="keep-state"        # just too lazy to key this each time
$cmd 0500 allow ip from any to any
