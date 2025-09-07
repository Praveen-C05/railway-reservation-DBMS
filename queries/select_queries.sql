-- 1. Find users booked in Pinakini Express
SELECT u.user_id, CONCAT(u.first_name, u.last_name) AS name
FROM P_USER u
JOIN ticket te ON u.user_id = te.user_id
JOIN train t ON t.train_no = te.train_no
WHERE t.train_name LIKE 'pinakini exp';

-- 2. Passenger details for ticket_id 4001
SELECT * FROM passenger WHERE ticket_id LIKE '%4001%';

-- 3. Trains reaching Vijayawada
SELECT t.*
FROM train t
JOIN reaches r ON t.train_no = r.train_no
JOIN station s ON r.station_no = s.station_no
WHERE s.name LIKE 'Vijayawada';

-- 4. Show Reaches details with station names
SELECT r.*, s.name
FROM reaches r
JOIN station s ON r.station_no = s.station_no;

-- 5. Users who cancelled tickets for train 12711
SELECT u.*
FROM P_USER u
JOIN cancel c ON u.user_id = c.user_id
JOIN ticket t ON c.id = t.id
WHERE t.train_no = 12711;

-- 6. Train fares in ascending order
SELECT ts.train_no, ts.fare1, ts.fare2, t.train_name
FROM train_status ts
JOIN train t ON t.train_no = ts.train_no
ORDER BY ts.fare1, ts.fare2 ASC;

-- 7. Passengers in Pinakini Express
SELECT p.*
FROM passenger p
JOIN ticket tc ON p.ticket_id = tc.id
JOIN train t ON tc.train_no = t.train_no
WHERE t.train_name LIKE 'pinakini exp';

-- 8. Find trains starting at Tirupathi and stopping at Vijayawada
SELECT DISTINCT t.*
FROM train t, starts st, stops_at sa
WHERE st.station_no = (SELECT station_no FROM station WHERE name LIKE 'tirupathi')
AND sa.station_no = (SELECT station_no FROM station WHERE name LIKE 'vijayawada');

-- 9. Train with max halt
SELECT train_no
FROM station
WHERE hault = (SELECT MAX(hault) FROM station);

-- 10. Tickets with cancelled status on train 12711
SELECT t.*
FROM ticket t
WHERE t.status = 'C' AND t.train_no = 12711;
