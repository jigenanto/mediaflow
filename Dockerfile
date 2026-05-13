FROM mhdzumair/mediaflow-proxy:latest

USER root

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 7860

CMD ["/start.sh"]
