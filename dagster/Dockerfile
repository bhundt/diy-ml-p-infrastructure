FROM python:3.10.2-bullseye

# install docker
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common lsb-release gnupg && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt update -y && \
    apt-get -y install docker-ce docker-ce-cli containerd.io


# script start dagster and dagit
ADD start.sh /
RUN chmod +x /start.sh

WORKDIR /dagster

# install python requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# dagit listens on 5000
EXPOSE 5000

ENV DAGSTER_HOME=/dagster

CMD ["/start.sh"]