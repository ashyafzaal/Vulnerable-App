FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r REQUIREMENTS.txt

EXPOSE 5000

ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["flask", "run"]