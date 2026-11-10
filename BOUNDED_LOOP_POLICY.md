# Bounded Loop Policy (`BOUNDED_LOOP_POLICY.md`)

This policy enforces measured coding iterations based on Karpathy's autoresearch methodology.
Every iteration must test a discrete hypothesis and record a deterministic keep-or-reject decision.

## 1. Eight-Step Iteration Cycle
1. Inspect codebase and previous iteration ledger.
2. Select one minimal justified change.
3. Implement code edit.
4. Execute `powershell.exe -File .\verify.ps1`.
5. Check output against acceptance criteria.
6. Commit change if all tests pass.
7. Revert via `git reset --hard` if tests fail.
8. Record decision and commit SHA in `VERIFICATION_REPORT.md`.

## 2. Limits
- Max iterations per task: 3
- Max token budget: 50000
- Exit code must be 0 for every keep decision.
