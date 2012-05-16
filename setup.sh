veewee_clone_url="https://github.com/jedi4ever/veewee.git"
dropbox_path=~/Dropbox
templates_path=fg_veewee_scripts/templates
definitions_path=fg_veewee_scripts/definitions


echo "Please enter path to dropbox [=$dropbox_path]:"

read entered_dropbox_path

if [[ -n "$entered_dropbox_path" ]]; then
	dropbox_path=$entered_dropbox_path
fi

# Assumes you have a ~/src or whatever dir that this repo is cloned to
cd ..
git clone $veewee_clone_url


# symlinks
cmd="ln -s $dropbox_path/Engineering/VirtualBox/ISOs veewee/iso"
echo "Symlinking: $cmd"
$cmd

cmd="ln -s $definitions_path veewee/definitions"
echo "Symlinking: $cmd"
$cmd


# Fixes https://github.com/jedi4ever/veewee/pull/204
cmd="cp -f $templates_path/postinstall.sh veewee/templates/ubuntu-10.10-server-i386/"
echo "Copying: $cmd"
$cmd

# Updates for 1.9.3
cmd="cp -f $templates_path/.rvmrc veewee"
echo "Copying: $cmd"
$cmd