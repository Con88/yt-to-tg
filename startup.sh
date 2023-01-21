youtube-dl -f 18 -o "~/yt-to-tg/Videos/%(title)s.%(ext)s" https://www.youtube.com/@LimmyTwitchClipsPlus/videos --playlist-start 1 --playlist-end 10  --download-archive ~/yt-to-tg/archive.txt
bash ~/yt-to-tg/rename.sh
bash ~/yt-to-tg/send-to-tg.sh
rm -f ~/yt-to-tg/Videos/*
date >> ~/yt-to-tg/script-execute.log
