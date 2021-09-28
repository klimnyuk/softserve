#!/bin/bash

rsync -a --delete $1 $2 --log-file=rsync123.log
