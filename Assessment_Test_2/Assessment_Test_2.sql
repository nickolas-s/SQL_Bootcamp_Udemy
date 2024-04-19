-- QUESTION 1
SELECT *
FROM cd.facilities

-- QUESTION 2
SELECT name, membercost
FROM cd.facilities

-- QUESTION 3
SELECT *
FROM cd.facilities
WHERE membercost != 0

-- QUESTION 4
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50)

-- QUESTION 5
SELECT *
FROM cd.facilities
WHERE name LIKE '%Tennis%'

-- QUESTION 6
SELECT *
FROM cd.facilities
WHERE facid IN (1,5)

-- QUESTION 7
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01'

-- QUESTION 8
SELECT DISTINCT(surname)
FROM cd.members
ORDER BY surname
LIMIT 10

-- QUESTION 9
SELECT MAX(joindate) as "latest_signup"
FROM cd.members

-- QUESTION 10
SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10

-- QUESTION 11
SELECT facid, SUM(slots) AS "Total Slots"
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots)

-- QUESTION 12
SELECT facid, SUM(slots) AS "total_slots"
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid

-- QUESTION 13
SELECT starttime, name
FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE starttime BETWEEN '2012-09-21 00:00:00' AND '2012-09-21 23:00:00'
	AND name LIKE 'Tennis%'
ORDER BY starttime

-- QUESTION 14
SELECT starttime, firstname|| ' ' || surname as "member"
FROM cd.bookings
INNER JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE surname = 'Farrell' AND firstname = 'David'