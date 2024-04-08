FROM nuisancemc/nuwro:21.09.02
RUN apt-get install -y python3-pip
RUN pip install --no-cache notebook
WORKDIR /
ENV HOME=/tmp

