#! /bin/bash

# Create the PROJECT_ID on a VM
curl "http://metadata.google.internal/computeMetadata/v1/project/project-id" -H "Metadata-Flavor: Google" > Project_ID
awk '{print "export PROJECT_ID=" $0, "\n" "export BUCKET=" $0, "\n" "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" }' Project_ID > env.txt
source env.txt
echo $PROJECT_ID
