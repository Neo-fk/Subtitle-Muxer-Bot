FROM amd64/ubuntu:20.04

RUN apt update -y && \
        apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y && \
        wget https://www.python.org/ftp/python/3.9.9/Python-3.9.9.tgz && \
        tar -xf Python-3.9.9.tgz && \
        cd Python-3.9.9 && \
        ./configure --enable-optimizations && \
        make -j 8 && \
        make altinstall && \
        apt install python3-pip ffmpeg -y

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
