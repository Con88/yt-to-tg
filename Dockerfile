FROM ubuntu
COPY . root/yt-to-tg
WORKDIR /root
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install wget 
RUN apt-get -y install python3 && apt-get -y install curl && apt-get -y install cron 
RUN ln -s /usr/bin/python3 /usr/bin/python 
RUN mv ./yt-to-tg/youtube-dl /usr/local/bin/ 
RUN chmod a+rx /usr/local/bin/youtube-dl 
RUN crontab -l | { cat; echo "*/30 * * * * bash /root/yt-to-tg/startup.sh"; } | crontab - 
RUN crontab -l | { cat; echo "@reboot bash /root/yt-to-tg/startup.sh"; } | crontab -  

CMD cron -f
