# syntax=docker/dockerfile:1
# This image will be used to deploy the Flask Application
# This is to test conflict from Dev1
# This is to test conflicts from Dev2
# Pull python 3.10 docker image
FROM python:3.10-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run", "--debug"]