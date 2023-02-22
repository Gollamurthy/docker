FROM ubuntu
LABEL author=narasimha
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN mkdir /app
RUN useradd murthy
COPY . /var/www/html
WORKDIR /app
ENV app=v1
USER murthy
EXPOSE 80
CMD sleep 100

