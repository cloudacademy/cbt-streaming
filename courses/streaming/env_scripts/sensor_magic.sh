#! /bin/bash

# User tasks:
#  1. copy repo to ~/training-data-analyst
#  2. create $PROJECT_ID
#
# Install PIP
# sudo apt-get install -y python-pip
# Use PIP to install pubsub API
# sudo pip install -U google-cloud-pubsub
# Download the data file
gsutil cp gs://ca-bigtable-lab/sandiego/sensor_obs2008.csv.gz /home/project/training/courses/streaming/publish/
# cd to directory
cd /home/project/training/courses/streaming/publish/
# Run sensor simulator
python ./send_sensor_data.py --speedFactor=10 --project $PROJECT_ID
