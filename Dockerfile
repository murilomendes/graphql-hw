FROM ruby:2.3.3

RUN apt-get update -qq
RUN apt-get install -y build-essential git curl libpq-dev vim nodejs
RUN apt-get install imagemagick -y
RUN update-alternatives --force --install /usr/bin/node node /usr/bin/nodejs 10

ENV APP_HOME /graphql

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME

CMD ./start.sh
