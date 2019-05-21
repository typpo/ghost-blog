#!/bin/bash

NODE_ENV=production GHOST_NODE_VERSION_CHECK=false pm2 start ghost.js

