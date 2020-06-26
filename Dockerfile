FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y git curl nmap ncrack openjdk-11-jdk

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN bash -c "$(curl -sfL https://raw.githubusercontent.com/google/tsunami-security-scanner/master/quick_start.sh)"

RUN mkdir /out

COPY run.sh /

RUN chmod +x run.sh
