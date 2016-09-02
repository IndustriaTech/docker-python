FROM debian:jessie

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

RUN apt-get -y update

# Python related
RUN apt-get -y install \
        python3 \
        python3-pip \
        python3-venv \
        python3-pil \
        python3-psycopg2 \
        python3-lxml \
        git \
    && apt-get clean

# Application WEB Server related
RUN apt-get -y install \
        nginx \
        nginx-full \
        uwsgi \
        uwsgi-plugin-python3 \
    && apt-get clean

# Compile Python modules
RUN apt-get -y install \
        python3-dev \
        # psycopg2
        libpq-dev \
        # mysqlclient
        libmysqlclient-dev \
        # lxml
        libxml2-dev \
        # Pillow deps
        libjpeg62-turbo-dev zlib1g-dev libtiff5-dev libfreetype6-dev liblcms2-dev libwebp-dev \
    && apt-get clean

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["python3"]
