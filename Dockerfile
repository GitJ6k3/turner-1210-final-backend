FROM public.ecr.aws/docker/library/python:3.12-slim
WORKDIR /app
COPY . /app
RUN pip install flask gunicorn
EXPOSE 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
