# Operating Instructions for Coding Agents (`AGENTS.md`)

This document defines rules for autonomous coding agents implementing portfolio enhancements and UI/UX modernization.

## 1. Operating Rules
- Make all requested improvements surgically.
- Update moniker to "Rooo" in hero section.
- Deliver 2-3 tactile, meaningful enhancements per section (About, Work, Projects, Proof, Skills, Recognition, Contact).
- Upgrade mobile responsiveness, touch targets, safe-area insets, and smooth scroll mechanics.
- Preserve zero-build architecture (no node bundler dependencies; vanilla ES modules and clean CSS).
- Maintain WCAG 2.1 AA accessibility standards (color contrast >= 4.5:1, screen reader text, keyboard navigable).

## 2. Evidence-Based Verification
- Execute real verification commands before committing:
  ```powershell
  powershell.exe -File .\verify.ps1
  ```
- If verification fails, inspect the error and fix the root cause.
- Do not weaken tests or remove asset checks to make verification pass.

## 3. Workflow Steps
1. Ingest requirements and formulate `TASK_SPEC.md` & `GRAPH_SPEC.md`.
2. Implement surgical HTML/CSS/JS enhancements.
3. Verify with `.\verify.ps1`.
4. Micro-commit with ASD-STE100 message.
5. Push to GitHub remotes (`rohithprofile-remote`, `rohithport-remote`, etc.).
6. Update `VERIFICATION_REPORT.md` and `SUMMARY.md`.
