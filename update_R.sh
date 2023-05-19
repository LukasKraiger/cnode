#!/bin/sh

#https://askubuntu.com/questions/87111/if-i-build-a-package-from-source-how-can-i-uninstall-or-remove-completely

apt-get update \
&& apt-get upgrade -y \
&& cd R-4.3.0 \
&& make uninstall \
&& apt-get clean all && \
apt-get purge && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  sed -i.bak "/^#.*deb-src.*universe$/s/^# //g" /etc/apt/sources.list \
&& apt-get update \
&& apt-get build-dep r-base -y

  curl -O https://cran.rstudio.com/src/base/R-4/R-4.3.0.tar.gz \
&& tar -xzvf R-4.3.0.tar.gz \
&& cd R-4.3.0 \
&& ./configure --prefix=/opt/R/R-4.3.0 --enable-R-shlib --enable-memory-profiling --with-blas --with-lapack 

   make \
    && make install 
cd .. 

  ln -s /opt/R/R-4.3.0/bin/R /usr/local/bin/R \
    && ln -s /opt/R/R-4.3.0/bin/Rscript /usr/local/bin/Rscript
    

  R -e "if (!library(devtools, logical.return=T)) install.packages('devtools', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(tidyverse, logical.return=T)) install.packages('tidyverse', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(sjlabelled, logical.return=T)) install.packages('sjlabelled', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(haven, logical.return=T)) install.packages('haven', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(magrittr, logical.return=T)) install.packages('magrittr', dependencies=TRUE, repos='https://cran.wu.ac.at/') "
  R -e "if (!library(dplyr, logical.return=T)) install.packages('dplyr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(psych, logical.return=T)) install.packages('psych', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(knitr, logical.return=T)) install.packages('knitr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(ggthemes, logical.return=T)) install.packages('ggthemes', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
#https://stackoverflow.com/questions/45289764/install-r-packages-using-docker-file
#http://www.sthda.com/english/wiki/one-way-anova-test-in-r
  R -e "if (!library(apa, logical.return=T)) install.packages('apa', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(jtools, logical.return=T)) install.packages('jtools', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(car, logical.return=T)) install.packages('car', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(ggpubr, logical.return=T)) install.packages('ggpubr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"

  R -e "if (!library(xlsx, logical.return=T)) install.packages('xlsx', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(rstatix, logical.return=T)) install.packages('rstatix', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(reshape, logical.return=T)) install.packages('reshape', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(plyr, logical.return=T)) install.packages('plyr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
  R -e "if (!library(datarium, logical.return=T)) install.packages('datarium', dependencies=TRUE, repos='https://cran.wu.ac.at/')"


  R -e "if (!library(xlsx, logical.return=T)) quit(status=10)"
  R -e "if (!library(rstatix, logical.return=T)) quit(status=10)"
  R -e "if (!library(reshape, logical.return=T)) quit(status=10)"
  R -e "if (!library(plyr, logical.return=T)) quit(status=10)"
  R -e "if (!library(datarium, logical.return=T)) quit(status=10)"

  R -e "if (!library(devtools, logical.return=T)) quit(status=10)"
  R -e "if (!library(tidyverse, logical.return=T)) quit(status=10)"
  R -e "if (!library(sjlabelled, logical.return=T)) quit(status=10)"
  R -e "if (!library(haven, logical.return=T)) quit(status=10)"
  R -e "if (!library(magrittr, logical.return=T)) quit(status=10)"
  R -e "if (!library(dplyr, logical.return=T)) quit(status=10)"
  R -e "if (!library(psych, logical.return=T)) quit(status=10)"
  R -e "if (!library(knitr, logical.return=T)) quit(status=10)"
  R -e "if (!library(ggthemes, logical.return=T)) quit(status=10)"
  R -e "if (!library(apa, logical.return=T)) quit(status=10)"
  R -e "if (!library(jtools, logical.return=T)) quit(status=10)"
  R -e "if (!library(car, logical.return=T)) quit(status=10)"
  R -e "if (!library(ggpubr, logical.return=T)) quit(status=10)"
 
  R -e "devtools::install_github('LukasKraiger/frame')"

  rm -rf R-4.3.0
