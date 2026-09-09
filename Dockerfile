FROM python:3.11-slim
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir mtprotoproxy==1.0.6 pycryptodome==3.20.0
EXPOSE 8443
CMD ["mtprotoproxy", "8443", "SECRET"]
