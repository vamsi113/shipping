FROM               amazoncorretto
RUN                yum install shadow-utils -y
RUN                useradd roboshop
RUN                mkdir -p /app
RUN                chown roboshop:roboshop /app
WORKDIR            /app
USER               roboshop
COPY               shipping.jar /app/shipping.jar
ENTRYPOINT         ["java", "-XX:InitialRAMPercentage=90", "-XX:MaxRAMPercentage=95", "-XX:MinRAMPercentage=90", "-jar", "shipping.jar"]

