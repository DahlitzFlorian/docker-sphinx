FROM python:3.7-alpine3.8

EXPOSE 8000

RUN mkdir /docs
WORKDIR /docs

RUN pip install sphinx sphinx-autobuild recommonmark sphinx_rtd_theme

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
