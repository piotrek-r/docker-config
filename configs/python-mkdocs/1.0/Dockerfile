FROM python:3.6
MAINTAINER Piotr Rybałtowski <piotrek@owl-labs.com>

RUN pip install mkdocs

EXPOSE 8000

WORKDIR /docs

CMD ["mkdocs", "serve"]
