library(mapview)
library(sf)
library(leafpop)

p1 <- data.frame(Name = "STAR INN", Long = -0.21083291332052603, Lat = 54.093459991040596,
                 stringsAsFactors = F)
p1 <- st_as_sf(p1, coords = c("Long", "Lat"), crs = 4326)

p2 <- data.frame(Name = "Bridlington NR", Long = -0.200026, Lat = 54.08414,
                 stringsAsFactors = F)
p2 <- st_as_sf(p2, coords = c("Long", "Lat"), crs = 4326)

p3 <- data.frame(Name = "South Beach", Long = -0.19707, Lat = 54.07838,
                 stringsAsFactors = F)
p3 <- st_as_sf(p3, coords = c("Long", "Lat"), crs = 4326)

p4 <- data.frame(Name = "North Beach", Long = -0.18284, Lat = 54.08714,
                 stringsAsFactors = F)
p4 <- st_as_sf(p4, coords = c("Long", "Lat"), crs = 4326)


q <- mapview(p1, lwd = 2,  col.regions = "red", cex = 10,
        map.types = c("OpenStreetMap", "Esri.WorldImagery", "CartoDB.Positron"),
        layer.name = "StarInn") +
mapview(p2, lwd = 2,  col.regions = "navy", alpha.region = 0.6, cex = 8,
          map.types = c("OpenStreetMap", "Esri.WorldImagery", "CartoDB.Positron"),
          layer.name = "National Rail") +
mapview(p4, lwd = 2,  col.regions = "goldenrod", alpha.region = 0.85, cex = 8,
          map.types = c("OpenStreetMap", "Esri.WorldImagery", "CartoDB.Positron"),
          layer.name = "North Beach") +
mapview(p3, lwd = 2,  col.regions = "goldenrod", alpha.region = 0.6, cex = 8,
          map.types = c("OpenStreetMap", "Esri.WorldImagery", "CartoDB.Positron"),
          layer.name = "South Beach")

mapviewOptions(fgb = FALSE).

mapshot(
  q@map,
  url = "WhereToFindUs.html"
  #remove_controls = c("zoomControl", "layersControl", "homeButton", "scaleBar",
  #                    "drawToolbar", "easyButton")
)
