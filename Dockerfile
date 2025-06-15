FROM python:3.13

WORKDIR /app

COPY ./project .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]