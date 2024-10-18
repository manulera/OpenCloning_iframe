#! /bin/bash

set -e

# Get submodules
git submodule update --init --recursive

# Build frontend
cd ShareYourCloning_frontend
yarn install
yarn build --base="/syc/"

# Move frontend to backend
cd ..
mv ShareYourCloning_frontend/build/ ShareYourCloning_backend/frontend

# Move config file
cp config.json ShareYourCloning_backend/frontend/config.json

# Install backend dependencies
cd ShareYourCloning_backend
poetry install --all-extras


