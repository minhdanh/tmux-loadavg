# tmux-loadavg
A plugin to display load averages in tmux status bar.

## Installation
(Using [tpm](https://github.com/tmux-plugins/tpm))

Add this to `.tmux.conf`:

```
set -g @plugin 'minhdanh/tmux-loadavg'
```

Also add `#{loadavg}` to your left/right status bar. Then hit `<prefix> + I` to install the plugin.
That's it.

## Options
There's no options.
