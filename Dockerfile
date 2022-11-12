FROM eclipse-temurin:17
COPY . /tmp/app
RUN cd /tmp/app && ./gradlew installDist && mkdir -p /opt && mv build/install/test /opt/app && rm -rf /tmp/app
WORKDIR /opt/app
CMD ["bin/test"]
