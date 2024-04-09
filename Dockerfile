# Base image
FROM centos:7

# containize the apache server
LABEL description="Dockerfile to containize on apache"

# Update all packages
RUN yum update -y

# Install apache
RUN yum install -y httpd

# Copy all apps and dependencies inside the container
COPY index.html /var/www/html

EXPOSE 80

# systemctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]

# Always run the container in the background
CMD [ "-D", "FOREGROUND" ]


