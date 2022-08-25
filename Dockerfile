FROM python:3.8-alpine
WORKDIR /code
ENV FLASK_APP=apps/app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY apps/requirements.txt requirements.txt
RUN python3 -m venv venv
RUN source venv/bin/activate
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]