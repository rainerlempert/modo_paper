library(geosphere)

launch_table<-read.csv("Datasets/Location_launch_dates.csv")
member_table<-read.csv("Datasets/Member_geohashes_Table1.csv")
# open csv files

member_table<-member_table[,1:5]
launch_table<-cbind(launch_table,location_counter=0)
#edit member table

completeVecLatLon <- complete.cases(member_table[, 4:5])
member_table <- member_table[completeVecLatLon, ]
completeVecLatLon1 <- complete.cases(launch_table[, 9:10])
launch_table <- launch_table[completeVecLatLon1, ]
#remove na's

for (irow in 1:nrow(launch_table)){
  for (jrow in 1:nrow(member_table)){
    if((distm(member_table[irow,5:4],launch_table[jrow,10:9],fun=distHaversine))<1000){
      launch_table$location_counter[irow]<-launch_table$location_counter[irow]+1
    }
  }
}
#add counter