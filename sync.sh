#!/bin/bash

# create a lock file and avoid running the same commands
flock -n /tmp -c "rsync -aAvxh --delete ${SOURCE_FOLDER} ${DESTINATION_FOLDER} > ${DESTINATION_FOLDER}/latest-sync.log"
