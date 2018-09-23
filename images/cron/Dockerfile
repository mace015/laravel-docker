FROM mace015/laravel-docker-application:latest

COPY crontab /crontab

RUN /usr/bin/crontab -u root /crontab

CMD ["cron", "-f", "-l", "8"]