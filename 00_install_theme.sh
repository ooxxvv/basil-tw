#######################################################################
# Copy/Zip theme files
#######################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Local variable
theme_name=basil-tw
install_path=/boot/grub/themes
zip_path=~/Desktop

# Install or Create
read -p "(I)nstall theme or (C)reate zip file on desktop (I/C) ? " ans

case $ans in
# Install
I)
    sudo mkdir -p $install_path/$theme_name
    yes | sudo cp -r ./* $install_path/$theme_name
    echo 'Install completed.'
;;
# Create
C)
    zip -FSr $zip_path/$theme_name ./*
    echo 'Create completed.'
;;
*)
    echo 'Do nothing.'
;;
esac


