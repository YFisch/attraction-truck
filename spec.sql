/*
 Hi, my name is Joe and I have a business called Attraction-Truck. It's basically that I own lots of small attractions like jumping balloons, bumping cars… I even have a mini ferris wheel and I rent it out for people to enjoy.

I used to keep track of my business on pen and paper but it got too complicated due to an overflow of bookings in the last year. My orders got all mixed up and the last few months there were wrong deliveries.

I need to setup a database to record all my information so my business can continue to flow smoothly.

I need the customer information like the first and last name, address, phone number
And I also need the order information like the attraction type the date to be delivered and to be picked up, the price per day, the total price and the delivery fee.
 
Sometimes we get back the attraction with damages so we need to know if it’s the case by this one (Yes/No) and what part and the price we asked from the customer for the damage.

Question: when did your company open?
Answer: in 2013, but I lost all my data so I’m starting to record from this year 2023

Question: what’s the minimum and maximum time that an attraction could be rented out?
Answer: minimum is one day, so that means you can’t get it and be picked up on the same day and I don’t really have a maximum because for me it’s the longer the better.
	
Question: do you have more than one of one type of attraction?
Answer: no, we only own one of each.

Question: what’s the minimum and maximum price you rent an attraction for?
Answer: the minimum is fifty and the maximum is ten thousand.

Question: where does your company service?
Answer: In all of North America, that is Canada, United States, and Mexico.

Question: do you want the whole address in one column or divided?
Answer: I want only the country seperate.

Question: do you have to give a date when it should be picked up when it’s being ordered or can you decide later?
Answer: you must give it when you place your order it should not overlap with other orders.

Question: do you always ask a fee for damages and what is your price range?
Answer: we always do but it can be as low as a dollar and as high hundred thousand depends on The damage.

Question: can a customer order more than one attraction?
Answer: yes, but we enter it as a separate order.

Notes
1: I have I lot of different types of jumping balloons so for this I need a separate column 
   with the jumping balloon type. 
2: The delivery fee is twenty if your total price is under two hundred. If it’s two hundred or 
   Over than it’s ten.

I’ll need these reports:
1: I want to know in which country I make the most profit, I need the sum of my profit per country. There is no need to include the delivery fee as it goes straight to the driver
2: I want to expand myself so I could except more orders, I want to know what I should buy more of. count the attractions per type.
3: I need the customer information in the following format: 
LastName, FirstName – Attraction (Totalprice), CountryDelivered
4: I want to know how many days the attractions were ordered, ordered from most to least days

Sample Data:
CustomerName, Address, PhoneNumber, AttractionType, DelivaryDate, PickupDate, PricePerDay, Damaged, DamageDesc, DamagePrice
Rivka Reich, 21 Glen Lane Bremen Georgia United States 56299, 654-784-3457, Merry Go Round, Jan 1 2023, Jan 4 2023, $200, no
Judy Shnall, 55 Stamford Rd Mexico City Mexico 98736, 756-374-7447, Tree House Jumping Balloon, March 22 2023, April 10 2023, $100, no
Yaakov Rosen, 5523 17th Ave Brooklyn New York United States 11219, 718-938-3745, Bumping Cars, Feb 10 2023, Feb 15 2023, $3000, yes, Two motors from cars are broken and unrepairable, $5000
Max Brim, 444 Ducharme Ave Montreal Quebec Canada 65489, 514-964-7654, Merry Go Round, June 20 2023, Aug 1 2023, $200
Aliza Smith, 5724 Lang St San Diego California United States 45832, 632-485-1234, Ferris wheel, May 10 2023, May 11 2023, $5000
Julie Blanks, 22 Grand St Watertown South Dakota United states 21345, 123-456-7890, Big monkey Jumping Balloon, Jan 22 2023, Feb 22 2023, $450, no
Ella Drig, 8 Summer Drive Miami Florida United States 87609, 519-269-6008, Train on Tracks, March 5 2023, March 7 2023, $1500, yes, Five tracks fell off, $100
Sam Truman, 1123 Main St Ottawa Ontario Canada 87534, 452-088-3012, Bumping Cars, April 10 2023, May 1 2023, $3000 
Shmuel Cohen, 55 Tim Drive Phoenix Arizona United States 47283, 987-765-8422, Big Monkey Jumping Balloon, March 1 2023, March 10 2023, $450, yes, Big hole on the monkey’s nose, $200
Judy Shnall, 55 Stamford Rd Mexico City Mexico 98736, 756-374-7447, Electric Swings, June 2 2023 June 15 2023, $2500
Mark Baker, 5 Sand Ave Cancun Mexico 98542, 756-999-7765, Train on Tracks, May 1 2023, June 1 2023, $1500
Mark Baker, 5 Sand Ave Cancun Mexico 98542, 756-999-7765, Ferris Wheel, May 1 2023, June 1 2023, $5000
Yitzchok Hager, 21 Maple St Monsey New York United States 29564, 845-323-3322, Merry go round, April 3 2023, April 11 2023, yes, Floor was scratched more than usual, $50
Shaindy Press, 20 Cedar court Lakewood New Jersey United States 08701, 732-272-7273, Electric swing, Jan 2 2023, Jan 5 2023, $2500, no
Ella Drig, 8 Summer Drive Miami Florida United States 87609, 519-269-6008, Flying Airplane Jumping Balloon, August 10 2023, August 11 2023, $150
*/
