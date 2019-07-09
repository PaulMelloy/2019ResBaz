library(leaflet)
library(dplyr)

Aust_unis <- read.csv("C:/Users/U8011054/OneDrive - USQ/Cloudstor/Other data/AustralianUniversitys.csv")

Aust_unis %>% 
   leaflet() %>%
   addTiles() %>%
   setView(lat = -19, lng = 132.3, zoom = 3) %>%
   addMarkers(~lon, lat = ~lat, label = (Aust_unis)[,1])
