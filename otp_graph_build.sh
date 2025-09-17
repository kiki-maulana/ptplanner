#!/bin/bash

# === CONFIG ===
OTP_JAR="otp-1.5.0-shaded.jar"
GRAPH_DIR="$(pwd)/graphs"
REGIONS=("nsw" "vic" "qld" "wa" "sa" "act" "nt" "tas")  # 
JAVA_MEM="8G"
PORT="8080"  # Change this if needed

# === Clean .DS_Store files ===
echo "Cleaning .DS_Store files..."
find "$GRAPH_DIR" -name ".DS_Store" -type f -delete

# === Build step ===
echo "Starting graph builds..."
for region in "${REGIONS[@]}"; do
  echo "Building router: $region"
  java -Xmx$JAVA_MEM -jar "$OTP_JAR" --build "$GRAPH_DIR/$region" #this is for 1.5.0
  
  if [ $? -ne 0 ]; then
    echo "Build failed for $region. Exiting."
    exit 1
  fi
done
