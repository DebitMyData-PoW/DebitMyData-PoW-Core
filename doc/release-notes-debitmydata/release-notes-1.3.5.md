# DebitMyData Core v1.3.5

This maintenance release addresses Linux build compatibility issues and corrects conflicting Tor and RPC port configurations.

### Changes

- **Linux build compatibility:** Corrected executable file permissions for scripts and build utilities.
- **Line endings:** Normalized affected source and script files to Unix (LF) format to prevent execution and compilation issues on Linux.
- **Network configuration:** Corrected conflicting Tor and RPC port assignments.
- **Version metadata:** Updated Core version references and documentation to v1.3.5.

### Compatibility

- No consensus changes are intended in this maintenance release.
- Existing wallet and blockchain data formats are intended to remain unchanged.

### Upgrade

Updating is recommended for users compiling DebitMyData Core on Linux or experiencing Tor/RPC port conflicts.
