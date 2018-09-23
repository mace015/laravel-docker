FROM mace015/laravel-docker-application:latest

# Install cron
RUN apt-get update && apt-get install -y cron

# Copy the cronfile into the container
COPY crontab /crontab

# Source the crontab file
RUN /usr/bin/crontab -u root /crontab

# Display the cron output
CMD ["cron", "-f", "-l", "8"]