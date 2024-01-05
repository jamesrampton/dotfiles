# This file should be copied into location with `op inject -i work.tpl -o ~/.config/mutt/work`.
# When in place, do not edit directly.
# See https://developer.1password.com/docs/cli/secrets-config-files/ for more info.

# work mail
set from="{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/email }}"
set real_name="James Rampton"
set imap_user="{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/username }}"
set imap_pass="{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/password }}"
set smtp_pass="{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/SMTP/password }}"
set smtp_url="smtps://{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/SMTP/username }}@{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/SMTP/SMTP server }}:{{ op://work_1/b5mxcwxkioflytu23iiisuqau4/SMTP/port number }}/"
set folder="~/.mail/work"
set mbox_type=Maildir
set spoolfile="+INBOX"
set smtp_authenticators = 'gssapi:login'
set record="+Sent"
set postponed="+Drafts"
set trash="+Trash"
mailboxes `find ~/.mail/work/* -maxdepth 0 -type d | grep -v "tmp\|new\|cur" | sed 's|/Users/jr/.mail/work/|=\"|g' | sed 's|$|\"|g' | tr '\n' ' '`

source muttrc
