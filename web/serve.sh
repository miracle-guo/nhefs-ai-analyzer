#!/usr/bin/env bash
# Launch a local HTTP server for the NHEFS dashboard.
# Usage: bash web/serve.sh
#   Then open http://localhost:8765/web/dashboard.html
set -euo pipefail
cd "$(dirname "$0")/.."
echo "Serving project at http://localhost:8765"
echo "Open http://localhost:8765/web/dashboard.html"
python3 -m http.server 8765
