#!/usr/bin/env bash

source is_windows.sh

# Remove a link, cross-platform.
rmlink() {
    if is_windows; then
        # Again, Windows needs to be told if it's a file or directory.
        if [[ -d "$1" ]]; then
            rmdir "$1";
        else
            rm "$1"
        fi
    else
        rm "$1"
    fi
}
