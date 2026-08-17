#!/bin/bash
# CNS OMEGA v3 - Public verification (cryptographic integrity, no internals needed).
# Recomputes SHA-256 of each sealed file, reconstructs the Merkle root, and compares
# it against the sealed root. Any single-bit change is detected.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
echo "============================================================"
echo "  CNS SOVEREIGN KERNEL - OMEGA v3 - PUBLIC VERIFICATION"
echo "  Do not trust the operator. Trust the mathematics."
echo "============================================================"
python3 "$HERE/seals/validate_external_package.py"
echo ""
echo "  You can also independently recompute any telemetry source:"
echo "    shasum -a 256 telemetry/raw/<file>"
echo "  and compare it against the SHA-256 listed in telemetry/TELEMETRY_REPORT.txt"
echo "============================================================"
