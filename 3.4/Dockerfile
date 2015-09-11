FROM debian:8.2

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-pil \
    python3-psycopg2 \
    libmysqlclient-dev \
    && apt-get clean && pip3 install mysqlclient


CMD ["python3"]
