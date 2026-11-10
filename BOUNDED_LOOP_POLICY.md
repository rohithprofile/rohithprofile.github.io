# Bounded Loop Policy (`BOUNDED_LOOP_POLICY.md`)

This policy enforces measured coding iterations based on Karpathy's autoresearch methodology.
Every iteration must test a discrete hypothesis and record a deterministic keep-or-reject decision.

## 1. The Eight-Step Iteration Cycle
Every autonomous iteration must execute these steps in order:
1. **Inspect**: Read the current codebase and previous iteration notes.
2. **Select**: Choose one small, justified change.
3. **Implement**: Apply the minimal code edit.
4. **Execute**: Run the specified verification command (`powershell.exe -File .\verify.ps1`).
5. **Compare**: Check test output against the acceptance criteria.
6. **Keep**: Commit the change to Git if all tests pass.
7. **Recover**: Discard unverified edits if tests fail (`git reset --hard`).
8. **Record**: Log the decision, diff, and test output in `VERIFICATION_REPORT.md`.

## 2. Decision Rules (Keep or Reject)
- **KEEP Criteria**:
  - The verification command exits with code `0`.
  - All declared acceptance criteria pass.
  - No existing assets break.
- **REJECT Criteria**:
  - The test command fails or times out.
  - New errors appear in stdout or stderr.
  - The working tree contains unverified changes.

## 3. Strict Prohibitions
- Do not edit verification assertions to make failing files pass.
- Do not ignore linter warnings or broken image links.
- Do not accept natural-language statements as proof of completion.

## 4. Execution Limits
- Maximum iterations per task: `3`.
- Maximum token budget per task: `50000`.
- Maximum retry count after failure: `1`.
