FROM amd64/python:3

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt install ffmpeg -y

COPY . .

CMD [ "bash", "start.sh ]
