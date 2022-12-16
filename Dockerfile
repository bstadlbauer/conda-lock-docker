FROM python:3.10.9-slim-bullseye

RUN : \
    && apt-get update -y --fix-missing \
    && apt install -y \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && :

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install conda-lock==1.3.0

CMD "bash"
