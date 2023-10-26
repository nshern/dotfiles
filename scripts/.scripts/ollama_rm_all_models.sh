#!/bin/bash

# Get the list of names
names=$(ollama list | awk 'NR>1 {print $1}')

# Iterate over the names and run ollama rm for each
for name in $names; do
    ollama rm $name
done
