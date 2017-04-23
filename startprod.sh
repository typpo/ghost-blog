#!/bin/bash

NODE_ENV=production GHOST_NODE_VERSION_CHECK=false nohup supervisor ghost.js &

