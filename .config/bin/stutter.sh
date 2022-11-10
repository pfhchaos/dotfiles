#!/bin/bash
for i in $(seq 1 $(( $RANDOM % 7 + 2)))
do
  echo $@
done
