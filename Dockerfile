FROM eclipse-temurin:17
RUN mkdir -p /opt
COPY build/install/test /opt/app
WORKDIR /opt/app
CMD ["bin/test"]
