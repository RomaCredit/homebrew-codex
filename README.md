# Provider Switchers: Homebrew Tap

Independent community tools for Codex Desktop and Claude Code. The tap retains
the `RomaCredit/codex` name for existing users; it now contains both separate tools.

## Install

```bash
brew tap RomaCredit/codex
brew install codex-provider-switcher
cps --version

brew install RomaCredit/codex/claude-provider-switcher
ccs --version
```

| Formula | Scope | Version |
| --- | --- | --- |
| [codex-provider-switcher](https://github.com/RomaCredit/codex-provider-switcher) | Codex local provider profiles and Desktop history metadata | 0.3.2 |
| [claude-provider-switcher](https://github.com/RomaCredit/claude-provider-switcher) | Claude Code profiles, credentials, backups, and conservative project diagnostics | 0.1.6 |

Formulas use immutable source tags, verified SHA256 hashes, and isolated Python
environments. Installation does not switch providers or modify client history.
The tools do not share credentials. They do not migrate cloud conversations.
Claude's formula installs from GitHub. The same tool is also
[available on PyPI](https://pypi.org/project/claude-provider-switcher/);
the Homebrew installation does not depend on that channel.

```bash
brew update
brew upgrade RomaCredit/codex/codex-provider-switcher
brew upgrade RomaCredit/codex/claude-provider-switcher
```

CI installs and tests both formulas on macOS/Linux. The tap contains no telemetry
code; Homebrew's own analytics policy is separate.
