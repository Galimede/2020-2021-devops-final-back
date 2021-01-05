FROM python:3.9.1

COPY . /app 
WORKDIR /app

ENV FLASK_APP=autoapp.py

RUN pip install -r requirements/dev.txt

EXPOSE 8000

RUN flask db upgrade

CMD python autoapp.py