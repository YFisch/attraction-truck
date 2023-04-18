use AttractionDB
go
drop table if exists AttractionTruck
go
create table dbo.AttractionTruck(
	AttractionTruckId int not null identity primary key,
	AttractionType varchar(100) not null constraint ck_AttractionTruck_AttractionType_cannot_be_blank check(AttractionType > ''),
	CustomerFirstName varchar(25) not null constraint ck_AttractionTruck_Customer_FirstName_cannot_be_blank check(CustomerFirstName > ''),
	CustomerLastName varchar(25) not null constraint ck_AttractionTruck_Customer_LastName_cannot_be_blank check(CustomerLastName > ''),
	CustomerAddress varchar(100) not null constraint ck_AttractionTruck_Customer_Address_cannot_be_blank check(CustomerAddress > ''),
	Country varchar(13) not null constraint ck_AttractionTruck_Country_must_be_in_Canada_UnitedStates_and_Mexico check(Country in('Canada', 'United States', 'Mexico')),
	CustomerPhoneNum varchar(12) not null constraint ck_AttractionTruck_Customer_phone_num_must_be_valid check(replace(replace(replace(replace(CustomerPhoneNum,')',''),'(',''),' ',''),'-','') like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	DeliveryDate date not null constraint ck_AttractionTruck_DeliveryDate_must_be_after_2023 check(year(DeliveryDate) >= 2023),
	PickupDate date not null,
	PricePerDay int not null constraint ck_AttractionTruck_PricePerDay_must_be_between_50_and_10000 check(PricePerDay between 50 and 10000),
	IsDamaged bit,
	DamageDesc varchar(200) not null default '',
	DamagePrice int constraint ck_AttractionTruck_DamagePrice_must_be_between_1_and_100000 check(DamagePrice between 1 and 100000),
	TotalPrice as PricePerDay * datediff(day,DeliveryDate,PickupDate),
	CustomerInfo as concat(CustomerLastName,', ', CustomerFirstName, ' - ', AttractionType, ' (', PricePerDay * datediff(day,DeliveryDate,PickupDate), '), ', Country),
	DeliveryFee as case when PricePerDay * datediff(day,DeliveryDate,PickupDate) < 200 then 20 else 10 end,
	constraint ck_AttractionTruck_PickupDate_must_be_after_DeliveryDate check(PickupDate > DeliveryDate),
	constraint ck_IsDamaged_cannot_be_null_if_already_picked_up_and_must_be_null_if_not check((PickupDate <= getdate() and IsDamaged is not null) or (PickupDate > getdate() and IsDamaged is null)),
	constraint ck_if_IsDamaged_is_null_or_0_DamageDesc_and_DamagePrice_must_also_be_null_or_blank_otherwise_it_should_have_value check(((IsDamaged is null or IsDamaged = 0) and DamageDesc = '' and DamagePrice is null) or (IsDamaged = 1 and DamageDesc > '' and DamagePrice is not null))
)
go