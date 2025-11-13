FROM n8nio/n8n:latest
RUN apk update && apk add --no-cache curl
COPY ping.sh /app/
RUN chmod +x /app/ping.sh
EXPOSE 5678
CMD /app/ping.sh & n8n start
