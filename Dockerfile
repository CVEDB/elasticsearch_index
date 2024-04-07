FROM python:3.9-slim-buster
LABEL licenses.elasticsearch-index.name="MIT" \
      licenses.elasticsearch-index.url="https://github.com/CVEDB/elasticsearch_index/blob/main/LICENSE"

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

RUN mkdir -p /hive/in /hive/out

ENTRYPOINT ["python", "elasticsearch_index.py"]
