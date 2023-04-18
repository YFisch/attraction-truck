use AttractionDB
go
--1: I want to know in which country I make the most profit, I need the sum of my profit per country. There is no need to include the delivery fee as it goes straight to the driver
select a.Country, TotalProfit = sum(a.TotalPrice)
from AttractionTruck a
group by a.Country
order by TotalProfit desc
--2: I want to expand myself so I could except more orders, I want to know what I should buy more of. count the attractions per type.
select a.AttractionType, NumOfTimesOrdered = count(*)
from AttractionTruck a
group by a.AttractionType
order by NumOfTimesOrdered desc
--3: I need the customer information in the following format: 
--   LastName, FirstName – Attraction (Totalprice), CountryDelivered
select a.CustomerInfo
from AttractionTruck a
--4: I want to know how many days the attractions were ordered, ordered from most to least days
select a.AttractionType, NumOfDaysOrdered = datediff(day,a.DeliveryDate,a.PickupDate), a.DeliveryDate, a.PickupDate
from AttractionTruck a
order by NumOfDaysOrdered desc
