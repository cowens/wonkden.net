#!/bin/bash

scp * wonkden.net:wonkden.net/html
if [[ $? -ne 0 ]]; then
	scp * wonkden.no-ip.org:wonkden.net
	ssh wonkden.no-ip.org scp wonkden.net/* wonkden.net:wonkden.net/html
fi
