FROM nuisancemc/nuwro:21.09.02
RUN apt-get install -y python3-pip
RUN python3 -m pip install jupyter jupyterlab
WORKDIR /
ENV HOME=/tmp

