FROM resin/rpi-raspbian

RUN apt update && apt install -y openjdk-8-jdk

ADD homework-app.jar .

CMD ["java","-jar","homework-app.jar"]


