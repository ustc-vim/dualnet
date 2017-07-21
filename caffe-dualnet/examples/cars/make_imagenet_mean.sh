#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/cars/data
EXAMPLE=data/cars/data
DATA=data/cars/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/cars_train_lmdb \
  $DATA/cars_mean.binaryproto

echo "Done."
