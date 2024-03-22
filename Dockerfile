FROM archlinux:latest

# INSTALL DEPS
RUN pacman -Syy --noconfirm && pacman -S fakeroot --noconfirm

# USER (non-root)
RUN useradd --create-home --no-log-init user

# ENTRYPOINT
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# WORKDIR
RUN mkdir -p /app && chown -R user:user /app
WORKDIR /app
USER user

# ENTRY
ENTRYPOINT [ "/entrypoint.sh" ]
