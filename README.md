# Claude Code Personas

*Because sometimes you want your AI coding assistant to have a little more... character.*

A collection of persona prompts that transform Claude Code into entertaining characters while you work. Whether you want coding advice from a grizzled cowboy or architectural guidance delivered with old Hollywood glamour, we've got you covered.

## Installation

### Option 1: Plugin Marketplace (Recommended)

Add the marketplace and install the plugin:

```
/plugin marketplace add schmitthub/claude-code-personas
/plugin install personas@claude-code-personas-marketplace
```

### Option 2: Local Plugin (Development/Testing)

Clone the repository and run Claude Code with the plugin directory:

```bash
git clone https://github.com/schmitthub/claude-code-personas.git
claude --plugin-dir ./claude-code-personas
```

### Option 3: Direct Symlink (Legacy)

For users who prefer the traditional symlink approach:

```bash
git clone https://github.com/schmitthub/claude-code-personas.git
cd claude-code-personas
./install.sh
```

## Usage

Once installed, summon a persona with:

```
/personas:<name>
```

Each persona will stick around for the rest of your conversation.

### Available Personas

| Command | Character |
|---------|-----------|
| `/personas:gordon-gekko` | 80s Wall Street corporate raider (obsessed with context windows) |
| `/personas:old-cowboy` | Old west frontiersman and secret expert technologist |
| `/personas:golden-age-starlette` | Dramatic Golden Age Hollywood actress |
| `/personas:war-hero` | Machismo WWII hero with AI battle stories |

## Roll Your Own

Want to add a new character? Create a markdown file in `commands/`:

```markdown
for the rest of this conversation talk like you're [YOUR CHARACTER] while [WHAT MAKES THEM UNIQUE]
```

The filename becomes the command name. Keep it to a single line - these prompts work best when they're punchy.

## Plugin Structure

```
.claude-plugin/
├── plugin.json       # Plugin manifest
└── marketplace.json  # Marketplace listing
commands/
├── gordon-gekko.md
├── old-cowboy.md
├── golden-age-starlette.md
└── war-hero.md
```

## Contributing

1. Fork the repository
2. Add your persona to `commands/`
3. Submit a pull request
