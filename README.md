# kaggle環境構築

## 動作確認済み環境
Ubuntu 20.04LTS
docker 20.10.8

# 構築手順
## ubuntuにNvidia driver,cudaのinstall
Nvidia japanさんの[ここ](https://medium.com/nvidiajapan/nvidia-docker-%E3%81%A3%E3%81%A6%E4%BB%8A%E3%81%A9%E3%81%86%E3%81%AA%E3%81%A3%E3%81%A6%E3%82%8B%E3%81%AE-20-09-%E7%89%88-558fae883f44)の手順に従って`nvidia-smi`が通るように進める．

## 本リポジトリを使用してkaggle環境の構築
```sh
docker/build.sh
```
