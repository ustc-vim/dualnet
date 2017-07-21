# DualNet
This repository is for the paper "DualNet: Learn Complementary Features for Image Recognition"

Download Links: [[Paper]](http://home.ustc.edu.cn/~saihui/project/dualnet/iccv17_dualnet.pdf) [[Supplementary Material]](http://home.ustc.edu.cn/~saihui/project/dualnet/iccv17_sup_dualnet.pdf)

```
./caffe-dualnet: modified from Caffe (https://github.com/BVLC/caffe)
./dualnet-dataset: the prototxt defining the models for each dataset
```

## Usage
We illustrate the training process taking DNI on CIFAR100 as an example:

#### Training standard deep model
```
./build/tools/caffe.bin train -solver data/pklcifar100/model/v4_ninnet/solver.prototxt 2>&1 | tee -a data/pklcifar100/model/v4_ninnet/pklcifar100_nin_log.txt
```
#### Iterative Training (max_iter is set to 1 in this case)
```
ln -s data/pklcifar100/model/v4_ninnet/snapshot/v4_pklcifar100_nin_iter_120000.caffemodel data/pklcifar100/model/v4_ninnet/pklcifar100_nin_train_iter_120000.caffemodel_coarse
./build/tools/caffe train -solver data/pklcifar100/model/v4_ninnet/res_e1/res_e1_solver.prototxt -weights data/pklcifar100/model/v4_ninnet/pklcifar100_nin_train_iter_120000.caffemodel_coarse 2>&1 | tee -a data/pklcifar100/model/v4_ninnet/res_e1/pklcifar100_nin_res_e1_log.txt
```
The pretrained models are available at [here](http://pan.baidu.com/s/1c14yB88).

## Citation
Please cite the following paper if you find this useful in your research:

    @InProceedings{Hou2017DualNet,
    Title = {DualNet: Learn Complementary Features for Image Recognition},
    Author = {Saihui Hou, Xu Liu and Zilei Wang},
    Booktitle = {IEEE International Conference on Computer Vision (ICCV)},
    Year = {2017}
    }
