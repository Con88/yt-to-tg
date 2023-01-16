#! /bin/bash

i=0
while read line
do
    array[ $i ]="$line"        
    (( i++ ))
done < <(ls yt-to-tg/Videos)

size=${#array[*]}
echo $size
for (( x=0; x<=$size; x++))
do
	curl -F video=@"/home/conejo/yt-to-tg/Videos/${array[x]}" -F caption="${array[x]::-4}" https://api.telegram.org/bot5717749765:AAF1vW5BOAIzZQWvRt3MbZieKaj7Z4V0Axo/sendVideo?chat_id=@limmybald
done
