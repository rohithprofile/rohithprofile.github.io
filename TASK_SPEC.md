# Task Specification (`TASK_SPEC.md`)

## 1. Task Identification
- Task ID: `TASK-DEPLOY-001`
- Feature Name: `Deploy Portfolio to GitHub & GitHub Pages with Agentic Matrix`
- Assigned Agent: `acp:antigravity`
- Target Branch: `main`
- Maximum Iterations: `3`
- Maximum Token Budget: `50000`

## 2. Objective
Configure the portfolio for GitHub deployment, create the new public repository `rohith2157/portfolio`, deploy to `rohith2157.github.io` and GitHub Pages, and scaffold the in-tree Agentic Engineering matrix.

## 3. Scope Boundaries
### In-Scope Files
- `README.md`
- `verify.ps1`
- `AGENTS.md`
- `TASK_SPEC.md`
- `GRAPH_SPEC.md`
- `.gnhf/graph.json`
- `BOUNDED_LOOP_POLICY.md`
- `AIRCRAFT_COMMUNICATION_PROTOCOL.md`
- `VERIFICATION_REPORT.md`
- `SUMMARY.md`

### Out-of-Scope Files
- `index.html` (core layout remains intact)
- `ocean.js`
- `proof.js`
- `assets/Maheshwaram_Rohith_Resume.pdf`

## 4. Required Inputs
- Existing static assets: `index.html`, `style.css`, `main.js`, `ocean.js`, `proof.js`.
- GitHub authenticated CLI (`gh.exe`) under account `rohith2157`.
- Universal templates from `C:\Users\Rohith\agentic-sandbox`.

## 5. Expected Outputs
- New GitHub repository `rohith2157/portfolio` created and pushed.
- Root GitHub Pages site `rohith2157/rohith2157.github.io` updated and deployed.
- Verified test script `verify.ps1` exiting with code 0.
- All 7 in-tree Agentic Engineering markdown files populated.
- Continuous micro-commits logged in `VERIFICATION_REPORT.md`.

## 6. Acceptance Criteria
- [x] Verification script `verify.ps1` passes with exit code 0.
- [x] `README.md` points to active deployment URLs.
- [x] Repository `rohith2157/portfolio` exists on GitHub and holds all code.
- [x] `rohith2157/rohith2157.github.io` receives the latest portfolio commit.
- [x] Plaintext passwords provided by the user are never stored in git history.

## 7. Verification Commands
```powershell
powershell.exe -File .\verify.ps1
& "C:\Users\Rohith\AppData\Local\Programs\GitHubCLI\bin\gh.exe" repo view rohith2157/portfolio
```

## 8. Failure Behavior
- If GitHub API fails, check token scopes and retry once.
- If asset verification fails, verify relative paths before retrying.
