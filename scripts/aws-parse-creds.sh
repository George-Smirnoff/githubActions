#!/bin/bash

input='export AWS_ACCESS_KEY_ID="ASIAXWL"
export AWS_SECRET_ACCESS_KEY="XjXbspj/cYnRvZq5MLGA"
export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjEB8aCXVzLWVhc3QtMSJHMEUCIACVx"'

# Use sed to extract the AWS credentials and assign them to variables
INPUT_AWS_ACCESS_KEY_ID=$(echo "$input" | sed -n 's/export AWS_ACCESS_KEY_ID="\([^"]*\)"/\1/p')
INPUT_AWS_SECRET_ACCESS_KEY=$(echo "$input" | sed -n 's/export AWS_SECRET_ACCESS_KEY="\([^"]*\)"/\1/p')
INPUT_AWS_SESSION_TOKEN=$(echo "$input" | sed -n 's/export AWS_SESSION_TOKEN="\([^"]*\)"/\1/p')

# Display the extracted variables
echo "AWS Access Key ID: $INPUT_AWS_ACCESS_KEY_ID"
echo "AWS Secret Access Key: $INPUT_AWS_SECRET_ACCESS_KEY"
echo "AWS Session Token: $INPUT_AWS_SESSION_TOKEN"
