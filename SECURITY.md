# Security Policy

GenixBit Labs Private Limited takes the security of this project and its users seriously.

## Supported versions

Security fixes are applied to the latest version on the default branch and, when practical, to the latest published release. Older forks, copied agent files, third-party integrations, and modified distributions may not receive fixes from GenixBit.

## Reporting a vulnerability

Please do **not** disclose a suspected vulnerability through a public GitHub issue, discussion, pull request, or social-media post.

Use GitHub's **Security** tab to open a private security advisory. When that option is unavailable, email **info@genixbit.com** with the subject:

`Security report: GenixBit/agency-agents`

Include only the information needed to understand and reproduce the issue:

- A clear description of the vulnerability and its potential impact
- The affected file, version, release, script, installer, or integration
- Reproduction steps or a minimal proof of concept
- Relevant operating system and tool versions
- Suggested mitigation, when available
- Your preferred contact details and disclosure expectations

Do not include real credentials, customer data, personal information, production tokens, or destructive payloads. Use redacted examples and test environments.

## Response process

We aim to:

1. Acknowledge a complete report within five business days.
2. Validate the issue and determine its severity and affected scope.
3. Prepare a fix or mitigation and coordinate responsible disclosure when appropriate.
4. Credit the reporter when requested and legally permitted.

Response time may vary for incomplete reports, third-party vulnerabilities, or issues outside this repository's control.

## Scope

This repository contains Markdown-based agent definitions, installation and conversion scripts, release assets, and integrations for supported AI coding tools.

Examples of issues generally in scope include:

- Installer or update mechanisms that can execute untrusted content
- Command injection, path traversal, or unsafe file writes in project scripts
- Supply-chain risks introduced by project-controlled release assets
- Accidental exposure of secrets or sensitive project information
- Agent instructions that create a direct, reproducible security vulnerability in supported integrations
- Prompt-injection patterns deliberately hidden inside contributed agent definitions

The following are generally outside scope unless they reveal a project-controlled vulnerability:

- Social engineering, spam, denial-of-service testing, or physical attacks
- Vulnerabilities exclusively in third-party products or user-modified copies
- Reports based only on automated scanner output without reproducible impact
- Requests for credentials, private repositories, customer information, or internal systems

## Contributor security requirements

- Never commit API keys, passwords, tokens, private certificates, customer data, or production configuration.
- Agent Markdown files must not contain concealed executable payloads or instructions designed to override user control.
- Shell scripts and release workflows require careful review before merging.
- Dependencies, downloaded assets, and update sources must be pinned or verified where practical.
- Test security-sensitive changes only in systems and environments you are authorised to use.

## Safe research

Security testing must use accounts, environments, and data you own or are explicitly authorised to test. Do not disrupt services, access unrelated data, degrade other users' systems, or violate applicable law.

Thank you for helping us keep the project and its community secure.