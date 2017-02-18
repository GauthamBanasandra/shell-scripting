#!/usr/bin/env bash
num_wallpapers=10
market="en-US"
wget "http://www.bing.com/HPImageArchive.aspx?format=js&n=${num_wallpapers}&mkt=${market}" -O wallpaper.json &&
base_url="http://www.bing.com"
for (( i=0; i<num_wallpapers; ++i )) ; do
	url=`cat wallpaper.json | jq ".images[${i}].url"`
	file_name=`cat wallpaper.json | jq ".images[${i}].hsh"`
	len=`echo ${url} | wc -c`
	len=$(( len - 3 ))
	wallpaper_url=${base_url}${url:1:${len}}
	wget ${wallpaper_url} -O "./wallpapers/${file_name}.jpg"
	echo ${wallpaper_url}
done
