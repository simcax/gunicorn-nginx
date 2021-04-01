FROM python:alpine
RUN apk add py3-gunicorn nginx python3 bash
COPY requirements.txt /
RUN python3 -m pip install -r /requirements.txt
COPY app /app
COPY config /config
COPY docker_entrypoint.sh /
RUN chmod +x /docker_entrypoint.sh
WORKDIR /
EXPOSE 8000
ENTRYPOINT ["./docker_entrypoint.sh"]

CMD ["gunicorn", "-c", "python:config.gunicorn", "app.app:app()"]

