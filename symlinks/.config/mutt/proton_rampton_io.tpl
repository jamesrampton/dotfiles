# This file should be copied into location with `op inject -i proton_rampton_io.tpl -o ~/.config/mutt/proton_rampton_io`.
# When in place, do not edit directly.
# See https://developer.1password.com/docs/cli/secrets-config-files/ for more info.

# other mail
set from="{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/email }}"
set real_name="James Rampton"
set imap_user="{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/username }}"
set imap_pass="{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/password }}"
set smtp_pass="{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/SMTP/password }}"
set smtp_url="smtps://{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/SMTP/username }}@{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/SMTP/SMTP server }}:{{ op://Personal/jibc3ykh2c4fpwy3hyggf646pa/SMTP/port number }}/"
set folder="~/.mail/proton_rampton_io"
set mbox_type=Maildir
set spoolfile="+INBOX"
set smtp_authenticators = 'gssapi:login'
set record="+Sent"
set postponed="+Drafts"
set trash="+Trash"
#mailboxes `find ~/.mail/proton_rampton_io/* -type d | grep -v "tmp\|new\|cur" | sed 's|/Users/jr/.mail/proton_rampton_io/|=\"|g' | sed 's|$|\"|g' | tr '\n' ' '`
mailboxes `find ~/.mail/proton_rampton_io/* -type d -name cur | sed 's|/Users/jr/.mail/proton_rampton_io/|=\"|g' | sed 's|/cur|\"|g' | tr '\n' ' '`

source muttrc
