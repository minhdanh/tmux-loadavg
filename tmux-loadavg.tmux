#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

loadavg="#($CURRENT_DIR/scripts/loadavg.sh)"
loadavg_interpolation="\#{loadavg}"

main() {
    status_right=$(tmux show-option -gqv "status-right")
    status_left=$(tmux show-option -gqv "status-left")

    status_right=${status_right/$loadavg_interpolation/$loadavg}

    status_left=${status_left/$loadavg_interpolation/$loadavg}

    tmux set-option -gq "status-right" "$status_right"
    tmux set-option -gq "status-left" "$status_left"
}
main
