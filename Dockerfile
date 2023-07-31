FROM python:3.11

WORKDIR /app

COPY py/requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

RUN python3 setup.py

CMD ["python3","-u","main.py"]


