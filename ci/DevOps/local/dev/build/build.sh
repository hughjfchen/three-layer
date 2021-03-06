#!/usr/bin/env bash
if ! type dirname > /dev/null 2>&1; then
    echo "Not even a linux or macOS, Windoze? We don't support it. Abort."
    exit 1
fi

. "$(dirname "$0")"/../../../common/common.sh

init_with_root_or_sudo "$0"

begin_banner "three-layer" "build build"

#set +u to workaround the nix script temperlately.
set +u
. $HOME/.nix-profile/etc/profile.d/nix.sh
set -u

if [ -f ${SCRIPT_ABS_PATH}/nix/three-layer.nix ]; then
    if [ -e ${SCRIPT_ABS_PATH}/../../dev ] && [ -e ${SCRIPT_ABS_PATH}/../../../local ]; then
        # this is a dev env, set something up
        if [ -e ${SCRIPT_ABS_PATH}/../../../../../ci ]; then
          SOURCE_ABS_PATH=${SCRIPT_ABS_PATH}/../../../../..
        else
          SOURCE_ABS_PATH=${SCRIPT_ABS_PATH}/../../../..
        fi

        # for doom-emacs
        [ -x ~/.emacs.d/bin/doom ] && echo "((nil . ((dante-target . \"three-layer\"))))" > ${SOURCE_ABS_PATH}/.dir-locals.el && nix-shell --run "~/.emacs.d/bin/doom env > /dev/null 2>&1" ${SCRIPT_ABS_PATH}/nix/shell.nix
        # always use cabal new-repl
        [ -f ${SOURCE_ABS_PATH}/cabal.project.local ] || touch ${SOURCE_ABS_PATH}/cabal.project.local
        # update cabal package database
        type -p cabal > /dev/null && cabal new-update > /dev/null
        # drop into a nix-shell
        nix-shell ${SCRIPT_ABS_PATH}/nix/shell.nix
    else
        nix-build -A three-layer-docker ${SCRIPT_ABS_PATH}/nix/default.nix
    fi
else
    info "No ${SCRIPT_ABS_PATH}/nix/three-layer.nix found, skip building"
fi

done_banner "three-layer" "build build"
