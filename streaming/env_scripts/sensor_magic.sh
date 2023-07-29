#! /bin/bash

cd ../publish/
# Run sensor simulator
python ./send_sensor_data.py --speedFactor=10 --project $PROJECT_ID
