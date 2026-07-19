# Public Release Checklist

Use this checklist before publishing code, documentation, demos, screenshots, datasets, models, releases, or examples under the GenixBit name.

## 1. Ownership and permission

- [ ] GenixBit owns the material or has written permission to publish it.
- [ ] The release does not contain client-owned source code, designs, documents, datasets, or business logic.
- [ ] Contracts, NDAs, employment terms, third-party licences, and contributor permissions allow publication.
- [ ] Branding, logos, screenshots, names, testimonials, and case-study references are approved for public use.

## 2. Secrets and sensitive data

- [ ] No API keys, passwords, tokens, certificates, private keys, cookies, connection strings, or `.env` values are present.
- [ ] Git history, branches, tags, releases, issues, CI logs, artefacts, and sample files were checked—not only the latest working tree.
- [ ] No customer records, personal information, analytics identifiers, internal URLs, account numbers, or private contact details are included.
- [ ] Any previously exposed credential has been revoked or rotated rather than merely deleted from the latest commit.

## 3. Safe examples and data

- [ ] Examples use synthetic, sample, or explicitly approved public data.
- [ ] Sample values cannot be mistaken for working credentials or production endpoints.
- [ ] Screenshots are checked for browser tabs, notifications, email addresses, local usernames, file paths, and hidden metadata.
- [ ] Model prompts, outputs, and evaluation data do not reveal private source material.

## 4. Accuracy and responsible claims

- [ ] Product capabilities are described accurately and can be demonstrated.
- [ ] No fake customers, fabricated metrics, invented partnerships, unsupported rankings, or misleading testimonials are used.
- [ ] Forecasts, recommendations, AI outputs, ESG information, and scenario results identify assumptions and limitations.
- [ ] Directional models are not presented as guarantees, certifications, legal advice, financial advice, or professional determinations.
- [ ] Human review requirements are stated where appropriate.

## 5. Security and privacy

- [ ] Authentication and authorisation boundaries have been reviewed.
- [ ] Public endpoints do not expose administrative actions, private data, debug information, or unrestricted internal services.
- [ ] Dependencies, installation scripts, release workflows, downloaded assets, and update sources have been reviewed.
- [ ] CORS, file upload, redirects, webhooks, logging, error handling, and rate limits are safe for the intended release.
- [ ] `SECURITY.md` provides a private vulnerability-reporting route.

## 6. Repository quality

- [ ] `README.md` explains the project, audience, status, installation, use, limitations, and support path.
- [ ] The repository has an appropriate licence and correct legal company name.
- [ ] `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and pull-request guidance are present when community contributions are accepted.
- [ ] Generated files, local configuration, build artefacts, caches, and secrets are covered by `.gitignore`.
- [ ] Examples and commands were tested from a clean environment.
- [ ] Broken links, placeholder text, stale screenshots, and unsupported compatibility claims were removed.

## 7. Release and maintenance

- [ ] The public release has a clear owner or maintainer.
- [ ] Versioning, changelog, support expectations, and deprecation approach are defined.
- [ ] CI checks pass and release artefacts match the reviewed source.
- [ ] A rollback, correction, or takedown process exists for accidental disclosure.
- [ ] Public issues and contribution channels will be monitored.

## Final approval

Record the release name, version or commit, reviewer, approval date, and any accepted limitations before publication.

| Field | Value |
|---|---|
| Release | |
| Commit or version | |
| Reviewer | |
| Approval date | |
| Accepted limitations | |

A checklist reduces risk but does not replace legal, security, privacy, or client-specific review when those are required.