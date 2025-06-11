FROM python:3.10

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential libpq-dev curl

COPY . .

RUN pip install --upgrade pip && pip install -r backend/requirements/default.txt


ENV PORT=8000

EXPOSE 8000

CMD ["uvicorn", "backend.onyx.main:app", "--host", "0.0.0.0", "--port", "8000"]

