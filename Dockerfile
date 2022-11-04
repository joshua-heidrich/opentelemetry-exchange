FROM python:latest

ENV PATH="${PATH}:/app/source/bin"

WORKDIR /app
COPY ./app /app

RUN pip install -r requirements.txt

#ENTRYPOINT ["opentelemetry-instrument", "flask", "run"]