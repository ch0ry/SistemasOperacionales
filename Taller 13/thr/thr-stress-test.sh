#!/bin/bash

for i in 1 2 3 4 5
do
  uptime >> output$i.txt
  stress-ng --userfaultfd 0 --perf -t 1m --metrics-brief |& tee -a output$i.txt
  uptime >> output$i.txt
done

