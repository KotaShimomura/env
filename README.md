# kaggle環境構築
今後幾度となく訪れる環境構築のためのリポジトリ

## 動作確認済み環境
Ubuntu 18.04LTS.   
Ubuntu 20.04LTS  
docker 20.10.8, 20.10.12
## 注意点
WLS2環境は動作未確認  
必要に応じてDockerfileに記述されたライブラリを変更してください．(このまま使用しても問題ないですがimagesizeが大きくなります)

# 下準備
ubuntuにNvidia driver,cudaのinstall
Nvidia japanさんの[ここ](https://medium.com/nvidiajapan/nvidia-docker-%E3%81%A3%E3%81%A6%E4%BB%8A%E3%81%A9%E3%81%86%E3%81%AA%E3%81%A3%E3%81%A6%E3%82%8B%E3%81%AE-20-09-%E7%89%88-558fae883f44)の手順に従って`nvidia-smi`が通るように進める．  
基本的には最新verが入るようになっているため必要に応じversion指定を各自行うこと．  
GPUのアーキテクチャ，Nvidiadriver, cudaのversionに対応したイメージversion[ここ](https://docs.nvidia.com/deeplearning/frameworks/support-matrix/index.html)から見つける．

# 本リポジトリを使用してkaggle環境の構築
クローン(ホームディレクトリで)
```sh
git clone git@github.com:KotaShimomura/env.git
```
```sh
cd env
```
コンテナのビルド  
`build.sh`のkotashimomuraにあたるところを使用するサーバーのユーザー名に変更してください
```sh
./build.sh
```
コンテナの起動
```sh
./run.sh
```
jupyter notebookを起動したい場合
```sh
./jupyter.sh
```

