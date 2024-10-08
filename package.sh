#!/bin/sh




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

 R -e "if (!library(writexlsx, logical.return=T)) install.packages('writexlsx', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(xlsx, logical.return=T)) install.packages('xlsx', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(rstatix, logical.return=T)) install.packages('rstatix', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(reshape, logical.return=T)) install.packages('reshape', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(plyr, logical.return=T)) install.packages('plyr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(datarium, logical.return=T)) install.packages('datarium', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(dplyr, logical.return=T)) install.packages('dplyr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(tidyr, logical.return=T)) install.packages('tidyr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(readr, logical.return=T)) install.packages('readr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(misty, logical.return=T)) install.packages('misty', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(fs, logical.return=T)) install.packages('fs', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(mailR, logical.return=T)) install.packages('mailR', dependencies=TRUE, repos='https://cran.wu.ac.at/')"
 R -e "if (!library(codebookr, logical.return=T)) install.packages('codebookr', dependencies=TRUE, repos='https://cran.wu.ac.at/')"


R -e "if (!library(fs, logical.return=T)) quit(status=10)"
R -e "if (!library(mailR, logical.return=T)) quit(status=10)"
R -e "if (!library(codebookr, logical.return=T)) quit(status=10)"

R -e "if (!library(tidyr, logical.return=T)) quit(status=10)"
R -e "if (!library(readr, logical.return=T)) quit(status=10)"
R -e "if (!library(misty, logical.return=T)) quit(status=10)"

R -e "if (!library(writexlsx, logical.return=T)) quit(status=10)"
 R -e "if (!library(xlsx, logical.return=T)) quit(status=10)"
 R -e "if (!library(rstatix, logical.return=T)) quit(status=10)"
 R -e "if (!library(reshape, logical.return=T)) quit(status=10)"
 R -e "if (!library(plyr, logical.return=T)) quit(status=10)"
 R -e "if (!library(datarium, logical.return=T)) quit(status=10)"
 R -e "if (!library(dplyr, logical.return=T)) quit(status=10)"

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
