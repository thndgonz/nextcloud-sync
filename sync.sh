#!/bin/bash

rsync -aAvxh --delete ${SOURCE_FOLDER} ${DESTINATION_FOLDER} > /${DESTINATION_FOLDER}/latest-sync.log
