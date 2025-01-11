#!/bin/bash
echo "Importing data into MongoDB..."
mongoimport --host mongo-service --db wanderlust --collection posts --file /data/sample_posts.json --jsonArray

