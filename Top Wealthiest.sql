DROP DATABASE IF EXISTS wealthdb;
CREATE DATABASE wealthdb;
Use wealthdb;

DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS source;
DROP TABLE IF EXISTS industry;

CREATE TABLE person (
	person_id INT AUTO_INCREMENT PRIMARY KEY,             
    position INT NOT NULL,                         
    person_name varchar(255) NOT NULL,  
    age INT NOT NULL,
    country varchar(255) NOT NULL,
    networth varchar(255) NOT NULL
);

CREATE TABLE source (
	source_id INT AUTO_INCREMENT PRIMARY KEY,             
    source_name varchar(255) NOT NULL,                         
    industry_id INT NOT NULL,  
    FOREIGN KEY (industry_id) REFERENCES industry(industry_id)
);

CREATE TABLE industry (
	industry_id INT AUTO_INCREMENT PRIMARY KEY,             
    industry_name varchar(255) NOT NULL                        
);

CREATE TABLE person_source (
	person_id INT NOT NULL,
    source_id INT NOT NULL,
    PRIMARY KEY (person_id, source_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (source_id) REFERENCES source(source_id)
);

INSERT INTO person (position, person_name, age, country, networth) VALUES
(1, 'Bernard Arnault', '75', 'France', '233'),
(2, 'Elon Musk', '52', 'United States', '195'),
(3, 'Jeff Bezos', '60', 'United States', '194'),
(4, 'Mark Zuckerberg', '39', 'United States', '177'),
(5, 'Larry Ellison', '79', 'United States', '141'),
(6, 'Warren Buffett', '93', 'United States', '133'),
(6, 'Warren Buffett', '93', 'United States', '133'),
(7, 'Bill Gates', '68', 'United States', '128'),
(8, 'Steve Ballmer', '68', 'United States', '121'),
(9, 'Mukesh Ambani', '66', 'India', '116'),
(10, 'Larry Page', '51', 'United States', '114'),
(11, 'Sergey Brin', '50', 'United States', '110'),
(12, 'Michael Bloomberg', '82', 'United States', '106'),
(13, 'Amancio Ortega', '88', 'Spain', '103'),
(14, 'Carlos Slim Helu ', '84', 'Mexico', '102'),
(15, 'Francoise Bettencourt Meyers ', '70', 'France', '100'),
(16, 'Michael Dell', '59', 'United States', '91'),
(17, 'Gautam Adani', '61', 'India', '84'),
(18, 'Jim Walton ', '75', 'United States', '78'),
(19, 'Rob Walton ', '79', 'United States', '77'),
(20, 'Jensen Huang', '61', 'United States', '77'),
(21, 'Alice Walton', '74', 'United States', '72'),
(22, 'David Thomson ', '66', 'Canada', '68'),
(23, 'Julia Koch ', '61', 'United States', '64'),
(24, 'Zhong Shanshan', '69', 'China', '62'),
(25, 'Charles Koch ', '88', 'United States', '59'),
(26, 'Giovanni Ferrero', '59', 'Italy', '44'),
(27, 'Prajogo Pangestu', '79', 'Indonesia', '43'),
(27, 'Zhang Yiming', '40', 'China', '43'),
(29, 'Tadashi Yanai ', '75', 'Japan', '43'),
(30, 'Phil Knight ', '86', 'United States', '41'),
(31, 'Mark Mateschitz', '31', 'Austria', '40'),
(32, 'Klaus-Michael Kuehne', '86', 'Germany', '39'),
(33, 'Colin Huang', '44', 'China', '39'),
(34, 'Stephen Schwarzman', '77', 'United States', '39'),
(35, 'Jacqueline Mars', '84', 'United States', '39'),
(35, 'John Mars', '88', 'United States', '39'),
(37, 'Dieter Schwarz', '84', 'Germany', '38'),
(38, 'Li Ka-shing', '95', 'Hong Kong', '37'),
(39, 'Shiv Nadar', '78', 'India', '37'),
(40, 'Alain Wertheimer', '75', 'France', '37'),
(40, 'Gerard Wertheimer', '73', 'France', '37'),
(42, 'Ken Griffin', '55', 'United States', '36'),
(43, 'MacKenzie Scott', '53', 'United States', '36'),
(44, 'Thomas Peterffy', '79', 'United States', '34'),
(45, 'Reinhold Wuerth ', '88', 'Germany', '34'),
(46, 'William Ding', '52', 'China', '34'),
(46, 'Savitri Jindal ', '74', 'India', '34'),
(48, 'Gianluigi Aponte', '83', 'Switzerland', '33'),
(48, 'Rafaela Aponte-Diamant', '79', 'Switzerland', '33'),
(50, 'Changpeng Zhao', '47', 'Canada', '33');




INSERT INTO source (source_name, industry_id) VALUES
('LVMH', 1),
('Tesla, 2', 2),
(' SpaceX', 2),
('Amazon', 3),
('Facebook', 3),
('Oracle', 3),
('Berkshire Hathaway', 4),
('Microsoft', 3),
('diversified', 5),
('Google', 3),
('Bloomberg LP', 4),
('Zara', 1),
('telecom', 6),
('L"Oréal', 1),
('Dell computers', 3),
('infrastructure', 5),
('commodities', 5),
('Walmart', 1),
('Semiconductors', 3),
('Media', 7),
('Koch Industries', 5),
('beverages', 8),
(' pharmaceuticals', 8),
('Nutella', 8),
(' chocolates', 8),
('Petrochemicals', 5),
(' energy', 5),
('TikTok', 3),
('Fashion retail', 1),
('Nike', 1),
('Red Bull', 8),
('shipping', 9),
('E-commerce', 3),
('Investments', 4),
('Candy', 8),
(' pet food', 8),
('Retail', 1),
('software services', 3),
('Chanel', 1),
('Hedge funds', 4),
('Discount brokerage', 4),
('Fasteners', 10),
('Online games', 3),
('steel', 11),
('Cryptocurrency exchange', 4),
('Telecom', 4),
(' Investments', 4),
('Music', 5),
(' chemicals', 5),
('Casinos', 12),
('Luxury goods', 1),
('mining', 11),
('internet media', 3),
('Fidelity Investments', 4),
('Oil', 13),
('Real estate', 14),
('Trading', 1),
('Financial software', 1),
('Coal', 13),
('Gas', 13),
(' chemicals', 13),
('BMW', 2),
('Pharmaceuticals', 15),
(' transport', 11),
('Banking', 1),
(' tobacco', 1),
(' pharmaceuticals', 2),
('hospitals', 15),
('Quicken Loans', 1),
('Cheese', 8),
('Banking', 16),
(' tobacco', 16),
(' investments', 11),
('Home improvement stores', 1),
('Home appliances', 16),
('Real estate', 5),
(' shipping', 5),
('metals', 11),
('Sensors', 16),
('batteries', 1),
('Vaccines', 15),
('Fertilizers', 11),
(' coal', 11),
('Building supplies', 17),
('Real estate', 14),
('Banking', 4),
('Commodities', 5),
('Warehouse automation', 3),
('Newspapers', 7),
(' TV network', 7);


INSERT INTO industry (industry_name)
 VALUES
('Fashion & Retail'),
('Automotive'),
('Technology'),
('Finance'),
('Diversified'),
('Telecom'),
('Media & Entertainment'),
('Food & Beverage'),
('Logistics'),
('Manufacturing'),
('Metals & Mining'),
('Gambling & Casinos'),
('Energy'),
('Real Estate'),
('Healthcare'),
('Manufacturing'),
('Construction & Engineering');




INSERT INTO person_source (person_id, source_id) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(17, 19),
(18, 20),
(19, 21),
(20, 22),
(21, 23),
(22, 24),
(23, 25),
(24, 26),
(24, 27),
(25, 28),
(26, 29),
(26, 30),
(27, 31),
(27, 32),
(28, 33),
(29, 34),
(30, 35),
(31, 36),
(32, 37),
(33, 38),
(34, 39),
(35, 40),
(35, 41),
(36, 42),
(37, 43),
(38, 44),
(39, 45),
(40, 46),
(41, 47),
(42, 48),
(43, 49),
(44, 50),
(45, 51),
(46, 52),
(47, 53),
(48, 54),
(49, 55),
(50, 56);



-- to retrieve the top 10 wealthiest people 
SELECT person_name AS Person, networth AS NetWorth, country AS Country
FROM person
ORDER BY CAST(REPLACE(REPLACE(networth, '$', ''), ' B', '') AS DECIMAL) DESC
LIMIT 10;

-- to count the number of wealthy individuals from each country
SELECT country AS Country, COUNT(*) AS TotalPeople
FROM person
GROUP BY country
ORDER BY TotalPeople DESC;

-- to calculate the total net worth of individuals grouped by their country.
SELECT country AS Country, 
       CONCAT('$', SUM(CAST(REPLACE(REPLACE(networth, '$', ''), ' B', '') AS DECIMAL)), ' B') AS TotalNetWorth
FROM person
GROUP BY country
ORDER BY SUM(CAST(REPLACE(REPLACE(networth, '$', ''), ' B', '') AS DECIMAL)) DESC;

-- to retrieve the industries that have the most individuals
SELECT i.industry_name AS Industry, COUNT(DISTINCT ps.person_id) AS TotalPeople
FROM industry i
JOIN source s ON i.industry_id = s.industry_id
JOIN person_source ps ON s.source_id = ps.source_id
GROUP BY i.industry_name
ORDER BY TotalPeople DESC;

-- Find the most prominent sources contributing to the wealth of individuals.
SELECT s.source_name AS Source, COUNT(DISTINCT ps.person_id) AS TotalPeople
FROM source s
JOIN person_source ps ON s.source_id = ps.source_id
GROUP BY s.source_name
ORDER BY TotalPeople DESC;

-- to List individuals whose sources belong to the Fashion & Retail industry.
SELECT p.person_name AS Person, i.industry_name AS Industry, s.source_name AS Source
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
WHERE i.industry_name LIKE '%Fashion%' OR i.industry_name LIKE '%Retail%';

-- list from technology industry
SELECT p.person_name, i.industry_name AS industry_name, p.networth
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
WHERE i.industry_name = 'Technology'
ORDER BY p.networth ASC;

-- to calculate the top total combined net worth for each industry.
SELECT i.industry_name AS industry_name, SUM(p.networth) AS total_net_worth
FROM industry i
JOIN source s ON i.industry_id = s.industry_id
JOIN person_source ps ON s.source_id = ps.source_id
JOIN person p ON ps.person_id = p.person_id
GROUP BY i.industry_name
ORDER BY total_net_worth DESC
LIMIT 5;

SELECT person_name, networth, country
FROM person
ORDER BY CAST(networth AS DECIMAL(10,2)) DESC
LIMIT 5;

SELECT country, COUNT(person_id) AS num_billionaires, 
       SUM(CAST(networth AS DECIMAL(10,2))) AS total_networth
FROM person
GROUP BY country
ORDER BY total_networth DESC;

SELECT i.industry_name, MAX(CAST(p.networth AS DECIMAL(10,2))) AS max_networth, p.person_name
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
GROUP BY i.industry_name
ORDER BY max_networth DESC;

SELECT country, COUNT(person_id) AS num_billionaires
FROM person
GROUP BY country
ORDER BY num_billionaires DESC;

SELECT p.person_name, s.source_name, i.industry_name
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
WHERE p.person_name = 'Elon Musk';

SELECT i.industry_name, SUM(CAST(p.networth AS DECIMAL(10,2))) AS total_networth
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
GROUP BY i.industry_name
ORDER BY total_networth DESC;

SELECT p.person_name, COUNT(ps.source_id) AS num_sources
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
GROUP BY p.person_id, p.person_name
HAVING num_sources > 1
ORDER BY num_sources DESC;

SELECT p.country, p.person_name, MAX(CAST(p.networth AS DECIMAL(10,2))) AS max_networth
FROM person p
GROUP BY p.country
ORDER BY max_networth DESC;

SELECT country, ROUND(AVG(CAST(networth AS DECIMAL(10,2))), 2) AS avg_networth
FROM person
GROUP BY country
ORDER BY avg_networth DESC;

--  Creates a view to display the top 10 wealthiest individuals.
CREATE VIEW top_richest_people AS
SELECT person_name, country, networth
FROM person
ORDER BY CAST(networth AS DECIMAL(10,2)) DESC
LIMIT 10;

SELECT * FROM top_richest_people;


-- Displays the total net worth of people grouped by industry.
CREATE VIEW networth_by_industry AS
SELECT i.industry_name, ROUND(SUM(CAST(p.networth AS DECIMAL(10,2))), 2) AS total_networth
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
GROUP BY i.industry_name
ORDER BY total_networth DESC;

SELECT * FROM networth_by_industry;

-- Shows individuals who earn from multiple sources using view
CREATE VIEW people_with_multiple_sources AS
SELECT p.person_name, COUNT(ps.source_id) AS source_count
FROM person p
JOIN person_source ps ON p.person_id = ps.person_id
GROUP BY p.person_id, p.person_name
HAVING COUNT(ps.source_id) > 1
ORDER BY source_count DESC;

SELECT * FROM people_with_multiple_sources;

-- Displays the number of individuals associated with each industry.
CREATE VIEW industry_popularity AS
SELECT i.industry_name, COUNT(DISTINCT ps.person_id) AS individual_count
FROM person_source ps
JOIN source s ON ps.source_id = s.source_id
JOIN industry i ON s.industry_id = i.industry_id
GROUP BY i.industry_name
ORDER BY individual_count DESC;

SELECT * FROM industry_popularity;


-- Shows the average net worth of individuals grouped by their country.
CREATE VIEW avg_networth_by_country AS
SELECT country, ROUND(AVG(CAST(networth AS DECIMAL(10,2))), 2) AS avg_networth
FROM person
GROUP BY country
ORDER BY avg_networth DESC;

SELECT * FROM avg_networth_by_country;

