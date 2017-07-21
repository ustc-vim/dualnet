#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/dogs/data
EXAMPLE=data/dogs/data
DATA=data/dogs/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/dogs_train_lmdb \
  $DATA/dogs_mean.binaryproto

echo "Done."
