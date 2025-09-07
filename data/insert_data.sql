-- Insert Users
INSERT INTO P_USER VALUES
(1701, 'vijay', 'sharma', '309887340843', 'M', 34, '9887786655', 'vijay1@gmail.com', 'vijayawada', 'andhrapradesh', '520001', '12345@#', 'favouritecolour', 'red'),
(1702, 'rohith', 'kumar', '456709871234', 'M', 45, '9809666555', 'rohithkumar@gmail.com', 'guntur', 'andhrapradesh', '522004', '12@#345', 'favouritebike', 'bmw'),
(1703, 'manasvi', 'sre', '789012345678', 'F', 28, '9995550666', 'manasvi57@gmail.com', 'guntur', 'andhrapradesh', '522004', '0987hii', 'favouriteflower', 'rose'),
(1704, 'Amit', 'Verma', '785432109876', 'M', 28, '9876543210', 'amit.verma@gmail.com', 'Hyderabad', 'Telangana', '500032', 'amitpass#', 'favoriteanimal', 'tiger'),
(1705, 'Priya', 'Singh', '567890123456', 'F', 22, '9876545678', 'priya.singh@gmail.com', 'Chennai', 'Tamil Nadu', '600001', '12345678', 'favoritemovie', 'Inception'),
(1706, 'Rahul', 'Mishra', '234567890123', 'M', 35, '9876098765', 'rahul.mishra@gmail.com', 'Mumbai', 'Maharashtra', '400001', 'rahulpass@', 'favoritebook', 'The Alchemist');

-- Insert Trains
INSERT INTO TRAIN VALUES
(12711, 'pinakini exp', '2017-04-10 11:30:00', '2017-04-10 11:40:00', 'A', '2017-04-10'),
(12315, 'cormandel exp', '2017-04-10 12:45:00', '2017-04-10 12:50:00', 'N', '2017-04-10'),
(12716, 'Chennai Express', '2017-04-10 08:30:00', '2017-04-10 08:45:00', 'A', '2017-04-10'),
(12320, 'Mumbai Rajdhani', '2017-04-10 08:00:00', '2017-04-10 08:15:00', 'A', '2017-04-10'),
(12719, 'Bengaluru Shatabdi', '2017-04-10 11:00:00', '2017-04-10 11:15:00', 'A', '2017-04-10');

-- Insert Stations
INSERT INTO STATION VALUES
(111,12711,'vijayawada', 10, '2017-04-10 11:30:00'),
(222,12315,'tirupathi', 5, '2017-04-10 11:45:00'),
(333,12716,'Chennai Central', 15, '2017-04-10 08:30:00'),
(444,12320,'Mumbai CST', 10, '2017-04-10 08:15:00'),
(555,12719,'Bengaluru City', 10, '2017-04-10 11:00:00');

-- Insert Train Status
INSERT INTO TRAIN_STATUS VALUES
(12711, 4, 0, 1, 1, 10, 0, 100, 450),
(12315, 5, 0, 0, 2, 10, 1, 300, 600),
(12716, 4, 0, 1, 1, 5, 0, 120, 500),
(12320, 3, 1, 0, 2, 8, 1, 250, 700),
(12719, 5, 0, 1, 1, 6, 0, 150, 550);

-- Insert Tickets
INSERT INTO TICKET VALUES
(4001, 1701, 'C', 1, 12711),
(4002, 1702, 'N', 1, 12315),
(4003, 1703, 'C', 2, 12711),
(4004, 1704, 'N', 3, 12315),
(4005, 1705, 'C', 1, 12716);

-- Insert Passengers
INSERT INTO PASSENGER VALUES
(5001,78965, 45, 'M', 1701, 'C', 'B6-45', 'ramesh', 4001),
(5002,54523, 54, 'F', 1702, 'W', 'B3-21', 'surekha', 4002),
(5003,78966, 32, 'M', 1703, 'C', 'A3-10', 'Kiran', 4003),
(5004,54524, 29, 'F', 1704, 'W', 'B2-21', 'Neha', 4004),
(5005,78967, 27, 'M', 1705, 'C', 'C4-5', 'Rajesh', 4005);

-- Insert Starts
INSERT INTO STARTS VALUES
(12711,111),
(12315,222),
(12716,333),
(12320,444),
(12719,555);

-- Insert Stops
INSERT INTO STOPS_AT VALUES
(12711,111),
(12315,222),
(12716,333),
(12320,444),
(12719,555);

-- Insert Reaches
INSERT INTO REACHES VALUES
(12711,111,'2017-04-11 04:00:00'),
(12315,222,'2017-04-11 05:35:00'),
(12716,333,'2017-04-11 07:00:00'),
(12320,444,'2017-04-11 08:30:00'),
(12719,555,'2017-04-11 09:45:00');

-- Insert Books
INSERT INTO BOOKS VALUES
(1701,4001),
(1702,4002),
(1703,4003),
(1704,4004),
(1705,4005);

-- Insert Cancel
INSERT INTO CANCEL VALUES
(1701,4001,5001),
(1702,4002,5002),
(1703,4003,5003),
(1704,4004,5004),
(1705,4005,5004);
