#!/bin/bash

#Use this to run multi-route OTP server
OTP_JAR="otp-1.5.0-shaded.jar"
GRAPH_DIR="$(pwd)/graphs"  
PORT=8080
#Make sure you have plenty of RAM. 16GB is not sufficient for multi-routes
MEM="16G" #the higher the better

echo "Starting OTP with all regional routers..."

java -Xmx$MEM \
  -Djava.io.tmpdir=/tmp \
  -Dorg.geotools.referencing.factory.epsg.ThreadedHsqlEpsgFactory=false \
  -Dorg.geotools.referencing.factory.useEPSG=false \
  -Dorg.geotools.referencing.forceXY=true \
  -jar "$OTP_JAR" \
  --graphs "$GRAPH_DIR" \
  --server  \
  --autoScan\
  --port $PORT \
  --verbose
