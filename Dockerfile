FROM node:latest
MAINTAINER https://github.com/cleancopy

RUN apt-get update && \
  apt-get install -y git && \
  rm -rf /var/lib/apt/lists/* && \
  npm install -g grunt-cli && \
  git clone https://github.com/gchq/CyberChef && \
  cd CyberChef && \
  npm install

WORKDIR /CyberChef
ENTRYPOINT ["grunt"]
CMD ["dev"]
