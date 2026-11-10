# Aircraft-Grade Inter-Agent Communication Protocol (`AIRCRAFT_COMMUNICATION_PROTOCOL.md`)
## DO-178C / ARINC 653 Multi-Agent Communication & Data Sharing Standard

This document defines how autonomous subagents communicate, synchronize execution, and share data across the project lifecycle.

---

## 1. Core Operating Principles

1. **Zero Invisible State**:
   - Subagents must not rely on hidden memory or unrecorded conversational state.
   - All shared context, requirements, decisions, and evidence must be written to disk in version-controlled markdown files.
2. **ASD-STE100 Language Discipline**:
   - Messages must use active voice and approved vocabulary.
   - Maximum 20 words per sentence.
   - Ban semicolons in procedural steps. Avoid ambiguous idioms.
3. **ARINC 653 Space & Time Partitioning**:
   - Subagents operate in isolated workspaces to prevent concurrent mutation collisions.
   - Downstream tasks block strictly until upstream prerequisite tasks finish with exit code 0.

---

## 2. Inter-Agent Communication Channels

Subagents communicate via two primary mechanisms:

### Channel A: Direct Message Passing (`send_message`)
Used for reactive handoffs, status alerts, and dependency readiness notifications.

**Standard JSON Message Envelope**:
```json
{
  "sender_role": "deployer",
  "recipient_role": "evidence_auditor",
  "task_id": "TASK-DEPLOY-001",
  "message_type": "HANDOFF",
  "shared_artifacts": [
    "VERIFICATION_REPORT.md",
    "SUMMARY.md"
  ],
  "verification_evidence": {
    "command": "powershell.exe -File .\\verify.ps1",
    "exit_code": 0,
    "status": "PASSED"
  },
  "summary": "Completed portfolio deployment and remote push. Proceed to final verification audit."
}
```

**Permitted Message Types**:
- `HANDOFF`: Successful milestone completion and control pass.
- `REJECT`: Unmet acceptance criteria; rollback required.
- `ESCALATE`: Unexpected terminal blocker.
- `COMPLETE`: All graph tasks completed and verified.

---

## 3. Data Flow Architecture

```
┌────────────────────┐
│   Researcher       │ ── Writes ──► TASK_SPEC.md & GRAPH_SPEC.md
└────────────────────┘                      │
                                            ▼
┌────────────────────┐               Reads by Loop Coder
│   Loop Coder       │ ── Writes ──► Surgical Git Micro-Commits
└────────────────────┘                      │
                                            ▼
┌────────────────────┐               Verified by Auditor
│   Evidence Auditor │ ── Writes ──► VERIFICATION_REPORT.md & SUMMARY.md
└────────────────────┘
```
