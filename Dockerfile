FROM mongo:4.2

RUN usermod -d /home/mongodb mongodb; \
    mkdir -p /home/mongodb/.ssh; \
    chown -R mongodb:mongodb /home/mongodb; \
    chmod 0700 /home/mongodb; \
    chmod 0700 /home/mongodb/.ssh
USER mongodb
ENV HOME=/home/mongodb
