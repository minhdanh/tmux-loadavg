#!/usr/bin/env bash

os=$(uname -s)
case $os in
    *Linux*)
        cat /proc/loadavg | awk '{print "#[fg=blue]" $1 " #[fg=yellow]"$2" #[fg=brightred,nobold]"$3 "#[fg=default,nobright]"}'
        ;;
    *Darwin*)
        sysctl -q -n vm.loadavg | awk '{print "#[fg=blue]" $2 " #[fg=yellow]"$3" #[fg=brightred,nobold]"$4 "#[fg=default,nobright]"}'
        ;;
esac
