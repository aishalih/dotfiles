# Path to Oh My Fish install.
set -gx OMF_PATH /home/bl/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/bl/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Alias
alias tmux "env TERM=screen-256color-bce tmux"
set -gx TERM screen-256color-bce

