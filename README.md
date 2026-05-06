# granite-move-tablebase-scope

`granite-move-tablebase-scope` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies tablebase behavior through bounded scenario files, with conflict explanations and local-only command execution.

## Purpose

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Granite Move Tablebase Scope Review Notes

`stale` and `stress` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/granite-move-tablebase-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
