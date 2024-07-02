FROM redhat/ubi8

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
