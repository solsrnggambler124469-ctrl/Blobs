# **BLOBS**

Welcome to the Blobs github repository! You can download the game for yourself, just please don't do DLL injections or reverse engineering anything. Thank you!

The game is created in [Raylib](https://www.raylib.com), a lightweight module which you can use in your projects to create ***2D*** and ***3D*** graphics! Download it [here](https://github.com/raysan5/raylib)!

The current ***Blobs*** version is v4.0.0, download the most recent version if yours is outdated (it may take time for the new version to be released even after the version here is changed, so be patient).

Blobs is written in Pure C in Code::Blocks IDE, so go check them out!

# **RESOURCES**

You can view the wiki on the github page, or go to the documentation [here](https://blobs.byteland.online)!

# **MECHANICS**

You use WASD to move your blob. You play against AI controlled enemies, trying to get the most mass possible. Online play may come soon. Every time you eat food or another blob, you gain mass. Your mass resets after 300 size the first time you reach the max blob limit. This limit also affects enemies but can be different for them. The limit increases every time you reset mass.

You must also be aware of rouge black holes on the map... who knows what treasures have been swallowed in those depths..?

# **REALMS**

A beta feature released in v2.0.0 of Blobs. It allows blobs to go in black holes to change realms. Changing realms boosts the amount of mass from eating food and other blobs. There is currently only ONE realm. Realms is being worked on, so expect bugs.

# **MODDING**

We have our own custom modding feature which allows you to add your own "main.lua" script and edit the game. Alternatively, you can add a "main.json" file and start editing from there!

The modding feature is in beta and is being worked on. Please be patient. You can view the documentation on the JSON and Lua modding styles [here](https://blobs.byteland.online/modding/). To safely disable modding, scroll down to the NOTES section of the readme file

# **DOWNLOADING**

To download blobs, click "Code", then in the dropdown menu - click "Download ZIP". It should appear in your downloads folder on your PC. Then, extract the zip where you wish, (we recommend you to) pin the "Blobs.exe" file and double click it. If you get a smart screen notification - click "More Info" and then next to "Don't Run" click "Run Anyways".

# NOTES

- If you don't want mods enabled:
  - Go to main.lua, and in "function OnPreload()", type in "OFF()". It should be there automatically but this is in case it is not. 
  - For main.json, above the "main" array, type in ' "enabled" : false, ' - **WITH** the comma, otherwise the game will break trying to parse the json file.
