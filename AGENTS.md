# Operating Instructions for Coding Agents (`AGENTS.md`)

This document defines rules for autonomous coding agents operating on the Maheshwaram Rohith portfolio codebase.
Read these rules before you change any file.

## 1. Operating Rules
- Make only the requested changes.
- Do not introduce a build step (this is a zero-build static site).
- Keep all modifications surgical, accessible, and responsive.
- Follow existing styles in `style.css` using CSS custom properties (`--bg`, `--text`, `--accent`, etc.).
- Preserve all existing comments and documentation.
- Maintain WCAG 2.1 AA accessibility standards for contrast, keyboard navigation, and ARIA attributes.

## 2. Evidence-Based Verification
- A text claim is not proof of success.
- Execute real verification commands before committing:
  ```powershell
  powershell.exe -File .\verify.ps1
  ```
- If verification fails, inspect the error and fix the root cause.
- Do not weaken tests or remove asset checks to make verification pass.

## 3. Workflow Steps
Follow these steps in each iteration:
1. Read `TASK_SPEC.md` and `GRAPH_SPEC.md`.
2. Inspect target files.
3. Plan the smallest change that satisfies the goal.
4. Edit target files.
5. Execute the test command (`.\verify.ps1`).
6. Verify output shows exit code 0.
7. Micro-commit to Git with an ASD-STE100 message.
8. Update `VERIFICATION_REPORT.md`.
9. Deliver final structured output contract.

## 4. Final Output Contract
When the iteration finishes, return only this JSON object:
```json
{
  "success": true,
  "summary": "Short explanation of the verified change",
  "key_changes_made": [
    "path/to/file: Description of the exact edit"
  ],
  "key_learnings": [
    "Important facts or constraints discovered during verification"
  ]
}
```

## 5. Safety and Security Constraints
- Never commit credentials, passwords, or personal access tokens.
- Never force push to remote branches without explicit instruction.
- Ensure all relative URLs work on both custom domain / root (`/`) and sub-path (`/portfolio/`).
