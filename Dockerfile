FROM python:3.10-alpine
MAINTAINER alexandr
RUN python3 -m pip install --upgrade pip
COPY . .
WORKDIR .
RUN python3 -m pip install -r requirements.txt
WORKDIR /todoapp
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
