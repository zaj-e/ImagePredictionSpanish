FROM tiangolo/uwsgi-nginx-flask:python3.8

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt --no-cache-dir
ADD . /code/

EXPOSE 80
 
ENTRYPOINT python ./app.py