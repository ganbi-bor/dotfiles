# https://github.com/mathiasbynens/dotfiles
# https://www.youtube.com/watch?v=c5RZWDLqifA
# the bug behind why login shell, bash_profile, runs but not non login bashrc
# http://unix.stackexchange.com/questions/119627/why-are-interactive-shells-on-osx-login-shells-by-default

# Add `~/bin` to the `$PATH`
#export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.

# loads other *.bash files
for file in ~/.{bash_prompt,aliases,git-completion}.bash; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

export NVM_DIR="/Users/ganbi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
