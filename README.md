# Every Marketplace

The official plugin marketplace for Claude Code extensions. Get access to AI-powered development tools that embody the compounding engineering philosophy.

## Quick Start

### Add the Marketplace

Add this marketplace to your Claude Code configuration:

```bash
# Edit your Claude Code settings
claude config edit
```

Add the marketplace to your `marketplaces` array:

```json
{
  "marketplaces": [
    {
      "name": "every-marketplace",
      "source": "https://github.com/EveryInc/every-marketplace"
    }
  ]
}
```

Or use the CLI:

```bash
claude marketplace add https://github.com/EveryInc/every-marketplace
```

### Install the Compounding Engineering Plugin

Once the marketplace is added, install the plugin:

```bash
claude plugin install compounding-engineering
```

Or install directly from the repository:

```bash
claude plugin install https://github.com/EveryInc/every-marketplace/tree/main/plugins/compounding-engineering
```

## Available Plugins

### Compounding Engineering

AI-powered development tools that get smarter with every use. Includes 21 specialized agents, 24 commands, 5 workflows, and 2 automated hooks.

**Features:**
- Code review with multiple expert perspectives
- Automated testing and bug reproduction
- PR management and parallel comment resolution
- Documentation generation and maintenance
- Security, performance, and architecture analysis

[View Plugin Details](./plugins/compounding-engineering/README.md)

## Philosophy

This marketplace features plugins that embody **compounding engineering**: each unit of engineering work makes subsequent units of work easier—not harder.

Every plugin follows the four-step process:
1. **Plan** → Break down tasks with clear steps
2. **Delegate** → Execute with AI assistance
3. **Assess** → Test thoroughly and verify quality
4. **Codify** → Record learnings for next time

## Support

- [Report Issues](https://github.com/EveryInc/every-marketplace/issues)
- [View Documentation](https://github.com/EveryInc/every-marketplace/wiki)

Built with [Claude Code](https://claude.ai/code) by [Every Inc.](https://github.com/EveryInc)
