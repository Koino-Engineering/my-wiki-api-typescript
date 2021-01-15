# my-wiki-api-typescript
my-wiki-XXX 用のAPIリポジトリ(typescript)

# 初期化
```
git submodule init --recursive
```
# API定義確認
- コンテナを起動
```
./dc.sh up
```
- コンテナを起動
    - 定義(localhost:5000/swagger)にアクセス
# 再生成
```{bash}
# submoduleを更新新た後
./generate.sh
```
