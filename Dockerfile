FROM archlinux:latest

# INSTALL DEPS
RUN pacman --needed --noconfirm -Sy fakeroot

# USER (non-root)
RUN useradd --create-home --no-log-init user

# ENTRYPOINT
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

# PREP
USER user
WORKDIR /home/user

# ENTRY
ENTRYPOINT [ "/usr/local/bin/entrypoint" ]
