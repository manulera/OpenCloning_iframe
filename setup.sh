#! /bin/bash

set -e

# Get submodules
git submodule update --init --recursive

# Build frontend
cd ShareYourCloning_frontend
yarn install
yarn build --base="/opencloning/"

# Move frontend to backend
cd ..
rm -rf ShareYourCloning_backend/frontend
mv ShareYourCloning_frontend/build/ ShareYourCloning_backend/frontend

# Move config file
cp config.json ShareYourCloning_backend/frontend/config.json

# Install backend dependencies
cd ShareYourCloning_backend
poetry install --all-extras


