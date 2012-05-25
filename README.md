# Funding Gates' veewee / virtualbox utils

This script is designed to do two things:

1. Clone veewee to the parent directory of current (this assumes you've got all your source in some subdir)
1. Symlink our definitions and isos into veewee's definitions and isos

At FundingGates, our isos are in Dropbox so we symlink from there.

# To initially setup your machine (do not already clone veewee!)
run ./setup.sh and provide the path to Dropbox, it'll take care of the rest.

To update veewee definitions just update this repo. Definitions are symlinked.

Heroku cedar stack based off of https://github.com/ejholmes/vagrant-heroku / https://github.com/greggroth/vagrant-heroku