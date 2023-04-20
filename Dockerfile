FROM --platform=linux/amd64 ubuntu:22.04

COPY ./chat/gpt4all-* /opt/gpt4all/chat/
COPY ./launcher.sh /opt/gpt4all/

RUN chmod +x ./opt/gpt4all/launcher.sh

# If gpt4all-lora-quantized.bin exists in chat dir, comment out below
RUN apt update

WORKDIR /opt/gpt4all

CMD ["/bin/sh", "-c", "./launcher.sh"]