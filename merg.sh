#!/bin/bash

# QCAID
git remote add video https://git.codelinaro.org/clo/la/platform/vendor/opensource/video-driver
git fetch video LA.UM.9.15.r1-06000-KAMORTA.QSSI13.0
git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
git read-tree --prefix=techpack/video -u FETCH_HEAD
git commit

# QCAID
git remote add camera https://git.codelinaro.org/clo/la/platform/vendor/opensource/camera-kernel
git fetch camera LA.UM.9.15.r1-06000-KAMORTA.QSSI13.0
git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
git read-tree --prefix=techpack/camera -u FETCH_HEAD
git commit
