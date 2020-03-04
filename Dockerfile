FROM python:3.7

COPY ./app/. /app/

WORKDIR app/

RUN pip install gunicorn

RUN pip install -r requirements.txt

RUN python ./manage.py migrate

EXPOSE 8000

CMD [ "gunicorn", "--bind=0.0.0.0:8000", "carnival.wsgi" ]