FROM archlinux:latest

# INSTALL DEPS
RUN pacman -Syy --noconfirm && pacman -S fakeroot --noconfirm

# ENTRYPOINT
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
