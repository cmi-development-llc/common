#! /bin/bash -xe
# sets up our mounts to mount from FSTAB instead of automount
if [ ! -L $mda ]; then
  echo "=> Symlink doesn't exist"
  rm -rf /etc/wsl.conf
  ln -s wsl.conf /etc/wsl.conf
else
  echo "Symlink exists"
fi

bashrcPath="${PWD}/.bashrc"
if grep -q "$bashrcPath" ~/.bashrc; then
	echo ".bashrc is already configured"
else
	echo "source $bashrcPath" >> ~/.bashrc	
fi


zshrcPath="$PWD/.zshrc"
if grep -q "$zshrcPath" ~/.zshrc; then
	echo ".zshrc is already configured"
else
	echo "source $zshrcPath" >> ~/.zshrc	
fi
