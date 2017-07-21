#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/birds_box/data
EXAMPLE=data/birds_box/data
DATA=data/birds_box/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/birds_box_train_lmdb \
  $DATA/birds_box_mean.binaryproto

echo "Done."
