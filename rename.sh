#! /bin/bash

for i in yt-to-tg/Videos/*;
do
	mv "$i" "${i//,/}";
done


