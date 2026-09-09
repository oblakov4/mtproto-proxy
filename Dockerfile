FROM python:3.9-slim
RUN pip install --no-cache-dir PySocks microsocks
EXPOSE 1080
CMD ["microsocks", "-p", "1080"]
