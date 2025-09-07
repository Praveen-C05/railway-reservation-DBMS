-- CREATE the User table
CREATE TABLE P_USER (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    adhar_no VARCHAR(20),
    gender CHAR(1), 
    age INT,
    mobile_no VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(20),
    password VARCHAR(50),
    security_ques VARCHAR(50),
    security_ans VARCHAR(50)
);

-- Create the TRAIN table
CREATE TABLE TRAIN (
    train_no INT PRIMARY KEY,
    train_name VARCHAR(50),
    arrival_time TIMESTAMP,
    departure_time TIMESTAMP,
    availability_of_seats CHAR(1), 
    Journey DATE
);

-- Create the STATION table
CREATE TABLE STATION (
    station_no INT PRIMARY KEY, 
    train_no INT,
    name VARCHAR(50),
    hault INT,
    arrival_time TIMESTAMP,
    FOREIGN KEY (train_no) REFERENCES TRAIN(train_no)
);

-- Create the TRAIN_STATUS table
CREATE TABLE TRAIN_STATUS (
    train_no INT PRIMARY KEY,
    b_seats1 INT,
    b_seats2 INT,
    a_seats1 INT,
    a_seats2 INT,
    w_seats1 INT,
    w_seats2 INT,
    fare1 FLOAT,
    fare2 FLOAT
);

-- Create the TICKET table
CREATE TABLE TICKET (
    id INT PRIMARY KEY,
    user_id INT,
    status CHAR(1), 
    no_of_passengers INT,
    train_no INT,
    FOREIGN KEY (user_id) REFERENCES P_USER(user_id),
    FOREIGN KEY (train_no) REFERENCES TRAIN(train_no)
);

-- Create the PASSENGER table
CREATE TABLE PASSENGER (
    passenger_id INT PRIMARY KEY, 
    pnr_no INT,
    age INT,
    gender CHAR(1), 
    user_id INT,
    reservation_status CHAR(1), 
    seat_number VARCHAR(5),
    name VARCHAR(50),
    ticket_id INT,
    FOREIGN KEY (user_id) REFERENCES P_USER(user_id),
    FOREIGN KEY (ticket_id) REFERENCES TICKET(id)
);

-- Create STARTS table
CREATE TABLE STARTS (
    train_no INT,
    station_no INT,
    PRIMARY KEY (train_no, station_no),
    FOREIGN KEY (train_no) REFERENCES TRAIN(train_no),
    FOREIGN KEY (station_no) REFERENCES STATION(station_no)
);

-- Create STOPS_AT table
CREATE TABLE STOPS_AT (
    train_no INT,
    station_no INT,
    PRIMARY KEY (train_no, station_no),
    FOREIGN KEY (train_no) REFERENCES TRAIN(train_no),
    FOREIGN KEY (station_no) REFERENCES STATION(station_no)
);

-- Create REACHES table
CREATE TABLE REACHES (
    train_no INT,
    station_no INT,
    time TIMESTAMP,
    PRIMARY KEY (train_no, station_no),
    FOREIGN KEY (train_no) REFERENCES TRAIN(train_no),
    FOREIGN KEY (station_no) REFERENCES STATION(station_no)
);

-- Create BOOKS table
CREATE TABLE BOOKS (
    user_id INT,
    id INT,
    FOREIGN KEY (user_id) REFERENCES P_USER(user_id),
    FOREIGN KEY (id) REFERENCES TICKET(id)
);

-- Create CANCEL table
CREATE TABLE CANCEL (
    user_id INT,
    id INT,
    passenger_id INT,
    FOREIGN KEY (user_id) REFERENCES P_USER(user_id),
    FOREIGN KEY (id) REFERENCES TICKET(id),
    FOREIGN KEY (passenger_id) REFERENCES PASSENGER(passenger_id)
);
