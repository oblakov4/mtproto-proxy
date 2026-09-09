FROM python:3.9-slim
RUN pip install --no-cache-dir python-socks
EXPOSE 1080
CMD ["python", "-m", "python_socks", "--port", "1080"]
