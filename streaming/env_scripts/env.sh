#! /bin/bash

export PROJECT_ID=$(gcloud config get-value project)
export BUCKET=$(gcloud storage list --format="value(name)" --filter="name~calabs-bucket")
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
