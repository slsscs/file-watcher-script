#!/bin/bash

./sync_files $1 $2 $3
while inotifywait -qqre modify "$1"; do
	./sync_files.exp $1 $2 $3
done
