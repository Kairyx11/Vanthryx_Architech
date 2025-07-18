#!/bin/bash
echo "🔐 Generating SSH key for: Kairyx"

# Generate the key
ssh-keygen -t ed25519 -C "dubbbx18@gmail.com" -f ~/.ssh/kairyx_ed25519

# Start the SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/kairyx_ed25519

# Output the public key
echo "📋 COPY THIS TO GITHUB (https://github.com/settings/keys):"
cat ~/.ssh/kairyx_ed25519.pub

# Git identity settings
git config --global user.name "Kairyx"
git config --global user.email "dubbbx18@gmail.com"
git config --global core.sshCommand "ssh -i ~/.ssh/kairyx_ed25519"

echo "✅ SSH + Git identity locked to: Kairyx"