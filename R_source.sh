#!/bin/sh
   
# Set the R version to install
R_VERSION=4.2.2

apt install -y g++ gcc gfortran libreadline-dev libx11-dev libxt-dev \
    libpng-dev libjpeg-dev libcairo2-dev xvfb \
    libbz2-dev libzstd-dev liblzma-dev libtiff-dev \
    libssh-dev libgit2-dev libcurl4-openssl-dev \
    libblas-dev liblapack-dev libopenblas-dev \
    zlib1g-dev openjdk-17-jdk \
    texinfo texlive texlive-fonts-extra \
    screen wget libpcre2-dev make cmake
cd /usr/local/src
wget https://cran.rstudio.com/src/base/R-${R_VERSION:0:1}/R-$R_VERSION.tar.gz
tar zxvf R-$R_VERSION.tar.gz
cd R-$R_VERSION
./configure --enable-R-shlib --enable-memory-profiling --with-blas --with-lapack #BLAS and LAPACK are optional
make
make install
cd ..
rm -rf R-$R_VERSION*
exit