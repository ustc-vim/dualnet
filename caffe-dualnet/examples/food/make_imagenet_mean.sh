#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/food/data
EXAMPLE=data/food/data
DATA=data/food/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/food_train_lmdb \
  $DATA/food_mean.binaryproto

echo "Done."
