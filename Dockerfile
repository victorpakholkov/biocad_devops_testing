# syntax=docker/dockerfile:1

FROM python:3.13.0-slim

RUN pip install uvicorn==0.32.0 fastapi==0.115.5

COPY ./app.py /

EXPOSE 32777

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "32777"]