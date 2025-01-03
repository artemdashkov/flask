FROM tiangolo/uwsgi-nginx-flask:python3.12
WORKDIR /usr/src/app

COPY ./app ./
COPY ./test ./
COPY ./uwsgi.ini ./
COPY ./.gitignore ./
COPY ./requirements.txt ./

RUN pip install -r requirements.txt

CMD ["python", "./server.py"]