
FROM python:3.9-slim

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY app.py ./

CMD ["/usr/local/bin/flask", "run", "--host=0.0.0.0", "--port=80"]

BUILD --network host -t uis-demo:1.0.0 .

RUN --rm -it uis-demo:1.0.0