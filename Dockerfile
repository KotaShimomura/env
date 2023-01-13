#FROM nvcr.io/nvidia/pytorch:20.08-py3
FROM nvcr.io/nvidia/pytorch:21.02-py3
#FROM rapidsai/rapidsai:22.12-cuda11.4-runtime-ubuntu20.04-py3.9
#FROM nvcr.io/nvidia/pytorch:22.08-py3 # torch1.3

#FROM gcr.io/kaggle-gpu-images/python
LABEL maintainer="Kotashimomura"
ENV DEBIAN_FRONTEND noninteractive
ARG INSTALLDIR_PYOCR="/app/ocr"
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y git \
    make \
    cmake \
    gcc \
    g++ \
    wget \
    zip \
    libgl1-mesa-dev \
    curl && \ 
    pip install click jupyter lightgbm optuna timm wandb matplotlib seaborn tqdm && \
    pip install scikit-learn==1.0.2 \
    numpy==1.19.2 \
    pandas==1.1.4\
    alembic==1.4.1 \
    sqlalchemy==1.3.13 \
    albumentations==1.2.1 \
    colorama==0.4.6 \
    opencv-python-headless==4.4.0.46 \
    nltk==3.5 \
    iterative-stratification==0.1.7 \
    rasterio==1.3.4 && \
    pip install -q segmentation_models_pytorch==0.3.0
#pip install xgboost && \
#pip install shap && \
#pip install catboost && \
#pip install joblib && \
#pip install xfeat && \
#pip install category_encoders && \
#pip install -q jpholiday && \
#pip install matplotlib-venn && \
#pip install --upgrade gensim && \
#pip install MulticoreTSNE && \
#pip install geopy && \
#pip install imblearn && \
#pip install texthero && \
#pip install tokenizers==0.11.6 && \
#pip install transformers==4.16.2 && \
#mkdir -p /home/share \
#CMD jupyterlab