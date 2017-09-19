# Members_Map1


```r
library(ggmap)
```

```
## Loading required package: ggplot2
```

```r
library(ggplot2)

members_table=read.csv("Datasets/Location_launch_dates.csv") #load the launch dates data table

vancouver_map=get_map(location="vancouver", maptype="roadmap", zoom=11) #create the map
```

```
## Map from URL : http://maps.googleapis.com/maps/api/staticmap?center=vancouver&zoom=11&size=640x640&scale=2&maptype=roadmap&language=en-EN&sensor=false
```

```
## Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=vancouver&sensor=false
```

```r
ggmap(vancouver_map, extent = "device")+geom_point(aes(x = Longitude, y = Latitude), colour = "red", alpha = 0.1, size = 2, data = members_table)
```

```
## Warning: `panel.margin` is deprecated. Please use `panel.spacing` property
## instead
```

```
## Warning: Removed 91 rows containing missing values (geom_point).
```

![](Members_Map1_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

```r
ggmap(vancouver_map, extent = "device")+geom_point(aes(x = Longitude, y = Latitude), colour = "red", alpha = 0.1, size = 2, data = members_table)+scale_x_continuous(limits = c(-123.276002,-122.904250), expand = c(0, 0))+scale_y_continuous(limits=c(49.214039,49.345409),expand=c(0,0))
```

```
## Warning: `panel.margin` is deprecated. Please use `panel.spacing` property
## instead
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which
## will replace the existing scale.
```

```
## Scale for 'y' is already present. Adding another scale for 'y', which
## will replace the existing scale.
```

```
## Warning: Removed 1 rows containing missing values (geom_rect).
```

```
## Warning: Removed 127 rows containing missing values (geom_point).
```

![](Members_Map1_files/figure-html/unnamed-chunk-1-2.png)<!-- -->

```r
ggmap(vancouver_map, extent = "device")+
geom_density2d(data=members_table,aes(x=Longitude,y=Latitude), size=0.3)+
stat_density2d(data=members_table,aes(x=Longitude,y=Latitude,fill=..level..,alpha=..level..),size=0.01,bins=24,geom="polygon")+
scale_fill_gradient(low="green",high="red",guide=FALSE)+scale_alpha(range=c(0,0.3),guide=FALSE)+scale_x_continuous(limits = c(-123.276002,-122.904250), expand = c(0, 0))+scale_y_continuous(limits=c(49.214039,49.345409),expand=c(0,0))
```

```
## Warning: `panel.margin` is deprecated. Please use `panel.spacing` property
## instead
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which
## will replace the existing scale.
## Scale for 'y' is already present. Adding another scale for 'y', which
## will replace the existing scale.
```

```
## Warning: Removed 127 rows containing non-finite values (stat_density2d).
```

```
## Warning: Removed 127 rows containing non-finite values (stat_density2d).
```

```
## Warning: Removed 1 rows containing missing values (geom_rect).
```

![](Members_Map1_files/figure-html/unnamed-chunk-1-3.png)<!-- -->

