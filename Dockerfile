FROM dockerhub/library/php:7.3-apache
# 將使用者需要安裝的清單放到opt資料夾內
COPY ./app/apt-package.txt /opt/
# 為了避免發生測試時的下載封鎖 因此先禁用
RUN cd /opt/ && apt-get update && \
    cat apt-package.txt | xargs apt install -y

COPY --from=dockerhub/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN install-php-extensions mysqli

## Setup working directory
WORKDIR /var/www/html

# create laravel latest version project
COPY ./app/src /var/www/html

WORKDIR /
EXPOSE 80
