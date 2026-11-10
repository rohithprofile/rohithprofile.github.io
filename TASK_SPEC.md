# Task Specification (`TASK_SPEC.md`)

## 1. Task Identification
- Task ID: `TASK-ENHANCE-001`
- Feature Name: `Mobile UI/UX Modernization, Scroll Physics & Section Enhancements`
- Assigned Agent: `acp:antigravity`
- Target Branch: `main`
- Maximum Iterations: `3`
- Maximum Token Budget: `50000`

## 2. Objective
Replace moniker with 'Rooo', modernize scroll physics and mobile navigation, implement 2-3 tactile enhancements per section (hero status pill, work tech pills, project interactive filter chips, proof feedback indicators, skills tag cloud, award badges, one-click email copy), and verify across all viewport dimensions.

## 3. Scope Boundaries
### In-Scope Files
- `index.html` (moniker update, section badges, copy buttons, filter chips)
- `style.css` (scroll snapping, mobile safe areas, frosted glass dock, micro-animations)
- `main.js` (scroll progress, filter logic, copy-to-clipboard toast)
- `verify.ps1`
- `VERIFICATION_REPORT.md`
- `SUMMARY.md`

### Out-of-Scope Files
- `ocean.js` (core ASCII simulation algorithms remain intact)
- `assets/Maheshwaram_Rohith_Resume.pdf`

## 4. Acceptance Criteria
- [ ] Text reads: `you can call me "Rooo" · hyderabad`
- [ ] 2-3 enhancements added to each section (About, Work, Projects, Proof, Skills, Recognition, Contact)
- [ ] Smooth scrolling with touch momentum and progress indicator
- [ ] Mobile responsive across small screens (320px - 640px) with safe-area padding
- [ ] `powershell.exe -File .\verify.ps1` exits with code 0
- [ ] Micro-committed and pushed to GitHub remotes.
