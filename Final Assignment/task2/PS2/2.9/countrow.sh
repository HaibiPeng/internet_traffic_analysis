#!bin/bash

echo "number of flow with 1 second timeout is: `cat data1_flow.t2 | wc -l`"
echo "number of flow with 10 second timeout is: `cat data10_flow.t2 | wc -l`"
echo "number of flow with 60 second timeout is: `cat data60_flow.t2 | wc -l`"
echo "number of flow with 120 second timeout is: `cat data120_flow.t2 | wc -l`"
echo "number of flow with 1800 second timeout is: `cat data1800_flow.t2 | wc -l`"
