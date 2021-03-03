library("opencage")
library("tidyverse")
apikey<-'insert apikey here'
input <- read.csv(file='/home/jakob/Schreibtisch/erkannte3.csv')
output <- data.frame(Number=c(), Distance=c(), LAT=c(), LON=c(), speed=c(), date=c(), date_format=c(), time=c(), time_format=c(), country=c(), state=c(), county=c(), citytown=c(), suburb=c(), postcode=c(), roadname=c(), roadtype=c(), oneway=c(), maxspeed=c(), speedin=c(), lanes=c(), bikespeed=c() )
lines<-dim(input)
print(lines[1])
oneline<-lines[1]
for(i in 1:oneline){
  dist<-input[i,1]
  time<-input[i,2]
  date<-input[i,3]
  LAT<-input[i,4]
  LON<-input[i,5]
  bikespeed<-input[i,6]
  checksum<-input[i,7]
  speed<-0
  citytown<-0
  lanes<-1
  oneway<-0
  roadtype<-0
  output1 <- opencage_reverse(latitude=LAT, longitude=LON, key=apikey,language='de')
  if(output1$rate_info$remaining>0){
    output2 <- output1$results
    country <-output2$components.country
    state <- output2$components.state
    if('components.city' %in% names(output2)){
      citytown<-output2$components.city
    }
    if('components.town' %in% names(output2)){
      citytown<-output2$components.town
    }else if('components.village' %in% names(output2)){
      citytown<-output2$components.village
    }
    suburb<-citytown
    if('components.suburb' %in% names(output2)){
      suburb <- output2$components.suburb
    }else if('components.neighbourhood' %in% names(output2)){
      suburb <- output2$components.neighbourhood
    }
    county <- citytown
    if('components.county' %in% names(output2)){
      county <- output2$components.county
    }
    postcode <- output2$components.postcode
    if('annotations.roadinfo.road' %in% names (output2)){
      roadname <- output2$annotations.roadinfo.road
    }
    if('annotations.roadinfo.road_type' %in% names(output2)){
      roadtype <- output2$annotations.roadinfo.road_type
    }
    if('annotations.roadinfo.maxspeed' %in% names(output2)){
      maxspeed <- output2$annotations.roadinfo.maxspeed
    }
    if('annotations.roadinfo.speed_in' %in% names  (output2)){
      speedin <- output2$annotations.roadinfo.speed_in
    }
    if('annotations.roadinfo.lanes' %in% names(output2)){
      lanes<-output2$annotations.roadinfo.lanes
    }
    if('annotations.roadinfo.oneway' %in% names(output2)){
      oneway<-output2$annotations.roadinfo.oneway
    }
    if(date<100000){
      date_day<-floor(date/10000)
      date_month<-date-date_day*10000
      date_day<-as.character(date_day)
      if(date_month<1000){
        date_month<-paste0("0",as.character(date_month))
      }else{
        date_month<-as.character(date_month)
      }
      date_total<-paste0("0",date_day,date_month)
    }else{
      date_total<-as.character(date)
    }
    date_formatted<-parse_date(date_total,format="%d%m%y")
    date_formatted
    
    if(time<100000){
      time_hour<-floor(time/10000)
      time_minutes<-time-time_hour*10000
      time_hour<-as.character(time_hour)
      if(time_minutes<1000){
        time_minutes<-as.character(time_minutes)
        time_minutes<-paste0("0",time_minutes)
      }else{
        time_minutes<-as.character(time_minutes)
      }
      time_total<-paste0("0",time_hour,time_minutes)
    }else{
      time_total<-as.character(time)
    }
    
    time_formatted<-parse_time(time_total,format="%H%M%S")
    time_formatted
    
    out <- data.frame(Number=i, Distance=dist, LAT=LAT, LON=LON, speed=speed, date=date, date_format=date_formatted, time=time, time_format=time_formatted, country=country, state=state, county=county, suburb=suburb, citytown=citytown, postcode=postcode, roadname=roadname, roadtype=roadtype, oneway=oneway, maxspeed=maxspeed, speedin=speedin, lanes=lanes, bikespeed=bikespeed )
    print(out)
    output <- rbind(output, out)
  }
}
write.csv(output, '/home/jakob/Schreibtisch/apiabfrage3.csv')