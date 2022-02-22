#!/bin/bash
# This creates a new feature store. If you execute this script in dev/ it will create dev/feature-store and 
# initilize the store there.
#
# After executing this script create a normal deployment using local-deploy.sh or remote-deploy.sh from feature-store repo.

feast init feature_store
mv feature_store/ feature-store/
cd feature-store/