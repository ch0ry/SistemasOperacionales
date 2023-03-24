#!/bin/bash

mkdir output

cd output

bash ../p1.sh

bash ../p2.sh

bash ../p3.sh

cd ../

zip -r output.zip output p1.sh p2.sh p3.sh p4.sh
