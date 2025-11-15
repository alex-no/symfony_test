# Dockerfile
FROM php:8.2-cli

# Install Composer
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony
    
# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Midnight Commander (mc) and any necessary dependencies
RUN apt-get update && apt-get install -y mc && rm -rf /var/lib/apt/lists/*

# Specify the default working directory
WORKDIR /var/www
