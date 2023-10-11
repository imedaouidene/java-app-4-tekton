FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

ARG JAR_NAME 

COPY target/${JAR_NAME}  /home/jboss/

CMD ["java", "-jar", "/home/jboss/${JAR_NAME}"]
