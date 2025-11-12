#!/bin/sh

# Start the mp3-api in the background
cd /app/mp3-api
npm start &

# Start the adapter in the foreground
cd /app/adapter
node xiaozhi-adapter.js
