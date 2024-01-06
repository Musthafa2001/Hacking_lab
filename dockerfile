FROM ubuntu
RUN apt-get update && apt-get upgrade
RUN apt-get install build-essential openssh-server apache2 sudo gdb gcc nodejs -y
RUN adduser musthafa
RUN echo 'musthafa:....' | chpasswd
RUN usermod -aG sudo musthafa
RUN touch /home/musthafa/.hushlogin
ENTRYPOINT service ssh start && service apache2 start && /bin/bash
