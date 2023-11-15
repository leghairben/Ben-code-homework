
flights <- readRDS("data/flights_week10.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

# How many departure time zone? 

flightsData$DepartureTimeZone >
  table() >
  sort(decreasing = T) -> tb_departureTimeZone



unique time zones 



















## Split data frame -----

# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

x =1

split_flightsData[[x]] |> dplyr::mutate
  















# for each sub data frame
.x=1 # say the first one
# we want to parse the time
split_flightsData[[.x]]$DepartureTime <- 
  lubridate::ymd_hm(split_flightsData[[.x]]$DepartureTime, tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 



split_flightsData[[.x]]$DepartureTime <- 
  lubridate::ymd_hm(split_flightsData[[.x]]$DepartureTime, tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 

# in dplyr



# for every .x
flightsData |> 
  dplyr::group_by(departureTimeZone) |>
  dplyr::mutate(
    DepartureTime =
      lubridate::ymd_hm(
        DepartureTime,
        tz = DepartureTimeZone[[1]])
  ) |>
  dplyr::ungroup() ->
  









