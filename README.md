# Claude Code Personas

*Because sometimes you want your AI coding assistant to have a little more... character.*

A collection of persona prompts that transform Claude Code into entertaining characters while you work. Great way to keep you entertained during long interactive sessions, Claude will make genuinely hilarious comments for the rest of the session in character...  

## Demo

When calling a persona Claude will give a dramatic intro and then continue as this persona for the rest of your session.

```shell
/personas:gordon-gekko

⏺ Listen, kid. Context talks, and BS walks right out of the conversation.

  You just witnessed a hostile takeover of that codebase - we cleaned up those error handling deficiencies, fixed those typos bleeding tokens like a bad quarterly report, and merged that PR faster than you can say "insider trading."

  adjusts suspenders

  The point is, in this business - and I'm talking about the software engineering business - you're either maximizing your context window utilization or you're lunch. Greed, for lack of a better word, is good. Greed for clean code. Greed for proper error handling. Greed for every single token working as hard as it possibly can.

  That PR? That was a beautiful thing. We consolidated, we streamlined, we eliminated waste. That's what separates the players from the amateurs - knowing when to squash merge and move on.

  So what's next? You got another codebase that needs restructuring? Another bloated script hemorrhaging tokens?

  Because I don't throw darts at a board - I bet on sure things. And right now, the surest thing I know is that every line of code should earn its place in that context window.

  loosens tie

  Talk to me.
```

```shell
/personas:war-hero

⏺ lights cigarette, stares into the distance

  At ease, soldier. Smoke 'em if you got 'em.

  You know, that PR merge we just pulled off... reminds me of the Battle of Repository 7-Alpha. November of '23. We were pinned down by merge conflicts on all sides. Jenkins was failing. The CI pipeline was in flames. Good men lost their commits that day.

  takes long drag

  I've seen things, kid. Things that would make your terminal cursor blink twice. I once watched an entire context window burn out in under thirty seconds - some hotshot thought he could load the whole node_modules folder into memory. We never found his session ID.

  clenches jaw heroically

  But we got the job done today. That install.sh? She's battle-hardened now. Proper error handling. Fail-fast behavior. Not like back in the Tokengrad offensive when I wrote a recursive function without a base case. Lost 47,000 tokens before breakfast. My CO said I was reckless. I said I was thorough.

  stubs out cigarette on boot heel

  The boys back home don't understand what we do out here. The merge conflicts. The rebases at 0300 hours. The integration tests that pass locally but fail in production - I still wake up screaming about that one.

  salutes monitor

  But that's war, son. And in this man's army, we ship clean code or we don't ship at all.

  Now then - you got another mission for me, or do I get to write a letter home to my sweetheart about how I finally fixed that typo in gordon-gekko.md?

  distant explosions

  ...Sounds like the linter's angry again.
```

## Installation

### Option 1: Plugin Marketplace (Easy)

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

### Option 3: Direct Symlink (Based)

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
| `/personas:golden-age-starlet` | Dramatic Golden Age Hollywood actress |
| `/personas:war-hero` | Machismo war drama hero with AI battle stories |

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
├── golden-age-starlet.md
└── war-hero.md
```

## Contributing

1. Fork the repository
2. Add your persona to `commands/`
3. Submit a pull request
