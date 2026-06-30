\# ⚠ Mandatory Upgrade



\*\*All users, miners, pools, explorers and exchanges must upgrade to this release.\*\*



This release fixes a consensus issue introduced in the previous core version that caused the blockchain to split beginning at block \*\*70159\*\*.



\## What's fixed



\- Restores the intended \*\*35 DMD\*\* block reward.

\- Enforces the canonical blockchain from block \*\*70159\*\*.

\- Automatically detects and invalidates obsolete forks.

\- Nodes running an obsolete chain will automatically re-synchronize with the canonical blockchain.

\- Updated chain parameters (`minimumChainWork`, `defaultAssumeValid`, `chainTxData`).



\## Required action



\- Upgrade to \*\*v1.3.0\*\*.

\- If your node was running an affected version, allow it to re-synchronize with the canonical blockchain.

\- Pools, exchanges, explorers and services should upgrade immediately.



\## Previous releases



Versions \*\*v1.2.0\*\* and \*\*v1.2.1\*\* are obsolete due to a consensus issue and should no longer be used.



We sincerely apologize for the inconvenience and thank everyone for their patience and continued support while this issue was being resolved.

