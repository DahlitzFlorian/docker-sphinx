# Sphinx docs in Docker

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a tool that makes it easy to create intelligent and beautiful documentation.
It is also the technology that [ReadTheDocs](https://readthedocs.org/) uses to build their documentation.
This image helps you get started with sphinx without installing any dependencies on your computer.
The only prerequirement is [Docker](http://docker.com/).


## Usage

This Docker image is meant to be used as a base image.

```Dockerfile
FROM floriandahlitz/docker-sphinx

COPY ./docs /docs
```

The above configuration assumes the default sphinx setup.
To serve it simply run:

```shell
$ docker image build -t doc .
$ docker container run --rm --name doc -it -p 9340:8000 doc
```

... and visit `localhost:9340` to see the result.


## Read the docs theme

The image is prepared with the [read the docs theme](https://github.com/rtfd/sphinx_rtd_theme). In order to use it, follow the configuration instructions [here](https://github.com/rtfd/sphinx_rtd_theme#installation):

```py
import sphinx_rtd_theme
html_theme = "sphinx_rtd_theme"
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
```
