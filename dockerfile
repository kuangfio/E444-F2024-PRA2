FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]