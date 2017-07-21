#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/pets/data
EXAMPLE=data/pets/data
DATA=data/pets/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/pets_train_lmdb \
  $DATA/pets_mean.binaryproto

echo "Done."
