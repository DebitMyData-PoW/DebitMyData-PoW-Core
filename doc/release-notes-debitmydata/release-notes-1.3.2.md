# DebitMyData Core v1.3.2

This maintenance release fixes a bug that prevented nodes from rebuilding their block index with `-reindex`.

### Changes

* Fixed `-reindex` crashing or failing on the genesis block.
  * Because the CSV (BIP113) and BIP34 rules are active from block 0 on DebitMyData, the node tried to apply them to the genesis block, which has no previous block. This caused an assertion crash or a `bad-cb-height` rejection, and the reindex could not complete.
  * The genesis block is now exempt from these contextual checks, as intended.

### Compatibility

* No consensus changes. v1.3.1 and v1.3.2 nodes accept the same blocks and remain fully in sync.
* No blockchain reindex required to upgrade.
* Existing wallets remain fully compatible.

### Upgrade

Updating is recommended, especially for node operators, pools, explorers and exchanges who may need to run `-reindex` or `-reindex-chainstate` in the future. Users who never reindex are not affected by this issue.
