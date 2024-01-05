# This file should be copied into location with `op inject -i proton_jamesrampton_com.tpl -o ~/.config/mutt/proton_jamesrampton_com`.
# When in place, do not edit directly.
# See https://developer.1password.com/docs/cli/secrets-config-files/ for more info.

# personal mail
set from="{{ op://Personal/infehogghcnvlicddt4ggmb6ly/email }}"
set real_name="James Rampton"
set imap_user="{{ op://Personal/infehogghcnvlicddt4ggmb6ly/username }}"
set imap_pass="{{ op://Personal/infehogghcnvlicddt4ggmb6ly/password }}"
set smtp_pass="{{ op://Personal/infehogghcnvlicddt4ggmb6ly/SMTP/password }}"
set smtp_url="smtps://{{ op://Personal/infehogghcnvlicddt4ggmb6ly/SMTP/username }}@{{ op://Personal/infehogghcnvlicddt4ggmb6ly/SMTP/SMTP server }}:{{ op://Personal/infehogghcnvlicddt4ggmb6ly/SMTP/port number }}/"
set folder="~/.mail/proton_jamesrampton_com"
set mbox_type=Maildir
set spoolfile="+INBOX"
set smtp_authenticators = 'gssapi:login'
set record="+Sent"
set postponed="+Drafts"
set trash="+Trash"
#mailboxes `find ~/.mail/proton_jamesrampton_com/* -type d | grep -v "tmp\|new\|cur" | sed 's|/Users/jr/.mail/proton_jamesrampton_com/|=\"|g' | sed 's|$|\"|g' | tr '\n' ' '`
mailboxes `find ~/.mail/proton_jamesrampton_com/* -type d -name cur | sed 's|/Users/jr/.mail/proton_jamesrampton_com/|=\"|g' | sed 's|/cur|\"|g' | tr '\n' ' '`

source muttrc
