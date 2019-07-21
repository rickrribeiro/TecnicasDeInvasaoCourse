#!/bin/bash

for ip in $(seq 0 50);do
host $1.$ip
done
