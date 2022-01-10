# TS3MusicBot-Pterodactyl-Egg

### This [Pterodactyl.io](https://pterodactyl.io/) egg adds official support for [TS3MusicBots](https://www.ts3musicbot.net/).

### Description:
> A powerful MusicBot and ServerBridge for Teamspeak and Discord.
Listen music together with your friends on teamspeak and discord. Listen to Youtube, Soundcloud, Mixcloud, Twitch or many more sites. Stream your browser or soundcard sound from home or use the build in server side webbrowser to play any content!
A ServerBridge lets you talk and chat accross different voice servers!


### Startup Command:
> ./TS3MusicBot/TS3MusicBot_runscript.sh -account {{ACCOUNT_LICENSE}} -port {{SERVER_PORT}} -webif-pw {{ADMIN_PASSWORD}} -webif-pw-user {{USER_PASSWORD}} -{{QUERY_MODE}} -max-disk-space {{MAX_DISK_SPACE}} -number {{BOT_NUMBER}} {{YTDL_DISABLED}} {{BETA}} {{SECRETKEY}}


### It comes predefined with this variables:

---------------------------------------------------------------------------

### Name:
> Account / License from ts3musicbot.net

### Description:
> Your ts3musicbot.net license.
Typically for a private license, this is the account email.
> For a commercial license, it looks like your@email.xy_resellerXXXXXXXXXXXXXX for a reseller license.

### Environment Variable:
> ACCOUNT_LICENSE

### Default Value:
> your@email.xy

### Permissions:
> 

### Input rules:
> required|string|max:100

---------------------------------------------------------------------------

### Name:
> Webinterface ADMIN password

### Description:
> The administrator password for the bot webinterface login.

### Environment Variable:
> ADMIN_PASSWORD

### Default Value:
> ADMIN_PASSWORD

### Permissions:
> "Users Can View", "Users Can Edit"

### Input rules:
> required|string|max:50

---------------------------------------------------------------------------

### Name:
> Webinterface USER password

### Description:
> The user password for the bot webinterface login.

### Environment Variable:
> USER_PASSWORD

### Default Value:
> USER_PASSWORD

### Permissions:
> "Users Can View", "Users Can Edit"

### Input rules:
> required|string|max:50

---------------------------------------------------------------------------

### Name:
> Teamspeak QUERY mode

### Description:
> Set "noquery" to disable query for teamspeak.
Set "query" to enable query for teamspeak.

### Environment Variable:
> QUERY_MODE

### Default Value:
> noquery

### Permissions:
> "Users Can View", "Users Can Edit"

### Input rules:
> required|string|max:7

---------------------------------------------------------------------------

### Name:
> Max disk space

### Description:
> Maximum space in megabyte (MB) the user can upload to the bots music/radio folders.
0 = no limit
1024 = 1024MB (eg. 1 GB)
2048 = 2048MB (eg. 2GB)
...

### Environment Variable:
> MAX_DISK_SPACE

### Default Value:
> 0

### Permissions:
> "Users Can View"

### Input rules:
> required|numeric

---------------------------------------------------------------------------

### Name:
> Bot configuration number

### Description:
> A private license can start up to 6 bot instances with 1 license.
The bot configuration number sets a fixed order which also loads always the same configuration from the license.
For a private license, 6 bots can use the same license, just set each bot its own configuration bot number 1-6.

> For a commercial / reseller license, this is always forced to 1.


### Environment Variable:
> BOT_NUMBER

### Default Value:
> 1

### Permissions:
> "Users Can View"

### Input rules:
> required|numeric

---------------------------------------------------------------------------

### Name:
> HOSTER KEY / SECRET KEY

### Description:
> optional:
> If a secretkey / hoster key from ts3musicbot.net is set, the bot license can automatically extend if the time runs out and the bot process is still running.
> If needed, set as value:
"-secretkey xxxxxxxxxxxxxxxxxxx" (without the quotes)


### Environment Variable:
> SECRETKEY

### Default Value:
> 

### Permissions:
> 

### Input rules:
> nullable|string|max:50

---------------------------------------------------------------------------

### Name:
> Disable YT downloads

### Description:
> optional:
Disables the download manager to download from youtube, soundcloud, mixcloud ...
To disable set the value:
"-disable-ytdl" (without the quotes)


### Environment Variable:
> YTDL_DISABLED

### Default Value:
> 

### Permissions:
> "Users Can View"

### Input rules:
> nullable|string|max:20

---------------------------------------------------------------------------

### Name:
> Enable BETA version

### Description:
> To enable beta version instead of stable, set the value to:
"-beta" (without the quotes)

### Environment Variable:
> BETA

### Default Value:
> 

### Permissions:
> "Users Can View", "Users Can Edit"

### Input rules:
> nullable|string|max:5
