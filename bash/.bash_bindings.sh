export PATH="${PATH}:${HOME}/bin"
export NOTESPATH="${HOME}/notes"
export NVIMCONFIGPATH="${HOME}/.config/nvim"

if [[ ! -d ${NOTESPATH} ]]; then
    mkdir ${NOTESPATH}
    echo "You did not have folder '${NOTESPATH}', it has been created."
fi
if [[ ! -d ${NVIMCONFIGPATH} ]]; then
    mkdir -p ${NVIMCONFIGPATH}
    echo "You did not have folder '${NVIMCONFIGPATH}', it has been created."
fi
if [[ ! -d "${HOME}/bin" ]]; then
    mkdir "${HOME}/bin" 
    echo "You did not have folder '${HOME}/bin', it has been created."
fi

# Make Caps Lock Escape.
setxkbmap -option caps:escape
