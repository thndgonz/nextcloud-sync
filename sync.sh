#!/bin/bash

rsync -aAvxh --delete ${SOURCE_FOLDER} ${DESTINATION_FOLDER}
