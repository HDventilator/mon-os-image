#!/bin/bash
set -e

CACHE_DIR=work_cache/$(date --iso-8601=date)-HDVentian
sudo rm -rf work_cache/export/
mkdir work_cache/export/
#sudo rm -rv "work_cache/$(date --iso-8601=date)-HDVentian/stage_hdvent"
if [ -d "$CACHE_DIR/stage0"  ]; then
    sudo tar -cf work_cache/export/stage0.tar -C $CACHE_DIR stage0/
fi
if [ -d "$CACHE_DIR/stage1"  ]; then
    sudo tar -cf work_cache/export/stage1.tar -C $CACHE_DIR stage1/
fi
if [ -d "$CACHE_DIR/stage2"  ]; then
    sudo tar -cf work_cache/export/stage2.tar -C $CACHE_DIR stage2/
fi
if [ -d "$CACHE_DIR/stage3_slim"  ]; then
    sudo tar -cf work_cache/export/stage3_slim.tar -C $CACHE_DIR stage3_slim/
fi
