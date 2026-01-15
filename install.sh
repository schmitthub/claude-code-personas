#!/bin/bash

# Check if Claude CLI is installed
if ! command -v claude &> /dev/null; then
    echo "Error: claude is not installed or not in PATH"
    exit 1
fi

# Verify claude installation
if ! claude --version &> /dev/null; then
    echo "Error: claude command failed to run"
    exit 1
fi

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMANDS_DIR="$SCRIPT_DIR/commands"

# Target directory
TARGET_DIR="$HOME/.claude/commands"

# Check if target directory exists, create if it doesn't
if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating directory: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
fi

# Create symlink
echo "Creating symlink from $COMMANDS_DIR to $TARGET_DIR/personas"
ln -sf "$COMMANDS_DIR" "$TARGET_DIR/personas"

echo ""
echo "Installation complete!"
echo ""
echo "Commands are available as /personas:<name> in Claude Code"
echo ""
echo "Alternative installation methods:"
echo "  Plugin marketplace: /plugin marketplace add schmitthub/claude-code-personas"
echo "  Local plugin:       claude --plugin-dir $SCRIPT_DIR"
echo ""
