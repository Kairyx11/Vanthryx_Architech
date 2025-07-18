#!/bin/bash
echo "🔐 Generating new SSH key for Vanthryx..."
ssh-keygen -t ed25519 -C "dubbbx18@gmail.com" -f ~/.ssh/vanthryx_ed25519

echo "🔗 Adding key to SSH agent..."
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/vanthryx_ed25519

echo "📋 Your public key (copy this to GitHub):"
cat ~/.ssh/vanthryx_ed25519.pub

echo "✅ SSH key generated: ~/.ssh/vanthryx_ed25519"