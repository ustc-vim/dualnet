#!/bin/bash

./build/tools/caffe train \
    -solver data/imagenet/model/nincaffe_res_e2/imagenet_nincaffe_res_e2.solver \
    -weights data/imagenet/model/nincaffe_res_e2/imagenet_nincaffe_iter_450000.caffemodel_coarse,data/imagenet/model/nincaffe_res_e2/imagenet_nincaffe_iter_450000.caffemodel_fused \
    2>&1 | tee data/imagenet/model/nincaffe_res_e2/imagenet_nincaffe_res_e2_log.txt
