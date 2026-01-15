#!/bin/bash
set -euo pipefail

# Check if Claude CLI is installed
if ! command -v claude &> /dev/null; then
    echo "Error: claude is not installed or not in PATH"
    exit 1
fi

# Verify claude command executes successfully
if ! claude --version &> /dev/null; then
    echo "Error: claude command failed to run"
    exit 1
fi

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMANDS_DIR="$SCRIPT_DIR/commands"

# Validate source commands directory exists
if [ ! -d "$COMMANDS_DIR" ]; then
    echo "Error: Commands directory not found at $COMMANDS_DIR"
    echo "Make sure you're running this script from the repository root"
    exit 1
fi

# Target directory
TARGET_DIR="$HOME/.claude/commands"

# Check if target directory exists, create if it doesn't
if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating directory: $TARGET_DIR"
    if ! mkdir -p "$TARGET_DIR"; then
        echo "Error: Failed to create directory $TARGET_DIR"
        echo "Check that you have write permissions to $HOME/.claude/"
        exit 1
    fi
fi

# Create symlink (will overwrite existing symlink if present)
echo "Creating symlink from $COMMANDS_DIR to $TARGET_DIR/personas"
if ! ln -sf "$COMMANDS_DIR" "$TARGET_DIR/personas"; then
    echo "Error: Failed to create symlink at $TARGET_DIR/personas"
    exit 1
fi

echo ""
echo "Installation complete!"
echo ""
echo "Commands are available as /personas:<name> in Claude Code"
echo ""
echo "Alternative installation methods:"
echo "  Plugin marketplace: /plugin marketplace add schmitthub/claude-code-personas"
echo "  Local plugin:       claude --plugin-dir $SCRIPT_DIR"
echo ""
