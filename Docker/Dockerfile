FROM texlive/texlive:latest

ARG USER
ARG USERID
ARG GROUPID
ARG PROJECT=/home/$USER/thesis

# user configuration
RUN [ -n "`grep \:$GROUPID\: /etc/group 2> /dev/null`" ] && groupadd -g $GROUPID docker-user
RUN useradd -m -s /bin/bash -u $USERID -g $GROUPID $USER
RUN echo $USER:1234 | chpasswd
RUN adduser $USER sudo
RUN HOME=$PROJECT

# work directory
WORKDIR $PROJECT

# login
USER $USER

