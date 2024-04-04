FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN mkdir /uploads

EXPOSE 8000

CMD ["uvicorn", "api:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]