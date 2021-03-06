#!/usr/bin/env bash
if ! type dirname > /dev/null 2>&1; then
    echo "Not even a linux or macOS, Windoze? We don't support it. Abort."
    exit 1
fi

. "$(dirname "$0")"/../../common/common.sh

init_with_root_or_sudo "$0"

begin_banner "three-layer" "Cont. UnDeploy"

# I don't think we need to undo the top-level finishing and prepare
#${SCRIPT_ABS_PATH}/../../../../DevOps/local/dev/unfinishing.sh
#${SCRIPT_ABS_PATH}/../../../../DevOps/local/dev/deploy/unfinishing.sh

${SCRIPT_ABS_PATH}/unfinishing.sh
${SCRIPT_ABS_PATH}/deploy/unfinishing.sh
${SCRIPT_ABS_PATH}/deploy/undeploy.sh
${SCRIPT_ABS_PATH}/deploy/unprepare.sh
${SCRIPT_ABS_PATH}/unprepare.sh

# I don't think we need this either
#${SCRIPT_ABS_PATH}/../../../../DevOps/local/dev/deploy/unprepare.sh
#${SCRIPT_ABS_PATH}/../../../../DevOps/local/dev/unprepare.sh

done_banner "three-layer" "Cont. UnDeploy"
