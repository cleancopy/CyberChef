FROM node:11
MAINTAINER https://github.com/cleancopy

# launch container and listen on port 80 using docker run -p 80:8080 cleancopy/cyberchef:latest

RUN apt-get update && \
  apt-get install -y git && \
  rm -rf /var/lib/apt/lists/* && \
  npm install -g grunt-cli && \
  git clone https://github.com/gchq/CyberChef && \
  cd CyberChef && \
  npm install

EXPOSE 8080
WORKDIR /CyberChef
ENTRYPOINT ["grunt"]
CMD ["dev"]
