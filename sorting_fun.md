# Playfulness
Members_Map1  
9/18/2017  

```r
library(tidyverse)
```

```
## Loading tidyverse: ggplot2
## Loading tidyverse: tibble
## Loading tidyverse: tidyr
## Loading tidyverse: readr
## Loading tidyverse: purrr
## Loading tidyverse: dplyr
```

```
## Warning: package 'tidyr' was built under R version 3.4.1
```

```
## Warning: package 'purrr' was built under R version 3.4.1
```

```
## Conflicts with tidy packages ----------------------------------------------
```

```
## filter(): dplyr, stats
## lag():    dplyr, stats
```

```r
launch_table<-read.csv("Datasets/Location_launch_dates.csv")
member_table<-read.csv("Datasets/Member_geohashes_Table1.csv")

member_table<-member_table[,1:5]
member_table<-cbind(member_table,location_counter=0)
head(member_table)
```

```
##         Hash       Start         End Latitude Longitude location_counter
## 1 c5edaa9783 6/1/08 0:00 3/1/17 0:00 49.20933 -122.9289                0
## 2 6af48c830c 3/1/15 0:00             49.27911 -123.0637                0
## 3 5d29f613f4 8/1/09 0:00 4/1/15 0:00 49.26551 -123.1554                0
## 4 0d5309f648 9/1/16 0:00             49.24021 -123.0619                0
## 5 1da7e8d76a 2/1/06 0:00             49.27372 -123.1494                0
## 6 9ec89a5444 5/1/09 0:00 4/1/15 0:00 49.25423 -122.9075                0
```

