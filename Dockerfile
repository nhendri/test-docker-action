FROM ghcr.io/nhendri/test-image:0.1-x64

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
