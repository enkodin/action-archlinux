FROM archlinux:latest

# INSTALL DEPS
RUN pacman -Syy --noconfirm && pacman -S fakeroot --noconfirm

# USER (non-root)
RUN useradd --create-home --no-log-init user

# ENTRYPOINT
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# ENTRY
ENTRYPOINT [ "/entrypoint.sh" ]
