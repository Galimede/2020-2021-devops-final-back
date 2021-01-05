FROM python:3.9.1

COPY . /app 
WORKDIR /app

ENV FLASK_APP=autoapp.py

RUN pip install -r requirements.txt

EXPOSE 8000

CMD["flask", "db", "upgrade"]
CMD["python", "autoapp.py"]