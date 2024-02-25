#!/bin/sh

killall mbsync &>/dev/null
/opt/homebrew/bin/mbsync -c ~/.config/isync/mbsyncrc -a -q
/opt/homebrew/bin/notmuch new

sleep 20

killall mbsync &>/dev/null
/opt/homebrew/bin/mbsync -c ~/.config/isync/mbsyncrc -a -q
/opt/homebrew/bin/notmuch new

sleep 20

killall mbsync &>/dev/null
/opt/homebrew/bin/mbsync -c ~/.config/isync/mbsyncrc -a -q
/opt/homebrew/bin/notmuch new
