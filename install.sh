#!/bin/bash -e
#Make sure to run script from project directory since there is a reference to it as a current direcotiry (.)
SOURCE=${BASH_SOURCE[0]}
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR=$(cd -P "$(dirname "$SOURCE")" >/dev/null 2>&1 && pwd)
  SOURCE=$(readlink "$SOURCE")
  [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR=$(cd -P "$(dirname "$SOURCE")" >/dev/null 2>&1 && pwd)
cd "$DIR"

dir=~/.local/share/gnome-shell/extensions/vpn-indicator@howdoicomputer.fastmail.com

if [ -d $dir ]; then
  rm -rf $dir
else
  echo "brand-new install..."
fi
mkdir -p $dir
cp -R . $dir

echo "installed:"
ls -al $dir
