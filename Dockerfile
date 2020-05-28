FROM nginx:latest

WORKDIR /etc/nginx/conf.d

RUN rm default.conf && mkdir sites-available sites-enabled

COPY dashapp.conf sites-available/

WORKDIR /etc/nginx/conf.d/sites-enabled

RUN ln -s ../sites-available/dashapp.conf

COPY nginx.conf /etc/nginx/
