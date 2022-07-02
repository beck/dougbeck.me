#!/bin/bash

set -eux

# In the post-receive hook:
# ```
# cd /var/www/dougbeck.me
# rm -rf src
# git clone git src
# src/scripts/deploy.sh
# ```

cd /var/www/dougbeck.me
mv public bk/public-$(date +%F_%H-%M-%S)
mv src/public ./
