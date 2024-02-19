# Nushell Environment Config File

def create_left_prompt [] {
    let path_segment = if (is-admin) {
        $"(ansi red_bold)($env.PWD)"
    } else {
        $"(ansi green_bold)($env.PWD)"
    }

    $path_segment
}

def create_right_prompt [] {
    let time_segment = ([
        (date now | format date '%m/%d/%Y %r')
    ] | str join)

    $time_segment
}

# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = {|| create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = {|| "〉" }
$env.PROMPT_INDICATOR_VI_INSERT = {|| ": " }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "〉" }
$env.PROMPT_MULTILINE_INDICATOR = {|| "::: " }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
}

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')
$env.PATH = [
    "/Library/Apple/bin",
    "/Library/Apple/usr/bin",
    "/Library/TeX/texbin",
    "/Users/jr/.bun/bin",
    "/Users/jr/.cargo/bin",
    "/Users/jr/.local/bin",
    "/Users/jr/.nvm/versions/node/v14.17.6/bin",
    "/Users/jr/dotfiles/bin",
    "/Users/jr/.surrealdb/",
    "/bin",
    "/opt/bin",
    "/opt/homebrew/bin",
    "/opt/homebrew/opt/llvm/bin"
    "/opt/homebrew/sbin",
    "/opt/homebrew/opt/curl/bin", # Need homebrew curl first in the path
    "/sbin",
    "/usr/bin",
    "/usr/libexec",
    "/usr/local/bin",
    "/usr/local/go/bin",
    "/usr/local/opt/ruby/bin",
    "/usr/local/sbin",
    "/usr/sbin",
    "/nix/var/nix/profiles/default/bin/",
    "/Users/jr/.nix-profile/bin",
]
$env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
$env.NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
$env.NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

$env.LS_COLORS = (vivid generate solarized-light | str trim)

$env.EDITOR = 'hx'

$env.RUSTC_WRAPPER = 'sccache'

# Homebrew
$env.HOMEBREW_INSTALL_BADGE = '🫖'
# Starship init
# mkdir ~/.cache/starship
# starship init nu | save ~/.cache/starship/init.nu

# zoxide init
$env._ZO_ECHO = 1
# zoxide init nushell --cmd j --hook prompt | save ~/.cache/.zoxide.nu
