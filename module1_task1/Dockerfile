# ベースイメージの選択
# ubuntu:18.04 から golang:1.16 に変更
FROM golang:1.16 as builder

# 必要なパッケージのインストール
#RUN apt-get update && apt-get install -y \
#    wget \
#    git \
#   make

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    wget \
    git \
    make \
    gcc \
    g++ \
    pkg-config \
    libsass-dev \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Hugoのバージョン0.84.0をインストール
# RUN wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-ARM64.deb \
#    && dpkg -i hugo_0.84.0_Linux-ARM64.deb \
#    && rm hugo_0.84.0_Linux-ARM64.deb

# Hugoのリポジトリをクローン
RUN git clone https://github.com/gohugoio/hugo.git

# Hugoリポジトリへ移動して、バージョン0.84.0をチェックアウトし、拡張バージョンをビルド
RUN cd hugo && git checkout v0.84.0 && go install --tags extended

# Hugoバイナリをパスに追加
ENV PATH="/root/go/bin:${PATH}"

# 作業ディレクトリを設定
WORKDIR /app

# ホストマシンのファイルをコンテナにコピー
COPY . .

# ウェブサイトをビルド
RUN hugo --destination module1_task0/dist
