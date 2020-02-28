FROM python:3.7-slim
COPY . /app


COPY requirements.txt /
RUN pip install -U pip \
    && pip install -r /requirements.txt
CMD python /app/app.py
EXPOSE 8080

