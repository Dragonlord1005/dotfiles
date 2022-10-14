if status is-interactive
 starship init fish | source
   # Commands to run in interactive sessions can go here
 thefuck --alias | source
 export DENO_INSTALL="/home/drago/.deno"
 export PATH="$DENO_INSTALL/bin:$PATH"
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# pnpm
set -gx PNPM_HOME "/home/drago/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
