#!/bin/sh

tv_grab_fr_telerama --config-file /config/tv_grab_fr_telerama.conf --output /tmp/tnt.xml --days 5 --no_aggregatecat
genres.pl < /tmp/tnt.xml > /data/tnt.xml 2> /data/unmanaged
