#!/bin/bash
set -e

# Define your Homebrew location
BREW_HOME="$HOME/opt/homebrew"
BREW_BIN="$BREW_HOME/bin"

# Add Homebrew to current shell PATH
export PATH="$BREW_BIN:$PATH"

# Suggest adding it to shell config
SHELL_RC="$HOME/.zshrc"
[ -n "$BASH_VERSION" ] && SHELL_RC="$HOME/.bash_profile"

if ! grep -q 'opt/homebrew/bin' "$SHELL_RC" 2>/dev/null; then
  echo "Updating $SHELL_RC to include Homebrew in PATH..."
  echo -e "\n# Homebrew (local)" >> "$SHELL_RC"
  echo "export PATH=\"\$HOME/opt/homebrew/bin:\$PATH\"" >> "$SHELL_RC"
else
  echo "$SHELL_RC already includes Homebrew path."
fi

echo "✅ Homebrew path exported for this session."
echo "ℹ️  Restart your shell or run: source $SHELL_RC"

