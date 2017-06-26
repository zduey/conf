# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias matlab=~/bin/matlab2015
export FREESURFER_HOME="/usr/global/freesurfer"
export SUBJECTS_DIR="/data/eeg/freesurfer/subjects"
source $FREESURFER_HOME/SetUpFreeSurfer.sh
export PATH=$PATH:"/usr/global/freesurfer/bin:/usr/global/freesurfer/mni/bin:/home2/iped/dcmtk-3.6.0-linux-i686-static/bin:"

export MATLABPATH=~/matlab/areal_toolbox

# start work tmux session automatically
tmux -2 attach -t work
