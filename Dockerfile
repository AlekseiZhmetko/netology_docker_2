FROM ubuntu:20.04

RUN apt-get update && apt-get install
RUN apt-get install -y python3-pip

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /stocks_products

WORKDIR /stocks_products

ADD . /stocks_products/


RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python3", "manage.py"]
CMD ["makemigrations"]
CMD ["migrate"]
CMD ["runserver", "0.0.0.0:8000"]
