# yakyu
野球ビッグデータでなんかする。GraphQLとか使う。

## 環境構築

### ミドルウェアの起動

- Docker Hubへのログイン
- コンテナの起動

で起動できる。

※Dockerはインストールされてる前提。インストールがまだの場合は[コチラ](https://www.docker.com/community-edition)

```sh
# Docker Hubへのログイン
$ docker login # ユーザーネームとパスワード聞かれる

# コンテナの起動
$ cd /path/to/yakyu
$ docker-compose up -d # 起動
$ docker-compose down # 停止
```

### 既存のコンテナとイメージの削除

```
# コンテナの削除
$ docker rm -f $(docker ps -aq)

# イメージの削除
$ docker rmi -f $(docker images -q)

# ボリュームの削除
$ docker volume rm -f $(docker volume ls -q)
```
