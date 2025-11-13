FROM n8nio/n8n:latest
RUN apt-get update && apt-get install -y curl
COPY ping.sh /app/
RUN chmod +x /app/ping.sh
EXPOSE 5678
CMD /app/ping.sh & n8n start
