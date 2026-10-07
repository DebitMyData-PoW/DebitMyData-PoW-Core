# DebitMyData Core v1.3.3

This maintenance release rebases DebitMyData Core on Bitcoin Core v31.1, bringing in its bug fixes, including a privacy fix for private transaction broadcasting. All DebitMyData chain parameters and rules are unchanged.

### Changes

* Rebased on Bitcoin Core v31.1 (previously v31.0). Notable upstream fixes:
  * Private broadcast (`-privatebroadcast`): fixed an IP address leak where, under certain circumstances, connections were made over clearnet instead of the enabled privacy network (Tor/I2P).
  * Validation: corrected the lifetime of precomputed transaction data during block connection.
  * Chainstate database: the UTXO set database is now compacted regularly (outside of initial block download), and LevelDB seek compaction is disabled.
  * P2P: private broadcast connections no longer modify the address manager; the proxy is now used correctly when reconnecting from v2 to v1 transport.
  * Wallet: safer BDB wallet migration (final page LSN check) and more accurate input size estimation.
  * Settings: write failures are now detected before `settings.json` is replaced.
  * Build: fixed compilation with Boost 1.91 and newer.
* Fee rates shown in the smallest unit now use "data/vB" instead of "sat/vB", matching the nDMD (data) display unit.
* Fixed the default Tor onion port numbers shown in the documentation and example configuration file.

### Compatibility

* No consensus changes. v1.3.2 and v1.3.3 nodes accept the same blocks and remain fully in sync.
* No blockchain reindex required to upgrade.
* Existing wallets remain fully compatible.
* RPC JSON fields and values are unchanged. Only human-readable fee rate text now reads "data/vB".

### Upgrade

Updating is recommended for all users, especially those who use `-privatebroadcast` with Tor or I2P.
