FROM archlinux:latest

# ENTRYPOINT
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
