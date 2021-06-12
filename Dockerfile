FROM openjdk:8-jdk-alpine
ARG JAR_FILE
ENV LINE_BOT_CHANNEL_SECRET
ENV LINE_BOT_CHANNEL_TOKEN
ENV SPRING_PROFILES_ACTIVE prod
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java ${JAVA_OPTS} -jar /app.jar" ]