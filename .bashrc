# this is not called on new tab but only on reboot
# add commands to the other files, following is the structure:
#.bashrc       - > .bash_profile
#.bash_profile -> bash_prompt, aliases,git_completion (.bash)
#              -> .profile
#	       -> starts mysql
#.profile      -> source /opt/boxen/env.sh

source ~/.bash_profile

export NVM_DIR="/Users/ganbi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
