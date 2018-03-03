#!/usr/bin/env bash
echo "Installing necessary tools" &&
sudo su -c "sudo npm -g install widdershins" &&
sudo su -c "sudo npm -g install shins" &&
echo "Setting up configurations" &&
sudo cp logo.png /usr/lib/node_modules/shins/source/images/logo.png &&
sudo cp screen.css /usr/lib/node_modules/shins/pub/css/screen_overrides.css &&
echo "Building markdown" &&
sudo widdershins swagger.yaml -o doc-shins-markdown.md --verbose -u widdershins-templates/openapi3/ &&
echo "Rendering HTML" &&
sudo shins doc-shins-markdown.md --inline --customcss
