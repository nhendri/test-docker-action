FROM ghcr.io/nhendri/devtooling:latest

COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
