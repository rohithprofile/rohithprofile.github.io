# Task Graph Specification (`GRAPH_SPEC.md`)

```mermaid
flowchart TD
    A["TASK-001: Verification Harness"] --> B["TASK-002: Moniker & Content Enhancements in index.html"]
    B --> C["TASK-003: CSS Polish (Smooth Scroll, Mobile Insets, Frosted Dock)"]
    C --> D["TASK-004: JS Features (Interactive Filters, Copy Email Toast)"]
    D --> E["TASK-005: Verification & Micro-Commit"]
    E --> F["TASK-006: GitHub Remote Deployment"]
```

## Node Specifications
- **TASK-001**: Verification harness setup (`verify.ps1`).
- **TASK-002**: Update moniker to "Rooo" and add section features in `index.html`.
- **TASK-003**: Enhance `style.css` for mobile, scroll easing, and visual cards.
- **TASK-004**: Add project filters and interactive clipboard helper in `main.js`.
- **TASK-005**: Execute verification test and verify exit code 0.
- **TASK-006**: Micro-commit and push to `rohithprofile-remote` and mirror remotes.
