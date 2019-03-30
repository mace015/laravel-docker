FROM mace015/laravel-docker-php-cli:latest

# Install cron
RUN apk update

# Copy the cronfile into the container
COPY crontab /crontab

# Source the crontab file
RUN crontab -u root /crontab

# Display the cron output
CMD ["crond", "-f", "-l", "8"]