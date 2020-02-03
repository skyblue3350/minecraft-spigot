FROM library/java:jdk-alpine

RUN mkdir /mc
WORKDIR /mc
EXPOSE 25565

ENV VERSION=1.14.4 \
    EXTRA_ARGS=nogui

# download spigot
RUN apk add --update --virtual build-dependencies ca-certificates openssl git \
 && wget "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -O BuildTools.jar \
 && java -jar BuildTools.jar -rev $VERSION \
 && echo "eula=true" > ./eula.txt \
 && apk del --purge --virtual build-dependencies

# exec server
CMD java -jar spigot-${VERSION}.jar ${EXTRA_ARGS}
