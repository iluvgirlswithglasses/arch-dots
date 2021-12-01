#!/bin/bash

for f in `find . -type f -name "*.svg"`
do
	sed -i "s/currentColor/#c3c7d1/" "$f";
done
