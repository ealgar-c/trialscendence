FROM python:3.10.12

ENV PYTHONUNBUFFERED=1

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY manage.py .
COPY ./backend/ /backend

# CMD ["sh", "-c", "python3 manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

CMD ["sleep", "infinity"]