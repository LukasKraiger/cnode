#!/bin/sh


apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y gnupg2 wget cmake curl openssh-server unattended-upgrades texlive-latex-recommended texlive-latex-extra \
&& apt-get install -y software-properties-common dirmngr gfortran libbz2-dev g++ libreoffice texlive-latex-base pandoc zlib1g zlib1g-dev pspp octave texmaker \
&& apt-get install -y flatpak \
&& flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo \
&& flatpak install -y --noninteractive jasp \
&& flatpak install -y --noninteractive jamovi \
&& snap install zotero-snap
#&& apt-get clean all && \
#apt-get purge && \
#rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y git \
&& echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections \
&& apt-get install -y ttf-mscorefonts-installer 
#&& apt-get clean all && \
#apt-get purge && \
#rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y libgit2-dev build-essential libcurl4-gnutls-dev libxml2-dev  \
&& apt-get install -y libssl-dev cmake libfontconfig1-dev freetype2-doc libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev 
#&& apt-get clean all && \
#apt-get purge && \
#rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#https://stackoverflow.com/questions/65433724/configuration-failed-to-find-libgit2-library
#https://github.com/r-lib/devtools/issues/2131

apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
apt install --no-install-recommends r-base

wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.0-421-amd64.deb
dpkg -i rstudio-2023.06.0-421-amd64.deb

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
  R -e "if (!library(Cairo, logical.return=T)) install.packages('Cairo', dependencies=TRUE, repos='https://cran.wu.ac.at/')"

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
  R -e "if (!library(Cairo, logical.return=T)) quit(status=10)"
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

#cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak


