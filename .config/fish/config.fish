set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
#set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked yes
#set -g theme_display_git_dirty yes
set -g theme_display_nvm yes
set -g theme_display_virtualenv yes
set -g theme_color_scheme nord # zenburn
set -gx PATH $HOME/.cargo/bin $PATH

set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PATH
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $HOME/.local/bin $PATH

if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end

set -U EDITOR hx

if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

fish_add_path -g /opt/homebrew/opt/gawk/libexec/gnubin
