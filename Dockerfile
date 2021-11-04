FROM python:3.8

WORKDIR /app

COPY . .

RUN ["pip3", "install", "pipenv"]

RUN ["pipenv", "install"]


ENV FLASK_APP app

CMD ["pipenv","run", "flask", "run", "--host=0.0.0.0"]