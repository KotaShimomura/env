#FROM nvcr.io/nvidia/pytorch:20.08-py3
FROM nvcr.io/nvidia/pytorch:21.02-py3
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
    pip install click numpy matplotlib seaborn pandas tqdm && \
    pip install scikit-learn==1.0.2 \
                jupyter \
                lightgbm \
                alembic==1.4.1 \
                sqlalchemy==1.3.13 \
                optuna && \
    #pip install xgboost && \
    #pip install shap && \
    pip install timm && \
    #pip install catboost && \
    #pip install wandb && \
    #pip install tensorflow-gpu && \
    #pip install keras && \
    pip install albumentations && \
    #pip install joblib && \
    pip install colorama && \
    pip install opencv-python-headless==4.4.0.46 && \
    #pip install xfeat && \
    #pip install category_encoders && \
    #pip install -q jpholiday && \
    #pip install matplotlib-venn && \
    #pip install --upgrade gensim && \
    #pip install MulticoreTSNE && \
    #pip install geopy && \
    #pip install imblearn && \
    #pip install texthero && \
    pip install nltk && \
    #pip install tokenizers==0.11.6 && \
    #pip install transformers==4.16.2 && \
    pip install iterative-stratification && \
    pip install -q segmentation_models_pytorch && \
    pip install rasterio && \
    mkdir -p /home/share \
#CMD jupyterlab
