FROM nuisancemc/nuwro:21.09.02
RUN apt-get install -y python3-pip
RUN pip install --no-cache notebook
WORKDIR /
ENV HOME=/tmp
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}
