FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

ARG JAR_NAME 
ENV JAR__NAME ${JAR__NAME}
COPY target/${JAR_NAME}  /home/jboss/

CMD ["java", "-jar", "/home/jboss/${JAR__NAME}"]
