FROM python:3.11-slim
RUN pip install --no-cache-dir mtprotoproxy
EXPOSE 8443
CMD ["mtprotoproxy", "0.0.0.0", "8443", "SECRET"]
