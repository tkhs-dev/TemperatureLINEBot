FROM openjdk:8-jdk-alpine
ARG JAR_FILE
ENV LINE_BOT_CHANNEL_SECRET xxx
ENV LINE_BOT_CHANNEL_TOKEN xxx
ENV SPRING_PROFILES_ACTIVE prod
ENV SSL_KEYSTORE_PATH /etc/pki/java/cacerts
ENV SSL_KEYSTORE_PASSWORD xxx
ENV SSL_KEYSTORE_ALIAS cert
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java ${JAVA_OPTS} -jar /app.jar" ]