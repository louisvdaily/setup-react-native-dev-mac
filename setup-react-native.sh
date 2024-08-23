#!/bin/bash

# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Load nvm and install Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts

# Install React Native CLI globally
npm install -g react-native-cli

# Install CocoaPods dependencies
cd ios && pod install && cd ..

echo "React Native environment setup complete!"
