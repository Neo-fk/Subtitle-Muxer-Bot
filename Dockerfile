FROM amd64/ubuntu:20.04

RUN apt update -y && \
        apt install software-properties-common -y && \
        add-apt-repository ppa:deadsnakes/ppa -y && \
        apt install python3.9.9 python3-pip -y

RUN apt update -y && \
        apt install ffmpeg -y

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
