FROM python:3.9-slim
RUN pip install --no-cache-dir PySocks
EXPOSE 1080
CMD ["python", "-c", "import socketserver, socks; class MyHandler(socks.SocksProxy): pass; server = socketserver.ThreadingTCPServer(('0.0.0.0', 1080), MyHandler); server.serve_forever()"]
