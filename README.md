# Docker Tiddlywiki-BOB

This is a TiddlyWiki Dockerfile with BOB extension for multiuser access. It provides:

* Multi-User support for using/editing the same wiki(s) simultaneously
* Multi-Wiki support - run it once and serve multiple wikis
* Create and configure new wikis from inside the root wiki
* Export single file wikis in a variety of ways
* Two-way real-time syncing between the browser and file system
* All configuration can be done from inside the wiki
* Serve external files (like images) so you can include them in your wikis
* Allows you to run shell scripts and commands from inside the wiki
* Can be used as a plugin library to make plugins available to other wikis (requires the TWederBob plugin on the other wikis to connect)
* Inter-server federation. Different Bob servers can communicate to share tiddlers and as chat servers/relays  

( from https://github.com/OokTech/TW5-Bob )

It's a very simple Dockerfile with no configuration.  
>$ docker run -p 8080:8080 -v "tiddlywiki-bob_data:/var/lib/tiddlyiki" --name tiddlywiki-bob wraith116/tiddlywiki-bob:latest

It will create a wiki under $HOME/wikis/BobWiki.  
I may add a ENV variable to name the wiki in the future - but this would only affect the directory name.

# Important note!
I havn't found a possibility to activate TiddlyWiki's password protection with BOB.  
If you want to make this wiki accessible from the internet you have to set up your own password protection e.g. with a reverse proxy.
