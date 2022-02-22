FROM python:3-slim

ADD start.sh /
RUN chmod +x /start.sh

WORKDIR /dagster

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV DAGSTER_HOME=/dagster

CMD ["/start.sh"]