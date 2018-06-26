# [Killing Floor 2](http://http://www.killingfloor2.com/) Server Docker Image

## Install
1. Install [Docker](https://www.docker.com/)
2. Run `docker pull schlabbi/kf2server`
3. Start the server by executing `docker run -d --name kf2server -v /somedir/onmyhost/kf2server/data:/srv/kf2server --restart always -p 7777:7777/udp -p 27015:27015/udp -p 20560:20560/udp -p 8080:8080 schlabbi/kf2server`

This will download the server files into `/somedir/onmyhost/kf2server/data` and start the server with the default configuration. If you want to change this, go into the `/somedir/onmyhost/kf2server/data/KFGame/Config` directory and change the config files according to [this description](https://wiki.tripwireinteractive.com/index.php?title=Dedicated_Server_%28Killing_Floor_2%29#PCServer-KFGame.ini). Note that the webinterface will be disabled by default and thus there will be no response on port 8080 until it has been enabled via a config entry. Also the server will run without a password until a password has been set in the config files.

## Update the server

The server will check for updates and download them on every start. So if you want to download and install a new update, just run `docker restart kf2server`.

## Download and run beta branches


If you want to download and run a beta of the server, you can give a name of the beta branch to the server via the environment variable `BETA_BRANCH`. If you want to download and run the `preview` branch, just run this command: `docker run -d --name kf2server -v /somedir/onmyhost/kf2server/data:/srv/kf2server --restart always -p 7777:7777/udp -p 27015:27015/udp -p 20560:20560/udp -p 8080:8080 schlabbi/kf2server -e "BETA_BRANCH=preview"`. If you restart the server without this environment variable, the server will go back to the `default` branch.
