FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY manage.py .
COPY ./backend/ /app/backend

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]