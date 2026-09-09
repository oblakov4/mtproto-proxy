FROM python:3.9-slim
RUN pip install --no-cache-dir mtprotoproxy==1.0.6 pycryptodome==3.20.0
EXPOSE 8443
CMD ["mtprotoproxy", "8443", "SECRET"]
