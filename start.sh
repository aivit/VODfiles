#!/bin/bash

link=$(cat vod_url.txt)

echo "Using VOD URL: $link"

root=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SECONDS=0
abort()
{
    echo >&2 "
***************
*** ABORTED ***
***************
Tasks failed after: $SECONDS seconds
"
    echo "An error occurred. Exiting..." >&2
    exit 1
}
trap 'abort' 0
set -e
echo -e "\e[34m\e[1m
*******************************************
***                                     ***
***   VOD .m3u URL to .strm CONVERTER   ***
***                            v0.92    ***
***                                     *** 
*******************************************\e[0m"
echo -e "\e[34m\e[1mDownloading .m3u\e[0m"
# Download your VOD.m3u
wget -O VODstemp.m3u "$link" 
echo -e "\e[34m\e[1mPurging old .strm files\e[0m"
# Delete all old .strm files in your Movies and TvShows folders
for dir in "$root"; do
    find . -type f -name '*.strm' -delete
done
echo -e "\e[34m\e[1mCreating .strm files and folders from .m3u\e[0m"
# Run script to create .strm files from your VOD .m3u
./main.py
echo -e "\e[34m\e[1mPurging folders that do not contain any .strm file\e[0m"
# Run scripts to purge old folders that do not contain .strm files
echo -e "\e[34m\e[1mPurging movies folders\e[0m"
sh ./purgeold_movies.sh
echo -e "\e[34m\e[1mPurging tvshows folders\e[0m"
sh ./purgeold_tvshows.sh
#On success delete cache folder
rm -r __pycache__
#on success delete Python logs
rm -r logs
#On succes delete temp .m3u
rm VODstemp.m3u
trap : 0
echo >&2 "
****************************************************
***        Tasks completed successfully!         *** 
*** Do not forget to update your media libraries ***
***     in your HTPC / Mediaserver software      ***
****************************************************
All tasks completed in: $SECONDS seconds
"





