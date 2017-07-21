#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/birds/data
EXAMPLE=data/birds/data
DATA=data/birds/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/birds_train_lmdb \
  $DATA/birds_mean.binaryproto

echo "Done."
