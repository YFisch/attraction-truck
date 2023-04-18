use AttractionDB
go
delete AttractionTruck
go
insert AttractionTruck(CustomerFirstName,CustomerLastName,CustomerAddress,Country,CustomerPhoneNum,AttractionType,DeliveryDate,PickupDate,PricePerDay,IsDamaged,DamageDesc,DamagePrice)
select 'Rivka', 'Reich', '21 Glen Lane Bremen Georgia United States 56299', 'United States', '654-784-3457', 'Merry Go Round', 'Jan 1 2023', 'Jan 4 2023', 200, 0, '', null
union select 'Judy', 'Shnall', '55 Stamford Rd Mexico City Mexico 98736', 'Mexico', '756-374-7447', 'Tree House Jumping Balloon', 'March 22 2023', 'April 10 2023', 100, 0, '', null
union select 'Yaakov', 'Rosen', '5523 17th Ave Brooklyn New York United States 11219', 'United States', '718-938-3745', 'Bumping Cars', 'Feb 10 2023', 'Feb 15 2023', 3000, 1, 'Two motors from cars are broken and unrepairable', 5000
union select 'Max', 'Brim', '444 Ducharme Ave Montreal Quebec Canada 65489', 'Canada', '514-964-7654', 'Merry Go Round', 'June 20 2023', 'Aug 1 2023', 200, null, '', null
union select 'Aliza', 'Smith', '5724 Lang St San Diego California United States 45832', 'United States', '632-485-1234', 'Ferris wheel', 'May 10 2023', 'May 11 2023', 5000, null, '', null
union select 'Julie', 'Blanks', '22 Grand St Watertown South Dakota United states 21345', 'United states', '123-456-7890', 'Big monkey Jumping Balloon', 'Jan 22 2023', 'Feb 22 2023', 450, 0, '', null
union select 'Ella', 'Drig', '8 Summer Drive Miami Florida United States 87609', 'United states', '519-269-6008', 'Train on Tracks', 'March 5 2023', 'March 7 2023', 1500, 1, 'Five tracks fell off', 100
union select 'Sam', 'Truman', '1123 Main St Ottawa Ontario Canada 87534', 'Canada', '452-088-3012', 'Bumping Cars', 'April 10 2023', 'May 1 2023', 3000, null, '', null
union select 'Shmuel', 'Cohen', '55 Tim Drive Phoenix Arizona United States 47283', 'United states', '987-765-8422', 'Big Monkey Jumping Balloon', 'March 1 2023', 'March 10 2023', 450, 1, 'Big hole on the monkey’s nose', 200
union select 'Judy', 'Shnall', '55 Stamford Rd Mexico City Mexico 98736', 'Mexico', '756-374-7447', 'Electric Swings', 'June 2 2023', 'June 15 2023', 2500, null, '', null
union select 'Mark', 'Baker', '5 Sand Ave Cancun Mexico 98542', 'Mexico', '756-999-7765', 'Train on Tracks', 'May 1 2023', 'June 1 2023', 1500, null, '', null
union select 'Mark', 'Baker', '5 Sand Ave Cancun Mexico 98542', 'Mexico', '756-999-7765', 'Ferris Wheel', 'May 1 2023', 'June 1 2023', 5000, null, '', null
union select 'Yitzchok', 'Hager', '21 Maple St Monsey New York United States 29564', 'United states', '845-323-3322', 'Merry go round', 'April 3 2023', 'April 11 2023', 200, 1, 'Floor was scratched more than usual', 50
union select 'Shaindy', 'Press', '20 Cedar court Lakewood New Jersey United States 08701', 'United states', '732-272-7273', 'Electric swing', 'Jan 2 2023', 'Jan 5 2023', 2500, 0, '', null
union select 'Ella', 'Drig', '8 Summer Drive Miami Florida United States 87609', 'United states', '519-269-6008', 'Flying Airplane Jumping Balloon', 'August 10 2023', 'August 11 2023', 150, null, '', null
go

select *
from AttractionTruck