FROM tomcat:8-jre11-slim

RUN rm -rf /usr/local/tomcat/webapps/* \
    && mkdir -p /srv/webprotege \
    && mkdir -p /usr/local/tomcat/webapps/ROOT

WORKDIR /usr/local/tomcat/webapps/ROOT

COPY ./webprotege-cli/target/webprotege-cli-*.jar /webprotege-cli.jar
COPY ./webprotege-server/target/webprotege-server-*.war ./webprotege.war
RUN unzip webprotege.war \
    && rm webprotege.war
