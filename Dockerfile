FROM img1
RUN dnf install httpd -y
RUN systemctl enable httpd.service
COPY ./index.html /var/www/html 
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

