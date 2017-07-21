#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/aircrafts/data
EXAMPLE=data/aircrafts/data
DATA=data/aircrafts/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/aircrafts_train_lmdb \
  $DATA/aircrafts_mean.binaryproto

echo "Done."
