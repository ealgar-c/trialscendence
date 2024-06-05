FROM python:3.10.12

ENV PYTHONUNBUFFERED=1

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY manage.py .
COPY ./backend/ /backend
COPY ./counter/ /counter

COPY init_django.sh .

RUN chmod +x init_django.sh

CMD ["./init_django.sh"]