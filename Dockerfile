FROM ubuntu:20.04

# Instala o ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg

# Copia o arquivo buildpack-run.sh para o contêiner
COPY buildpack-run.sh /buildpack-run.sh

# Define o arquivo buildpack-run.sh como executável
RUN chmod +x /buildpack-run.sh

# Executa o arquivo buildpack-run.sh quando o contêiner iniciar
CMD ["/bin/bash", "/buildpack-run.sh"]
