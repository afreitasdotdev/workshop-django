FROM python:3.7

COPY ./app/. /app/

WORKDIR app/

RUN pip install gunicorn

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "gunicorn", "carnival.wsgi" ]