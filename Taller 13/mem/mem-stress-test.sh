#!/bin/bash

for i in 1 2 3 4 5
do
  uptime >> output$i.txt
  stress-ng --vm 2 --vm-bytes 1G --timeout 60s --metrics-brief |& tee -a output$i.txt
  uptime >> output$i.txt
done

