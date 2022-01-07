# TS3MusicBot-Pterodactyl-Egg

This Pterodactyl egg adds official support for TS3MusicBots.

Description:
A powerful MusicBot and ServerBridge for Teamspeak and Discord.
Listen music together with your friends on teamspeak and discord. Listen to Youtube, Soundcloud, Mixcloud, Twitch or many more sites. Stream your browser or soundcard sound from home or use the build in server side webbrowser to play any content!
A ServerBridge lets you talk and chat accross different voice servers!



It comes predefined with this variables:

---------------------------------------------------------------------------

Name:
Account / License from ts3musicbot.net

Description:
Your ts3musicbot.net license.
Typically for a private license, this is the account email.
For a commercial license, it looks like your@email.xy_resellerXXXXXXXXXXXXXX for a reseller license.

Environment Variable:
ACCOUNT_LICENSE

Default Value:
your@email.xy

Permissions:


Input rules:
required|string|max:50

---------------------------------------------------------------------------

Name:
Webinterface ADMIN password

Description:
The administrator password for the bot webinterface login.

Environment Variable:
ADMIN_PASSWORD

Default Value:
ADMIN_PASSWORD

Permissions:
"Users Can View", "Users Can Edit"

Input rules:
required|string|max:50

---------------------------------------------------------------------------

Name:
Webinterface USER password

Description:
The user password for the bot webinterface login.

Environment Variable:
USER_PASSWORD

Default Value:
USER_PASSWORD

Permissions:
"Users Can View", "Users Can Edit"

Input rules:
required|string|max:50

---------------------------------------------------------------------------

Name:
Teamspeak QUERY mode

Description:
Set "noquery" to disable query for teamspeak.
Set "query" to enable query for teamspeak.

Environment Variable:
QUERY_MODE

Default Value:
noquery

Permissions:
"Users Can View", "Users Can Edit"

Input rules:
required|string|max:7

---------------------------------------------------------------------------

Name:
Max disk space

Description:
Maximum space in megabyte (MB) the user can upload to the bots music/radio folders.
0 = no limit
1024 = 1024MB (eg. 1 GB)
2048 = 2048MB (eg. 2GB)
...

Environment Variable:
MAX_DISK_SPACE

Default Value:
0

Permissions:
"Users Can View"

Input rules:
required|numeric|max:20
