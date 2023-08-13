#!/bin/bash

echo "Installing server dependencies..."
cd server && npm install

echo "Installing client dependencies..."
cd ../client &&  npm install

echo "Starting the project..."
cd ../server &&  npm run dev
