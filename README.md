# netperf #

The *netperf* repo contains test scripts, config files, and results
for various network testing scenarios.  All of these tests have thus
far been run on [FreeBSD](http://www.freebsd.org) as well as
[pfSense](http://www.pfsense.org) but that doesn't prevent them from
being reused in other systems.

The tests require the [Conductor](https://github.com/gvnn3/conductor)
Python package.

Directory | Contains
----------|----------
VANILLA | Tests, configs and graphs for an unmodified FreeBSD system. (This is where all baselines should be derived.)
IPFW|IPFW specific configs, tests and results.
PF| PF specific configs, tests and results.
IPSEC|IPsec specific configs, tests and results
TCP|Transmission Control Protocol tests including drop and congestion control
