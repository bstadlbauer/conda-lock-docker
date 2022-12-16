FROM python:3.10.9-slim-bullseye

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install conda-lock==1.3.0

CMD "bash"
