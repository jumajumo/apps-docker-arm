FROM hypriot/rpi-java

ADD * /var/jumajumo/apps/

RUN java -Dspring.active.profiles=container -jar /var/jumajumo/apps/homework-app.jar
