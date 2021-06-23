FROM rocker/r-ver:4.0.5

RUN \
  apt-get update && \
  apt-get install -y apt-transport-https && \
  apt-get install -y libssl-dev libjpeg-dev libmagick++-dev && \
  rm -rf /var/lib/apt/lists/*


RUN mkdir /app
COPY . /app
WORKDIR /app

RUN Rscript -e "install.packages(c('plumber', 'yaml', 'base64enc', 'remotes'))"

EXPOSE 8000

CMD ["Rscript", "R/run_plumber.R"]
