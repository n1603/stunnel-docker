# Set the base image to centos:6
FROM	centos:6

# File Author / Maintainer
MAINTAINER Ganesh

# import keys
RUN	rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY*

# Update the repository and install Redis Server
RUN     yes | yum install stunnel.x86_64

RUN	mkdir /var/run/stunnel
RUN	mkdir /opt/stunnel
RUN	chown -R nobody:nobody /var/run/stunnel

# Refer stunnel webiste for stunnel ssl certification creation
# stunnel.pem below is dummy pem format certfication
COPY	files/stunnel.sh /opt/stunnel/
COPY	files/stunnel.conf /etc/stunnel/
COPY	files/stunnelpem  /etc/stunnel/

RUN	chmod u+x /opt/stunnel/stunnel.sh

# Expose the ports we're interested in
EXPOSE	9511

CMD	["/opt/stunnel/stunnel.sh"]

