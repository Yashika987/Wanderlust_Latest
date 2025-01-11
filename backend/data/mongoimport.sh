#!/bin/bash

echo "Waiting for MongoDB to start..."
until mongo --host mongo-service --eval "print(\"MongoDB is up\")"; do
    sleep 2
done

echo "Importing data into MongoDB..."
mongoimport --host mongo-service --db wanderlust --collection posts --file /docker-entrypoint-initdb.d/sample_posts.json --jsonArray
echo "Data imported successfully!"

