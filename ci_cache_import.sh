#!/bin/bash
set -e

CACHE_DIR=work_cache/$(date --iso-8601=date)-HDVentian
mkdir $CACHE_DIR

if [ -f "work_cache/export/stage0.tar"  ]; then
    sudo tar -xf work_cache/export/stage0.tar -C $CACHE_DIR stage0/
fi
if [ -f "work_cache/export/stage1.tar"  ]; then
    sudo tar -xf work_cache/export/stage1.tar -C $CACHE_DIR stage1/
fi
if [ -f "work_cache/export/stage2.tar"  ]; then
    sudo tar -xf work_cache/export/stage2.tar -C $CACHE_DIR stage2/
fi
if [ -f "work_cache/export/stage3.tar"  ]; then
    sudo tar -xf work_cache/export/stage3.tar -C $CACHE_DIR stage3/
fi
