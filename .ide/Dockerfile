FROM cnbcool/default-dev-env:latest

RUN apt update && apt install -y nload

# 指定 Ollama 0.6.6 版本並安裝
RUN curl -fsSL https://ollama.com/install.sh -o install.sh && \
    chmod +x install.sh && \
    OLLAMA_VERSION=0.6.6 ./install.sh && \
    rm install.sh

ENV OLLAMA_MODELS=/workspace/models
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_ORIGINS=*