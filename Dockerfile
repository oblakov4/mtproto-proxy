FROM python:3.11-slim
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir git+https://github.com/alexbers/mtprotoproxy.git
EXPOSE 8443
CMD ["mtprotoproxy", "0.0.0.0", "8443", "SECRET"]
