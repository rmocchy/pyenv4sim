FROM python:3.9-slim

# 必要なパッケージのインストール
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        libboost-dev \
        libboost-program-options-dev \
    && rm -rf /var/lib/apt/lists/*

# コンテナ内の作業ディレクトリを設定します
WORKDIR /app
COPY . /app/

# install packages
RUN pip install -r /app/requirements.txt

# コンテナが起動した際に実行されるコマンドを指定します
CMD ["bash"]