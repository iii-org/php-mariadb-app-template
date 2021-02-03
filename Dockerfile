FROM iiiorg/php7.3-apache:latest
# 將使用者需要安裝的清單放到opt資料夾內
COPY ./app/apt-package.txt /opt/
# 為了避免發生測試時的下載封鎖 因此先禁用
RUN cd /opt/ && apt-get update && \
    cat apt-package.txt | xargs apt-get install -y

## Setup working directory
WORKDIR /var/www/html

# create laravel latest version project
COPY ./app/src /var/www/html

WORKDIR /
EXPOSE 80
