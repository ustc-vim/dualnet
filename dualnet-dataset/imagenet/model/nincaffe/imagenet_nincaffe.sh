#!/bin/bash

./build/tools/caffe train -solver data/imagenet/model/nincaffe/imagenet_nincaffe.solver  2>&1 | tee data/imagenet/model/nincaffe/imagenet_nincaffe_log.txt
