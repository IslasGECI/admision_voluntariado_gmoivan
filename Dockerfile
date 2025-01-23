FROM islasgeci/base:1.0.0
COPY . /workdir
RUN apt update && apt install --yes \
    gnuplot
RUN pip install --upgrade pip && pip install \
    black \
    codecov \
    flake8 \
    mutmut==2.* \
    mypy \
    pylint \
    pytest \
    pytest-cov
RUN Rscript -e "install.packages(c('covr', 'devtools', 'DT', 'lintr', 'roxygen2', 'styler', 'testthat', 'vdiffr'), repos='http://cran.rstudio.com')"
