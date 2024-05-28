## Collection of Scripts for VOD .m3u Conversion (Unix Version)

This collection of scripts allows you to download a VOD (Video on Demand) .m3u file and convert all links into .strm files sorted in folders.

### Instructions (Optimized for Unix Systems)

Extract all scripts into a directory of your choosing. The name of the directory does not matter, as the scripts are designed to work from any location.

Your Unix system must support Shell scripts using BASH and Python.

**IMPORTANT:** You only need to edit `start.sh` with any text editor to include your personal VOD .m3u URL. Follow these steps:

1. **Rename `vod_url.example.txt` to `vod_url.txt`:** 
   - Copy `vod_url.example.txt` and rename the copy to `vod_url.txt`.

2. **Add Your VOD URL:**
   - Open the `vod_url.txt` file.
   - Paste your VOD URL into the file.
   - Save and close the file.

To start the script, run `start.sh`. Your .strm files will be created in the `movies` and `tvshows` subdirectories within your install directory and can be used like any other video file.

I recommend using Emby, Jellyfin, or Kodi. Create a library for both VOD movies and VOD TV shows and point to the `movies` and `tvshows` folders for file location so images and information can be scraped.

Run the script whenever you want to update your files. It's not needed to run more than once a day but recommended to run not less than once a week. You can run it manually or set up a scheduled task.
