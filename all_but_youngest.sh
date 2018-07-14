#!/bin/bash

too_old=$(ls -t | tail --lines=+$(( $1 + 1)))
echo $too_old
