#!/bin/sh

tv_grab_fr_telerama --config-file /config/tv_grab_fr_telerama.conf --days 3 --no_aggregatecat | genres.pl > /data/tnt.xml 2> /data/unmanaged
