FROM python:3.9-slim
RUN pip install --no-cache-dir mtprotoproxy==1.0.6 pycryptodome==3.20.0
EXPOSE 10000
CMD ["mtprotoproxy", "10000", "dd00000000000000000000000000abcdef"]
