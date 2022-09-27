Collection of scripts to Download an (VOD) .m3u and Convert all links into .strm files sorted in folders

Intructions and optimized for Windows users

Extract all scripts into a directory of your choosing, the name of the directory does not matter but this directory will be where your .strm movies and tvshow directories will get generated automatically

Your Windows must support Shellscripts using BASH, Python and have WGET installed in your Windows System32 directory.

You must also create a separate .m3u that contains ONLY VOD streams for Movies and TV-Shows although it should work if Livestreams and VOD are combined in one .m3u, it is just more efficient and quicker to make a new .m3u

1- Get the latest WGET.exe here: https://eternallybored.org/misc/wget/ and extract/copy WGET.EXE to C:\Windows\System32\

2- Make sure your Windows has Git BASH or get it here: https://git-scm.com/download/win (select "(NEW)Add Git Bash Profile to Windows Terminal" while installing

3- Make sure your Windows has Python or get it here: https://www.python.org/downloads/

IMPORTANT: When these scripts are installed in place you ONLY have to edit start.sh with any text editor to include your personal VOD.m3u URL

To start the script run start.sh, your .strm files will be created in the movies and tvshows subdirectories within your install directory and can be used as any other videofile

I recommend Emby, Jellyfin or Kodi, create a library for both VOD Movies and VOD TvShows and point to the movies and tvshows folders for file location so images and information can be scraped

Run the script whenever you want to update your files, it's not needed to run more than once a day but recommended to run not less than once a week
You can run it manually, set up a scheduled task or add it to your Windows Startup directory to run on boot

Update 0.92 changelog
- directories will now grab the directories where scripts are installed as root
As a result you can install and run the scripts from any location you prefer
- VOD .m3u will now be stored as VODstemp.m3u and automatically removed after each update
- logs and cache folders now deleted by default on successful completion of tasks
