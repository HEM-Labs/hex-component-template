FROM alpine:3.20

COPY entrypoint.sh /usr/local/bin/template-entrypoint

RUN chmod +x /usr/local/bin/template-entrypoint

ENV TEMPLATE_ENV_VAR=TEMPLATE_CONTAINER_MOUNT_PATH

ENTRYPOINT ["template-entrypoint"]
CMD ["true"]
