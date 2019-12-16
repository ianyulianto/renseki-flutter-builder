FROM openjdk:8

ARG flutter_version=v1.12.13+hotfix.5

ENV FLUTTER_HOME=/opt/flutter
ENV PROJECT_DIR=/project

RUN echo $FLUTTER_HOME

RUN mkdir -p $FLUTTER_HOME
RUN mkdir -p $PROJECT_DIR

# Install Flutter
RUN curl https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_$flutter_version-stable.tar.xz --output /opt/flutter.tar.xz
RUN cd /opt && tar xfv flutter.tar.xz
ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

# Enable Flutter Web
RUN flutter channel beta
RUN flutter upgrade
RUN flutter config --enable-web

# For project
WORKDIR $PROJECT_DIR
ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
