#! /bin/bash
awk '{print $1,$3}' parameters_xargs.txt
awk -F, '{print $1,$2}' parameters_xargs.txt
