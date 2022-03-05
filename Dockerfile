FROM anasty17/mltb:latest

WORKDIR /usr/src/jaharnoob

RUN chmod 777 /usr/src/jaharnoob

RUN git clone https://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@github.com/Joharali0786/jaharnoob.git .

RUN apt update && upgrade -y

RUN apt install sudo

RUN echo "Sudo :- it's ON"

RUN sudo apt install wget curl -y

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 ./start.sh

RUN echo "Ready To abuse jaharnoob"

CMD ["bash", "start.sh"]
