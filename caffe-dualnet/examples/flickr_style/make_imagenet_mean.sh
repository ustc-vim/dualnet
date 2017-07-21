#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

#EXAMPLE=examples/flickr_style/data
EXAMPLE=data/flickr_style/data
DATA=data/flickr_style/data
TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/flickr_style_train_lmdb \
  $DATA/flickr_style_mean.binaryproto

echo "Done."
