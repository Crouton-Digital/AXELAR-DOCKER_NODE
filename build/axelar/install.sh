#!/bin/bash

export AXELARD_RELEASE=v0.26.0
export TOFND_RELEASE=v0.10.1

#verify correct versions
echo $AXELARD_RELEASE $TOFND_RELEASE

# create a temp dir for binaries
cd $HOME
mkdir binaries && cd binaries


# get axelard, tofnd binaries and rename
wget https://github.com/axelarnetwork/axelar-core/releases/download/$AXELARD_RELEASE/axelard-linux-amd64-$AXELARD_RELEASE
wget https://github.com/axelarnetwork/tofnd/releases/download/$TOFND_RELEASE/tofnd-linux-amd64-$TOFND_RELEASE
mv axelard-linux-amd64-$AXELARD_RELEASE axelard
mv tofnd-linux-amd64-$TOFND_RELEASE tofnd

# make binaries executable
chmod +x *

# move to usr bin
mv * /usr/bin/

# get out of binaries directory
cd $HOME

# check versions
axelard version
tofnd --help

