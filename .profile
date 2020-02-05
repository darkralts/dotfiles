#Sofiane's profile file
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs:
export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

