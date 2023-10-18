FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

ARG JAR_NAME 
ENV JAR__NAME ${JAR__NAME}
COPY target/${JAR_NAME}  /deployments/data

CMD ["sleep","infinity"]

