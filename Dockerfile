FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE = 1
ENV PYTHONUNBUFFERED = 1

# uncomment for internal tweak inside container
#RUN apt update -y && apt install -y mc vim

RUN python -m pip install --upgrade pip
RUN pip install Trac


WORKDIR /var/www/assets
COPY assets/ . 

WORKDIR /var/www/project
#RUN trac-admin /var/www/project initenv
#RUN trac-admin /var/www/project permission add admin TRAC_ADMIN



# init project example 
# docker exec -it private-notes_project_1 /bin/bash
# htpasswd -c /var/www/assets/.htpasswd admin
