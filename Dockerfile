FROM ghcr.io/investigativedata/aleph:main

USER root

RUN apt install curl
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chown -R 1000:1000 /aleph/aleph/pages


USER 1000

ENTRYPOINT ["/entrypoint.sh"]

CMD gunicorn -w 8 -b 0.0.0.0:8000 --log-level info --log-file - aleph.manage:app

