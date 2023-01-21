#! /bin/bash
#custom parameters
token=5717749765:AAF1vW5BOAIzZQWvRt3MbZieKaj7Z4V0Axo
chat_id=limmybald


i=0
while read line
do
    array[ $i ]="$line"        
    (( i++ ))
done < <(ls -t ~/yt-to-tg/Videos)

size=${#array[*]}
echo $size
for (( x=0; x<=$size; x++))
do
	curl -F video=@"./yt-to-tg/Videos/${array[x]}" -F caption="${array[x]::-4}" https://api.telegram.org/bot$token/sendVideo?chat_id=@$chat_id
done
