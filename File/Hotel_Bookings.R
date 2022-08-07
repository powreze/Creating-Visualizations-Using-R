hotel_bookings <- read.csv("hotel_bookings.csv")

library(ggplot2)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggplot(hotel_bookings, aes(x = distribution_channel, fill = deposit_type)) +
  geom_bar(position = "dodge2") +
  labs(title="Chart of Distribution Type Based on Deposit",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

ggplot(hotel_bookings, aes(x = distribution_channel, fill = market_segment)) +
  geom_bar(position = "dodge2")  +
  labs(title="Chart of Distribution Type Based on Market Segment",
       caption=paste0("Data from: ", mindate, " to ", maxdate))