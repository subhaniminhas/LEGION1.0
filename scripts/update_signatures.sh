#!/bin/bash
# LEGION Signature Auto-Update
# using a git signature pool 

SIGNATURE_DIR="/etc/legion/signatures"
# GIT_REPO="https://github.com/legion-malware/signatures.git"
GIT_REPO="https://github.com/Da2dalus/The-MALWARE-Repo.git"
# Other public malware signature repositories:
GIT_REPO="https://github.com/stamparm/maltrail.git"
GIT_REPO="https://github.com/Neo23x0/signature-base.git"
GIT_REPO="https://github.com/Yara-Rules/rules.git"

SIGNATURE_FILE="/etc/legion/signatures/signatures.txt"

echo "[*] Updating signatures..."
if [ -d "$SIGNATURE_DIR" ]; then
    cd "$SIGNATURE_DIR" && git pull
else
    git clone "$GIT_REPO" "$SIGNATURE_DIR" # clone
fi

echo "[*] Update complete."