\# DebitMyData Core v1.2.0



\## ⚠️ Mandatory Upgrade



\*\*All users, miners, pools, exchanges, explorers, and service operators must upgrade to v1.2.0.\*\*



This release introduces a consensus update to permanently restore and secure the official DebitMyData blockchain following the recent chain fork.



\## What's New



\* Added a mandatory chain anchor at block \*\*70684\*\* to permanently reject the unintended fork.

\* Nodes running v1.2.0 will only synchronize with the official blockchain.

\* Existing installations that are currently on the wrong chain are automatically detected during startup.

\* Nodes found to be following the invalid chain are automatically rewound and will re-synchronize with the official network.

\* Manual deletion of blockchain data or manual reindexing is \*\*no longer required\*\* for affected users.

\* Improved logging during chain validation and automatic recovery to simplify troubleshooting.



\## Upgrade Notes



\* Wallet files are \*\*not\*\* affected.

\* Existing addresses and balances remain unchanged once synchronized with the official blockchain.

\* Nodes running previous versions may continue following the invalid fork and should be upgraded as soon as possible.



Thank you to everyone who reported the issue and helped stabilize the network.



