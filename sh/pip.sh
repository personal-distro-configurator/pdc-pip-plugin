#!/bin/bash

function pip_install() {
    log_info "Running PIP install..." && log_info
    pipplugin_test_command "pip"
    sudo pip install "${pdcyml_pip_install[*]}"
    log_info "PIP Install executed with success!" && log_info
}

function pipplugin_confirm() {
    [[ "$pdcyml_pip_install" != "" ]] && log_info "# PIP Install: ${pdcyml_pip_install[*]}" && log_info
}

function pipplugin_test_command() {
    local command=$1

    hash "$command" 2>/dev/null ||
    (
        log_info "Command ${command} not found. Abort installation? [y/N]" && read -r option

        if [[ $option == 'Y' ]] || [[ $option == 'y' ]] || [[ $option != '' ]]; then
            log_info "Canceled by user"
            exit 1
        fi
    )
}
