FROM python:3-slim

ADD start.sh /
RUN chmod +x /start.sh

WORKDIR /dagster
RUN pip install --no-cache-dir dagster dagit dagster_shell yfinance pandas
EXPOSE 5000

ENV DAGSTER_HOME=/dagster

#CMD dagster-daemon run ; dagit -h 0.0.0.0 -p 5000
CMD ["/start.sh"]