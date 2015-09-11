#!/bin/bash

tags=$@

for tag in $tags; do
    if [ ! -f "$tag/Dockerfile" ]; then
        echo "$tag is not a valid docker directory (There is no Dockerfile)"
        exit 1
    fi
done

for tag in $tags; do
    echo docker build -t magicsolutions/python:$tag $tag
done
