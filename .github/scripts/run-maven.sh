
#!/usr/bin/env bash

set -euo pipefail

echo "=== Run Profile ==="
echo "TEST_PROFILE: ${TEST_PROFILE:-}"
echo "EXPORT_TEMPLATE: ${EXPORT_TEMPLATE:-}"
echo "CF_RUNMODE: ${CF_RUNMODE:-}"
echo "POM_PROFILE: ${POM_PROFILE:-}"

echo "===================="

mvn -version
