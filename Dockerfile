FROM python:3.11

WORKDIR /app/test

COPY requirements.txt /app/test
RUN pip install -r requirements.txt

COPY . /app/test

Expose 8000

CMD [ "python", "./app/test/manage.py" "runserver 0.0.0.0:8000"]