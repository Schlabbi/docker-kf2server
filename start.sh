#!/bin/bash
COMMAND="/opt/steamcmd/steamcmd.sh +@ShutdownOnFailedCommand 1  \
+login anonymous +force_install_dir /srv/kf2server/ +app_update 232130"
if [ -z "$BETA_BRANCH" ]; then
    COMMAND="$COMMAND -beta \"default\""
else 
    COMMAND="$COMMAND -beta \"$BETA_BRANCH\""
fi
COMMAND="$COMMAND +quit"
eval $COMMAND
/srv/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64
