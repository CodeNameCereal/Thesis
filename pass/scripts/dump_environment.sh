#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
OUT="ENVIRONMENT.md"
cat > "$OUT" << EOF
# ENVIRONMENT.md
Generated: $(date -u +"%Y-%m-%dT%H:%M:%SZ")
Regenerate with: ./scripts/dump_environment.sh (run inside devcontainer)
## Container
- Dockerfile hash: $(sha256sum .devcontainer/Dockerfile | awk '{print $1}')
- Base image: $(grep -i '^FROM' .devcontainer/Dockerfile | head -1)
## OS / Arch
\`\`\`
$(uname -a)
\`\`\`
## clang / clangd
\`\`\`
$(clang-22 --version)
\`\`\`
\`\`\`
$(clangd-22 --version)
\`\`\`
## opt (LLVM tools)
\`\`\`
$(opt-22 --version)
\`\`\`
## rustc / cargo
\`\`\`
$(rustc --version --verbose)
\`\`\`
\`\`\`
$(cargo --version)
\`\`\`
## go
\`\`\`
$(go version)
\`\`\`
EOF
echo "Wrote $OUT"
