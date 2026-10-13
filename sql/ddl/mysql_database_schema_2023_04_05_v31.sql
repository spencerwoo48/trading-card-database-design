--Jul 27, 2022
CREATE TABLE inventory (
    item_id INT AUTO_INCREMENT,
    item_title VARCHAR(100),
    item_price DECIMAL(5, 2),
    item_weight_pounds INT DEFAULT 0,
    item_weight_ounces DECIMAL(4, 2),
    item_volume_long_inches DECIMAL(4, 2),
    item_volume_wide_inches DECIMAL(4, 2),
    item_volume_height_inches DECIMAL(4, 2),
    item_postage VARCHAR(24),
    PRIMARY KEY(item_id),
);

SELECT *
FROM inventory;

DROP TABLE inventory;

INSERT INtO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Wacom Cintiq 13HD DTK-1300', 214.53, 7, 14.8, 16.25, 4.5, 12.5, 'FedEx Ground');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Wacom Intuos 5 Touch Medium PtH-650', 59.86, 4, 5.8, 17.75, 2.75, 15.25, 'FedEx Ground');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Revoltech No.076 EVA-01 Test Type New Movie Edition Awakening Version BROKEN HORN', 54, 0, 13.3, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');

UPDATE inventory
SET item_title = 'Wacom Intuos 5 Touch Medium PTH-650'
WHERE item_id = 2;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Revoltech No. 108 Evangelion Evolution: EVA Unit 06 (Kaworu)', 51.95, 0, 13.3, 11.25, 5.75, 8.75, 'Medium Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Naruto manga volumes 1 and 2', 37, 0, 14.5, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');

UPDATE inventory
SET item_postage = 'USPS Medium Flat Rate'
WHERE item_id = 4;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Hasbro Transformers Movie Voyager Ironhide BROKEN BACKPACK', 54, 0, 13.1, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Element Mohave Backpack', 29.23, 1, 3.4, NULL, NULL, NULL, 'USPS Priority Envelope');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Medicom Disney Stitch Ultra Detail Figure', 25.59, 0, 6.4, NULL, NULL, NULL, 'USPS Medium Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Banpresto Pokemon Teddiursa Kusurogi Plush', 25.33, 0, 5.6, NULL, NULL, NULL, 'USPS Priority Envelope');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Burger King Pokemon Toy Lot 7 Pieces', 23.50, 0, 8.6, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Funko POP! How to Train Your Dragon 2 #100 Toothless', 21.78, 0, 9.8, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');

DELETE FROM inventory
WHERE item_id = 12;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('FLCL manga volumes 1 and 2', 20.17, 0, 15, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Hasbro Pokemon Pikachu Talking Plush', 17.06, 0, 11.7, NULL, NULL, NULL, 'USPS Priority Envelope');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('UglyDoll Plunko', 13.77, 0, 3.1, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('UglyDoll Deer Ugly', 13.4, 0, 2.9, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('PEZ dispenser lot 8 pieces', 12.37, 0, 7.1, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Burger King Gold Pokemon Card Polywhirl', 11.58, 0, 0.49, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Pokemon toy lot 5 pieces', 10, 0, 4.2, 8.75, 1.75, 5.25, 'USPS Small Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Funko POP! Marvel Guardians of the Galaxy #48 Rocket Raccoon', 9.89, 0, 9.7, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Disney Infinity 2.0 Big Hero 6 Hiro DAMAGED BOX', 9.20, 0, 9.5, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');
INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('UglyDoll Dog', 13.77, 0, 2.8, 11.25, 5.75, 8.75, 'USPS Medium Flat Rate');

CREATE TABLE buyers (
    buyer_id INT,
    buyer_paid DECIMAL(5, 2),
    buyer_shipping DECIMAL(4, 2),
    buyer_order_number VARCHAR(14),
    buyer_day_sold DATE,
    buyer_handle VARCHAR(12),
    buyer_first VARCHAR(8),
    buyer_last VARCHAR(9),
    buyer_address VARCHAR(60),
    PRIMARY KEY(buyer_id)
);

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(1, 213.84, 25.54, '265589043953', '2022-03-15', 'courcof55', 'Courtney', 'Coffman', '835 S Oxford Ave Apt 112 Los Angeles CA 90005-2937 US');

DROP TABLE buyers;

SELECT *
FROM buyers;

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(2, 62.01, 16.29, '265589050987', '2022-03-17', 'aboveaverage', 'Rubin', 'Middleton', '2398 WALTHAM ST Pensacola FL 32505-3465 US');


INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(3, 30.00, 9.45, '11-08425-90909', '2022-03-24', 'patwa9798', 'Patrick', 'Walsh', '5436 Hibiscus Ave Port Orange FL 32127-6210 US');

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(4, 32.88, 8.95, '20-08489-89553', '2022-04-09', 'larkin827', 'James', 'Larkin', '233 linda ave hawthorne NY 10532-2020 US');

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(5, 17.06, 8.95, '08-08603-05680', '2022-05-08', 'wwilloww', 'John', 'Gloor', '1047 Fritz Rd McKinleyville CA 95519-4107 US');

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(6, 13.77, 9.45, '27-08666-63764', '2022-05-25', 'sanfrandays', 'Jill', 'Jones', '54 La Cresta Dr Petaluma CA 94952-2463 US');

UPDATE buyers
SET buyer_order_number = '21-08383-39411'
WHERE buyer_id = 1;

UPDATE buyers
SET buyer_order_number = '01-08399-24490'
WHERE buyer_id = 2;

ALTER TABLE inventory
ADD buyer_id INT;

UPDATE inventory
SET buyer_id = 1
WHERE item_id = 1;

UPDATE inventory
SET buyer_id = 2
WHERE item_id = 2;

UPDATE inventory
SET buyer_id = 3
WHERE item_id = 13;

UPDATE inventory
SET buyer_id = 4
WHERE item_id = 7;

UPDATE inventory
SET buyer_id = 5
WHERE item_id = 14;

UPDATE inventory
SET buyer_id = 6
WHERE item_id = 22;

ALTER TABLE inventory
ADD FOREIGN KEY(buyer_id)
REFERENCES buyers(buyer_id)
ON DELETE SET NULL;

SELECT DISTINCT item_volume_wide_inches
FROM inventory;

SELECT COUNT(buyer_day_sold)
FROM buyers
WHERE buyer_day_sold > '2022-04-01';

SELECT *
FROM buyers;


SELECT SUM(buyer_paid)
FROM buyers;

SELECT *
FROM buyers
WHERE buyer_day_sold LIKE '____-03%';


SELECT *
FROM inventory
WHERE item_title LIKE '%pokemon%';

SELECT buyer_first
FROM buyers
UNION
SELECT item_title
FROM inventory;

SELECT *
FROM inventory
WHERE item_price < 20;



SELECT inventory.item_title, buyers.buyer_handle, buyers.buyer_first, buyers.buyer_last
FROM inventory
JOIN buyers
ON inventory.buyer_id = buyers.buyer_id;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Incase Paul Rodriguez Duffel Bag', '170.00', NULL, NULL, NULL, NULL, NULL, NULL);

ALTER TABLE buyers MODIFY buyer_order_number VARCHAR(17);

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(7, 170.00, 11.55, '0RT47098PU346734H', '2015-04-13', 'nikeswoosh24', 'shane', 'lewis', '1810 Kaioo Dr Apt B309 Honolulu, HI 96815-5822 US');

UPDATE inventory
SET buyer_id = 7
WHERE item_id = 23;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Tjack Amazing Spider-Man 2 Face Shell and Magnetic Lenses', 150.00, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(8, 150.00, 8.65, '262846688415', '2017-02-20', 'donn.skag', 'Donnie', 'Skaggs', '852 Ford St Alcoa, TN 37701 United States');

UPDATE inventory
SET buyer_id = 8
WHERE item_id = 24;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Oakley AP Backpack 3.0', 202.75, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(9, 202.75, 7.60, '263058286057', '2018-01-03', 'd.mccrork', 'David', 'Mccrork', '17 Pebble Cove Rittman, OH 44270 United States');

UPDATE inventory
SET buyer_id = 9
WHERE item_id = 25;

INSERT INTO inventory(item_title, item_price, item_weight_pounds, item_weight_ounces, item_volume_long_inches, item_volume_wide_inches, item_volume_height_inches, item_postage) VALUES('Amazing Spider-Man 2 Zentai Shiny Lycra Medium TASM2', 140.30, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO buyers(buyer_id, buyer_paid, buyer_shipping, buyer_order_number, buyer_day_sold, buyer_handle, buyer_first, buyer_last, buyer_address) VALUES(10, 143.80, 3.50, '263058321886', '2018-05-28', 'mac3po', 'Melchor', 'Dina', '310 Green Oak Drive Crestview, FL 32539 United States');

UPDATE inventory
SET buyer_id = 10
WHERE item_id = 26;

SELECT SUM(buyer_paid)
FROM buyers
WHERE buyer_day_sold >= '2022-03-15';

UPDATE buyers
SET buyer_order_number = '	261846581225'
WHERE buyer_id = 7;

CREATE TABLE collection (
    item_id INT AUTO_INCREMENT,
    card_name VARCHAR(64),
    mana_cost VARCHAR(32),
    converted_mana_cost INT,
    kind VARCHAR(64),
    card_text VARCHAR(512),
    flavor_text VARCHAR(512),
    punch INT,
    toughness INT,
    loyalty INT,
    extension VARCHAR(64),
    rarity VARCHAR(32),
    card_number INT,
    artist VARCHAR(32),
    PRIMARY KEY(item_id)
);

SELECT *
FROM collection;

DROP TABLE collection;

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Vapor Snag', 'U', 1, 'Instant', 'Return target creature to its owner''s hand.  Its controller loses 1 life.', 'This creature is inadequate.  Send it to the splicers for innovation.', NULL, NULL, NULL, 'New Phyrexia', 'Common', 48, 'Raymond Swanland');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Rift Bolt', '2R', 3, 'Sorcery', 'Rift Bolt deals 3 damage to target creature or player. Suspend 1—R (Rather than play this card from your hand, you may pay R and remove it from the game with a time counter on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.)', NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 184, 'Michael Sutfin');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Lightning Bolt', 'R', 1, 'Instant', 'Lightning Bolt deals 3 damage to target creature or player', 'The sparkmage shrieked, calling on the rage of the storms of his youth.  To his surprise, the sky responded with a fierce energy he''d never thought to see again.', NULL, NULL, NULL, 'Tenth Edition', 'Common', 149, 'Christopher Moeller');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Geist of Saint Traft', '1WU', 3, 'Legendary Creature — Spirit Cleric', 'Hexproof (This creature can''t be the target of spells or abilities your opponents control.) Whenever Geist of Saint Traft attacks, put a 4/4 white Angel creature token with flying onto the battlefield tapped and attacking.  Exile that token at end of combat.', NULL, 2, 2, NULL, 'Innistrad', 'Mythic Rare', 213, 'Igor Kieryluk');

UPDATE collection
SET rarity = 'Foil Mythic Rare'
WHERE item_id = 4;

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Elfhame Palace', NULL, NULL, 'Land', 'Elfhame Palace comes into play tapped. T: Add G or W to your mana pool.', 'The elfhames are the closest thing to "civilizaation" the elves allow themselves', NULL, NULL, NULL, 'Eigth Edition', 'Uncommon', 324, 'Anthony S. Waters');

UPDATE collection
SET extension = 'Eighth Edition'
WHERE item_id = 5;

UPDATE collection
SET rarity = 'Mythic Rare'
WHERE item_id = 4;

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Seasoned Marshal', '2WW', 4, 'Creature — Soldier',  'Whenever Seasoned Marshal attacks you may tap target creature', 'She reads the battlefield like a map, always seeking the shortest route to victory.', 2, 2, NULL, 'Eighth Edition', 'Uncommon', 44, 'Matthew D. Wilson');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Spirit Link', 'W', 1, 'Enchant Creature',  'Whenever enchanted creature deals damage, you gain that much life.', 'I am bound to all my children.  I share in their joys, I rage at their injuries', NULL, NULL, NULL, 'Eighth Edition', 'Uncommon', 47, 'Kev Walker');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Staunch Defenders', '3WW', 5, 'Creature — Soldier', 'When Staunch Defendes comes into play, you gain 4 life.', 'The key to winning any fight is simply staying alive.', 3, 4, NULL, 'Eighth Edition', 'Uncommon', 49, 'Tristan Elwell');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Ogre Taskmaster', '3R', 4, 'Creature — Ogre', 'Ogre Taskmaster can''t block.', 'Ogres learn how to smash stuff even before they learn how to walk.', 4, 3, NULL, 'Eighth Edition', 'Uncommon', 205, 'Dany Orizio');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Wall of Stone', '1RR', 3, 'Creature — Wall', 'Walls can''t attack.', 'The ground itself lends its strength to these walls of living stone, which possess the stability of ancient mountains.  These mighty bulwarks thwart ground-based troops, providing welcome relief for weary warriors who defend the land.', 0, 8, NULL, 'Eighth Edition', 'Uncommon', 232, 'Rob Alexander');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Wall of Stone', '1RR', 3, 'Creature — Wall', 'Walls can''t attack.', 'The ground itself lends its strength to these walls of living stone, which possess the stability of ancient mountains.  These mighty bulwarks thwart ground-based troops, providing welcome relief for weary warriors who defend the land.', 0, 8, NULL, 'Eighth Edition', 'Uncommon', 232, 'Rob Alexander');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Enormous Baloth', '6G', 7, 'Creature — Beast', NULL, 'The ground itself lends its strength to these walls of living stone, which possess the stability of ancient mountains.  Its diet consists of fruits, plants, small woodland animals, large woodland animals, woodlands, fruit groves, fruit farmers, and small cities.', 7, 7, NULL, 'Eighth Edition', 'Uncommon', 6, 'Mark Tedin');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Enormous Baloth', '6G', 7, 'Creature — Beast', NULL, 'The ground itself lends its strength to these walls of living stone, which possess the stability of ancient mountains.  Its diet consists of fruits, plants, small woodland animals, large woodland animals, woodlands, fruit groves, fruit farmers, and small cities.', 7, 7, NULL, 'Eighth Edition', 'Uncommon', 6, 'Mark Tedin');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Redeem', '1W', 2, 'Instant', 'Prevent all damage that would be dealt this turn to up to two target creatures', 'Let me redeem my brothers both from death. —William Shakespeare, Titus Andronicus', NULL, NULL, NULL, 'Eighth Edition', 'Common', 37, 'D. Alexander Gregory');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Spined Wurm', '4G', 5, 'Creature — Wurm', NULL, '"I Wouldn''t stand in front of that wurm, son.  ''Course, I wouldn''t stand behind it neither.  In fact, standing anywhere near that wurm''s not much of a plan.  Running, now that''s a plan!"', 5, 4, NULL, 'Eighth Edition', 'Common', 279, 'Keith Parkinson');

--DELETE FROM collection WHERE item_id = 15;

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Unholy Strength', 'B', 1, 'Enchant Creature', 'Enchanted creature gets +2/+1.', 'Such power grows the body as it shrinks the soul.', NULL, NULL, NULL, 'Eighth Edition', 'Common', 169, 'Puddnhead');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Goblin Raider', '1R', 2, 'Creature — Goblin', 'Goblin Raider can''t block.', 'Such power grows the body as it shrinks the soul.', 2, 2, NULL, 'Eighth Edition', 'Common', 191, 'Greg Staples');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Goblin Raider', '1R', 2, 'Creature — Goblin', 'Goblin Raider can''t block.', 'Such power grows the body as it shrinks the soul.', 2, 2, NULL, 'Eighth Edition', 'Common', 191, 'Greg Staples');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Hill Giant', '3R', 4, 'Creature — Giant', NULL, 'Bent on a quest for blood, a giant can storm through a fort''s wall as if it were nothing more than a picket fence.', 3, 3, NULL, 'Eighth Edition', 'Common', 194, 'Dany Orizio');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Hill Giant', '3R', 4, 'Creature — Giant', NULL, 'Bent on a quest for blood, a giant can storm through a fort''s wall as if it were nothing more than a picket fence.', 3, 3, NULL, 'Eighth Edition', 'Common', 194, 'Dany Orizio');

--INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Lava Axe', '4R', 5, 'Sorcery', 'Lava Axe deals 5 damage to target player.', '"Catch!"', NULL, NULL, NULL, 'Eighth Edition', 'Common', 197, 'Brian Snoddy');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Lava Axe', '4R', 5, 'Sorcery', 'Lava Axe deals 5 damage to target player.', '"Catch!"', NULL, NULL, NULL, 'Eighth Edition', 'Common', 197, 'Brian Snoddy');
DELETE FROM collection WHERE item_id = 22;

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Reflexes', 'R', 1, 'Enchant Creature', 'Enchanted Creature has first strike. (It deals combat damage before creatures without first strike)', '"Be as fast as lightning, and you will be just as deadly."—Combat trainer', NULL, NULL, NULL, 'Eighth Edition', 'Common', 213, 'Steve White');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Grizzly Bears', '1G', 2, 'Creature — Bear', NULL, 'Don''t try to outrun one of Dominaria''s grizzlies; it''ll catch you, knock you down, and eat you.  Of Course, you could run up a tree.  In that case you''ll get a nice view before it knocks the tree down and eat you.', 2, 2, NULL, 'Eighth Edition', 'Common', 256, 'D.J. Cleland-Hura');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Grizzly Bears', '1G', 2, 'Creature — Bear', NULL, 'Don''t try to outrun one of Dominaria''s grizzlies; it''ll catch you, knock you down, and eat you.  Of Course, you could run up a tree.  In that case you''ll get a nice view before it knocks the tree down and eat you.', 2, 2, NULL, 'Eighth Edition', 'Common', 256, 'D.J. Cleland-Hura');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Norwood Ranger', 'G', 1, 'Creature — Elf', NULL, 'The songn of the forest is in perfect harmony.  If a single note is out of place, the elves will find its source.', 1, 2, NULL, 'Eighth Edition', 'Common', 271, 'Ron Spencer');

INSERT INTO collection(card_name, mana_cost, converted_mana_cost, kind, card_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Rampant Growth', '1G', 2, 'Sorcery', 'Search your library for a basic land card and put that land card into play tapped.', 'Nature grows solutions to her problems', NULL, NULL, NULL, 'Eighth Edition', 'Common', 274, 'Tom Kyffin');

UPDATE collection
SET flavor_text = 'The song of the forest is in perfect harmony.  If a single note is out of place, the elves will find its source.'
WHERE item_id = 27;

UPDATE collection
SET card_text = NULL
WHERE item_id = 27;

SELECT *
FROM collection
WHERE extension = 'Eighth Edition'
ORDER BY card_number;

-- collection, name, type, power, and expansion are reserved words.
CREATE TABLE mtg (
    item_id INT AUTO_INCREMENT,
    title VARCHAR(32),
    mana_cost VARCHAR(16),
    converted_mana_cost INT,
    kind VARCHAR(24),
    rules_text VARCHAR(656),
    flavor_text VARCHAR(200),
    punch INT,
    toughness INT,
    loyalty INT,
    extension VARCHAR(64),
    rarity VARCHAR(16),
    card_number INT,
    artist VARCHAR(24),
    PRIMARY KEY(item_id)
);

SELECT *
FROM mtg;

INSERT INTO mtg(title, mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Arcum''s Weathervane', '2', 2, 'Artifact', '2, T:  Target snow land is no longer snow.  2, T:  Target nonsnow basic land  becomes snow.', NULL, NULL, NULL, NULL, 'Ice Age', 'Uncommon', 310, 'Toni Wänerstrand');

UPDATE mtg
SET converted_mana_cost = '2'
WHERE item_id = 1;

INSERT INTO mtg(title, mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Iceberg', 'XUU', 2, 'Enchantment', 'Iceberg comes into play with X ice counters on it.  3:  Put an ice counter on Iceberg.  Remove an ice counter from Iceberg:  Add 1 to your mana pool.', NULL, NULL, NULL, NULL, 'Ice Age', 'Uncommon', 73, 'Jeff A. Menges');

INSERT INTO mtg(title, mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, card_number, artist) VALUES('Essence Flare', 'U', 1, 'Enchantment — Aura', 'Enchant creature  Enchanted creature gets +2/+0.  At the beginning of the upkeep of enchanted creature''s controller, put a -0/-1 counter on that creature.', 'Never underestimate the power of the soul unleashed', NULL, NULL, NULL, 'Ice Age', 'Common', 69, 'Richard Kane Ferguson');

ALTER TABLE mtg
MODIFY COLUMN kind VARCHAR(24);

ALTER TABLE mtg
MODIFY COLUMN artist VARCHAR(24);




CREATE TABLE card (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(32),
    --mana_cost VARCHAR(8),
    --converted_mana_cost INT,
    --kind VARCHAR(248),
    --rules_text VARCHAR(776),
    --flavor_text VARCHAR(200),
    --punch INT,
    --toughness INT,
    --loyalty INT,
    extension VARCHAR(378),
    --rarity VARCHAR(16),
    collector_number INT,
    --artist VARCHAR(32),
    shape VARCHAR(16),
    worth DECIMAL(5,2)
);

DROP TABLE info;
DROP TABLE card;

CREATE TABLE card (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(32),
    extension VARCHAR(32),
    collector_number INT,
    shape VARCHAR(24),
    worth DECIMAL(5,2)
);

CREATE TABLE info (
    mana_cost VARCHAR(8),
    converted_mana_cost INT,
    kind VARCHAR(248),
    rules_text VARCHAR(776),
    flavor_text VARCHAR(248),
    punch INT,
    toughness INT,
    loyalty INT,
    extension VARCHAR(378),
    rarity VARCHAR(16),
    collector_number INT,
    artist VARCHAR(32),
    PRIMARY KEY(extension, collector_number)
);

ALTER TABLE card
ADD FOREIGN KEY (extension, collector_number) REFERENCES info(extension, collector_number) ON DELETE SET NULL;


--SELECT card.item_id AS id, card.title AS "name", info.mana_cost AS "mana cost", info.converted_mana_cost AS "converted mana cost", info.kind AS "type", info.rules_text AS "rules text", info.flavor_text AS "flavor text", info.punch AS "power", info.toughness, info.loyalty, card.extension AS "expansion", info.rarity, card.collector_number AS "collector number", info.artist, card.shape AS "condition", card.worth AS "value"
--FROM card
--JOIN info
--ON card.extension = info.extension AND card.collector_number = info.collector_number;

--INSERT INTO card(title, extension, collector_number, shape, worth) VALUES();
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES();

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Arcum''s Weathervane', 'Ice Age', 310, 'near mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(2, 2, 'Artifact', '2, T:  Target snow land is no longer snow.
2, T:  Target nonsnow basic land becomes snow.', NULL, NULL, NULL, NULL, 'Ice Age', 'Uncommon', 310, '
Tom Wänerstrand');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Iceberg', 'Ice Age', 73, 'near mint', 0.37);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('XUU', 2, 'Enchantment', 'Iceberg comes into play with X ice counters on it.
3:  Put an ice counter on Iceberg.
Remove an ice counter from Iceberg:  Add 1 to your mana pool.', NULL, NULL, NULL, NULL, 'Ice Age', 'Uncommon', 73, 'Jeff A. Menges');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Essence Flare', 'Ice Age', 69, 'near mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Enchantment — Aura', 'Enchant Creature
Enchanted creature gets +2/+0.
At the beginning of the upkeep of enchanted creature''s controller, put a -0/-1 counter on that creature.',
'Never underestimate the power of the soul unleashed', NULL, NULL, NULL, 'Ice Age', 'Common', 69, 'Richard Kane Ferguson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mistfolk', 'Ice Age', 84, 'near mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('UU', 2, 'Creature — Illusion', 'U:  Counter target spell that targets Mistfolk.',
'"Although my official log will state there is no evidence pointing to the existence of the mistfolk, my certainty is lessened by the cursed consistency of the expedition''s eyewitness accounts" —Disa the Restless, journal entry', 1, 2, NULL, 'Ice Age', 'Common', 84, 'Quinton Hoover');

--ALTER TABLE info
--MODIFY COLUMN flavor_text VARCHAR(232);

--UPDATE info
--SET punch = 1, toughness = 2
--WHERE extension = 'Ice Age' AND collector_number = 84;

--ALTER TABLE card
--MODIFY COLUMN shape VARCHAR(24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Snow Devil', 'Ice Age', 100, 'Moderately Played', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Enchantment — Aura', 'Enchant Creature
Enchanted creature has flying.
Enchanted creature has first strike as long as it''s blocking and you control a snow land.',
'"Give me wings to fly and speed to strike.  In return, the glory I earn shall be yours."—Steinar Icefist, Balduvian shaman', NULL, NULL, NULL, 'Ice Age', 'Common', 100, 'Ken Meyer Jr.' );

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmal Fiend', 'Alliances', 57, 'Damaged', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Illusion', 'B:  Phantasmal Fiend gets +1/-1 until end of turn.
1U:  Switch Phantasmal Fiend''s power and toughness until end of turn.', NULL, 1, 5, NULL, 'Alliances', 'Common', 57, 'Scott Kirschner');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Resistance Fighter', 'Visions', 18, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Summon Soldier', 'Sacrifice Resistance Fighter:  Target creature deals no combat damage this turn.',
'"My soldiers fought without hesitation, died without doubt."—Sidar Jabari', 1, 1, NULL, 'Visions', 'Common', 18, 'Cecil Fernando');

--UPDATE info
--SET loyalty = NULL
--WHERE extension = 'Visions' AND collector_number = '18';

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fireblast',  'Visions', 79, 'Damaged', 0.74);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4RR', 6, 'Instant', 'You may sacrifice two mountains instead of paying Fireblast''s casting cost.
Fireblast deals 4 damage to target creature or player.',
'Embermages aren''t well known for their diplomatic skills.', NULL, NULL, NULL, 'Visions', 'Common', 79, 'Michael Danza');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lichenthrope', 'Visions', 112, 'Moderately Played', 1.38);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GG', 5, 'Summon Lichenthrope', 'For each 1 damage dealt to Lichenthrope, put a -1/-1 counter on it instead.
During your upkeep, remvove one of these -1/-1 counters from Lichenthrope', NULL, 5, 5, NULL, 'Visions', 'Common', 112, 'Bob Eggleton');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lichenthrope', 'Visions', 112, 'Moderately Played', 1.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lichenthrope', 'Visions', 112, 'Moderately Played', 1.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lichenthrope', 'Visions', 112, 'Moderately Played', 1.38);

--INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lichenthrope', 'Visions', 112, 'Moderately Played', 1.38);

--UPDATE card
--SET title = 'Quirion Ranger', collector_number = 117, shape = 'Moderately Played', worth = 0.62
--WHERE item_id = 13;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quirion Ranger', 'Visions', 117, 'Moderately Played', 0.62);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Summon Elf', 
'Return a forest you control to owner''s hand:  Untap target creature.  Use this ability only once each turn.',
'"Respect the earth, for it will one day be your shield and another day your blanket."', 1, 1, NULL, 'Visions', 'Common', 117, 'Tom Kyffin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quirion Ranger', 'Visions', 117, 'Moderately Played', 0.62);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stampeding Wildebeests', 'Visions', 121, 'Moderately Played', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Summon Wildebeests', 'Trample
During your upkeep, return a green creature you control to owner''s hand.',
'Prayers for rain are answered with the thunder of hooves', 5, 4, NULL, 'Visions', 'Common', 121, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Contemplation', 'Stronghold', 4, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WW', 3, 'Enchantment', 'Whenever you successfully cast a spell, gain 1 life.',
'"How fascinating it is to watch the machinations of one''s own mind play themselves out."—Volrath', NULL, NULL, NULL, 'Stronghold', 'Common', 4, 'Brom');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES("Soul Warden", 'Exodus', 21, 'Near Mint', 1.60);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Summon Cleric', 'Whenever any other creature comes into play, gain 1 life.',
'Count carefully the souls and see that none are lost.', 1, 1, NULL, 'Exodus', 'Common', 21, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES("Soul Warden", 'Exodus', 21, 'Near Mint', 1.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES("Soul Warden", 'Exodus', 21, 'Near Mint', 1.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES("Soul Warden", 'Exodus', 21, 'Near Mint', 1.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dragon Blood', 'Urza''s Saga', 293, 'Damaged', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact', '3, T:  Put a +1/+1 counter on target creature.',
'Fire in the blood, fire in the belly.', NULL, NULL, NULL, 'Urza''s Saga', 'Uncommon', 293, 'Greg Simanson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Songstitcher', 'Urza''s Saga', 52, 'Moderately Played', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Summon Cleric', '1W:  Target attacking creature with flying deals no combat damage this turn.',
'The true names of birds are songs woven into their souls.', 1, 1, NULL, 'Urza''s Saga', 'Uncommon', 52, 'Berry');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Waylay', 'Urza''s Saga', 56, 'Moderately Played', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Instant', 'Put three Knight tokens into play.  Treat these tokens as 2/2 white creatures.  Remove them from the game at end of turn.',
'"You reek of corruption," spat the knight.  "Why are you even here?"', NULL, NULL, NULL, 'Urza''s Saga', 'Uncommon', 56, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Crazed Skirge', 'Urza''s Saga', 125, 'Moderately Played', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Summon Imp', 'Flying
Crazed Skirge is unaffected by summoning sickness.',
'They are Phyrexia''s couriers; the messages they carry are inscribed on their slick hides.', 2, 2, NULL, 'Urza''s Saga', 'Uncommon', 125, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Runner', 'Urza''s Saga', 224, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Summon Viashino', 'Viashino Runner cannot be blocked by only one creature.',
'"It moved this way, an''that way, an'' then before I could stick it, it jumped over my head an'' was gone."—Jula, goblin raider', 3, 2, NULL, 'Urza''s Saga', 'Common', 224, 'Steve White');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Runner', 'Urza''s Saga', 224, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Runner', 'Urza''s Saga', 224, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Runner', 'Urza''s Saga', 224, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Runner', 'Urza''s Saga', 224, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Treetop Rangers', 'Urza''s Saga', 279, 'Moderately Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Summon Elves', 'Treetop Rangers cannot be blocked except by creatures with flying',
'"If you can''t catch them, cut the trees down from beneath them.  Force them to fight on our terms"', 2, 2, NULL, 'Urza''s Saga', 'Common', 279, 'Darren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Treetop Rangers', 'Urza''s Saga', 279, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Treetop Rangers', 'Urza''s Saga', 279, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Treetop Rangers', 'Urza''s Saga', 279, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sluggishness', 'Urza''s Legacy', 92, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Enchant Creature', 'Enchanted creature cannot block.
When Stronghold is put into a graveyard from play, return Sluggishness to owner''s hand.',
'Vark decided to lie down and think of a good excuse to quit working.', NULL, NULL, NULL, 'Urza''s Legacy', 'Common', 92, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sluggishness', 'Urza''s Legacy', 92, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sluggishness', 'Urza''s Legacy', 92, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mana Prism', 'Sixth Edition', 297, 'Moderately Played', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(3, 3, 'Artifact', 'T:  Add one colorless mana to your mana pool.
1, T:  Add one mana of a color of your choice to your mana pool.', NULL, NULL, NULL, NULL, 'Sixth Edition', 'Common', 297, 'Margaret Organ-Kean');

UPDATE info
SET rarity = 'Uncommon'
WHERE extension = 'Sixth Edition' AND collector_number = 297;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Obsianus Golem', 'Sixth Edition', 303, 'Moderately Played', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(6, 6, 'Artifact Creature — Golem', NULL,
'"The foot stone is connected to the ankle stone, the ankle stone is connected to the leg stone...."', 4, 6, NULL, 'Sixth Edition', 'Uncommon', 303, 'Jesper Myrfors');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rod of Ruin', 'Sixth Edition', 309, 'Moderately Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(4, 4, 'Artifact', '3, T:  Rod of Ruin deals 1 damage to target creature or player.',
NULL, NULL, NULL, NULL, 'Sixth Edition', 'Uncommon', 309, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gravebane Zombie', 'Sixth Edition', 133, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Zombie', 'When Gravebane Zombie would be put into a graveyard from play, instead put Gravebane Zombie on top of its owner''s library.',
NULL, 3, 2, NULL, 'Sixth Edition', 'Uncommon', 133, 'Gary Leach');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hidden Horror', 'Sixth Edition', 137, 'Moderately Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1BB', 3, 'Creature — Horror', 'When Hidden Horror comes into play, choose and discard a creature card from your hand.  If you don''t, sacrifice Hidden Horror',
NULL, 4, 4, NULL, 'Sixth Edition', 'Uncommon', 137, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mischievous Poltergeist', 'Sixth Edition', 144, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Ghost', 'Flying
Pay 1 life:  Regenerate Mischievous Poltergeist.',
'"The past is a ghost that haunts you from the moment it exists until the moment you don''t."', 1, 1, NULL, 'Sixth Edition', 'Uncommon', 144, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Fire', 'Sixth Edition', 216, 'Moderately Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RR', 3, 'Creature — Wall', '(Walls can''t attack)
R:  Wall of Fire gets +1/+0 until end of turn.',
'"Struggle, and you will only fan the flames."—Talibah, embermage', 0, 5, NULL, 'Sixth Edition', 'Uncommon', 216, 'Richard Thomas');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Fire', 'Sixth Edition', 216, 'Moderately Played', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Fire', 'Sixth Edition', 216, 'Moderately Played', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Fire', 'Sixth Edition', 216, 'Moderately Played', 0.10);

UPDATE card
SET title = 'Creeping Mold', collector_number = 220, shape = 'Lightly Played', worth = 0.13
WHERE item_id = 43;

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Sorcery', 'Destroy target artifact, land, or enchantment',
'"Mold could catch you."—Suq''Ata insult', NULL, NULL, NULL, 'Sixth Edition', 'Uncommon', 220, 'David Seeley');

UPDATE card
SET title = 'Armored Pegasus', collector_number = 5, shape = 'Moderately Played', worth = 0.22
WHERE item_id = 44;

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Pegasus', 'Flying',
'Asked how it survived a run-in with a bog imp, the pegasus just shook its mane and burped.', 1, 2, NULL, 'Sixth Edition', 'Common', 5, 'Andrew Robinson');

UPDATE card
SET title = 'Ardent Militia', collector_number = 3, shape = 'Lightly Played', worth = 0.04
WHERE item_id = 44;

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4W', 5, 'Creature — Soldier', 'Attacking doesn''t cause Ardent Militia to tap',
'Some fight for honor and some fight for gold, but the militia fight for hearth and home.', 2, 5, NULL, 'Sixth Edition', 'Unommon', 3, 'Zina Saunders');

UPDATE card
SET title = 'Castle', collector_number = 6, shape = 'Moderately Played', worth = 0.21
WHERE item_id = 45;

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Enchantment', 'Untapped creatures you control get +0/+2.',
'"Hang out our banners on the outward walls;  /The cry is still, ''They come'';  our castle''s strength /Will laugh a siege to scorn."—William Shakespeare, Macbeth', NULL, NULL, NULL, 'Sixth Edition', 'Unommon', 6, 'Dameon Willich');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Circle of Protection:  White', 'Sixth Edition', 12, 'Lightly Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Enchantment', '1:  The next time a white source of your choice would deal damage to you this turn, prevent that damage.',
NULL, NULL, NULL, NULL, 'Sixth Edition', 'Common', 12, 'Gerry Grace');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Archer', 'Sixth Edition', 15, 'Moderately Played', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Soldier', 'T:  D''Avenant Archer deals 1 damage to target attacking or blocking creature',
'Avenant''s archers are also trained as poets, so that each arrow is guided by a fragment of verse.', 1, 2, NULL, 'Sixth Edition', 'Common', 15, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Archer', 'Sixth Edition', 15, 'Moderately Played', 0.04);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Soldier', 'T:  D''Avenant Archer deals 1 damage to target attacking or blocking creature',
--'Avenant''s archers are also trained as poets, so that each arrow is guided by a fragment of verse.', 1, 2, NULL, 'Sixth Edition', 'Common', 15, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Disenchant', 'Sixth Edition', 16, 'Damaged', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Destroy target artifact or enchantment',
NULL , NULL, NULL, NULL, 'Sixth Edition', 'Common', 16, 'Brian Snoddy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Disenchant', 'Sixth Edition', 16, 'Lightly Played', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Disenchant', 'Sixth Edition', 16, 'Damaged', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Healing Salve', 'Sixth Edition', 22, 'Lightly Played', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant', 'Choose one — Target player gains 3 life:  or prevent next 3 damage to target creature or player this turn.',
NULL , NULL, NULL, NULL, 'Sixth Edition', 'Common', 22, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Healing Salve', 'Sixth Edition', 22, 'Lightly Played', 0.04);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant', 'Choose one — Target player gains 3 life:  or prevent next 3 damage to target creature or player this turn.',
--NULL , NULL, NULL, NULL, 'Sixth Edition', 'Common', 22, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Healing Salve', 'Sixth Edition', 22, 'Lightly Played', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hero''s Resolve', 'Sixth Edition', 24, 'Moderately Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Enchant Creature', 'Enchanted creature gets +1/+5.',
'"Destroy, chance, fate, fortune — they''re all just ways of claiming your successes without claiming your failures" — Gerrard of the Weatherlight', NULL, NULL, NULL, 'Sixth Edition', 'Common', 24, 'Pete Venters');

--UPDATE card
--SET title = 'Hero''s Resolve'
--WHERE item_id = 54;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mesa Falcon', 'Sixth Edition', 31, 'Lightly Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Bird', 'Flying
1W:  Mesa Falcon gets +0/+1 until end of turn.',
'"The faith of Serra is borne on wings of hope."—Gulsen, abbey matron', 1, 1, NULL, 'Sixth Edition', 'Common', 31, 'Mark Poole');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Samite Healer', 'Sixth Edition', 40, 'Lightly Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Cleric', 'T:  Prevent the next 1 damage to target creature or player this turn.',
'Healers ultimately acquire the divine gifts of spiritual and physical wholeness.  The most devout are also granted the ability to pass physical wholeness on to others.', 1, 1, NULL, 'Sixth Edition', 'Common', 40, 'Tom Wänerstrand');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Venerable Monk', 'Sixth Edition', 50, 'Lightly Played', 0.02);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Cleric', 'When Venerable Monk comes into play, you gain 2 life.',
'His presence brings not only a strong arm but also renewed hope', 2, 2, NULL, 'Sixth Edition', 'Common', 50, 'D. Alexander Gregory');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Warrior''s Honor', 'Sixth Edition', 53, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Instant', 'Creatures you control get +1/+1 until end of turn',
NULL, NULL, NULL, NULL, 'Sixth Edition', 'Common', 53, 'D. Alexander Gregory');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Prodgal Sorcerer', 'Sixth Edition', 88, 'Lightly Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Wizard', 'T:  Prodigal Sorcerer deals 1 damage to target creature or player.',
'Occasionally members of the Institute of Arcane Study acquire a taste for worldly pleasures.  Seldom do they have trouble finding employment', 1, 1, NULL, 'Sixth Edition', 'Common', 88, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tidal Surge', 'Sixth Edition', 102, 'Lightly Played', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Sorcery', 'Tap up to three target creatures without flying',
'"It is nature that gives us our boundaries and nature that enforces them."—Eladamri, Lord of Leaves', NULL, NULL, NULL, 'Sixth Edition', 'Common', 102, 'Doug Chaffee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wind Drake', 'Sixth Edition', 106, 'Damaged', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Drake', 'Flying',
'"No bird soars too high, if he soars with his own wings."—William Blake, The Marriage of Heaven and Hell', 2, 2, NULL, 'Sixth Edition', 'Common', 106, 'Zina Saunders');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blood Pet', 'Sixth Edition', 115, 'Lightly Played', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Creature — Thrull', 'Sacrifice Blood Pet:  Add B to your mana pool.',
'"You are wrong," Volrath said.  "I do not hate the living.  They often prove quite useful to me." And then he laughed.', 1, 1, NULL, 'Sixth Edition', 'Common', 115, 'Brom');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Drudge Skeletons', 'Sixth Edition', 123, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Creature — Skeleton', 'B:  Regenerate Drudge Skeletons',
'"The dead make good soldiers.  They can''t disobey orders, they never surrender, and they don''t stop fighting when a random body part falls off."', 1, 1, NULL, 'Sixth Edition', 'Common', 123, 'Ian Miller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Enfeeblement', 'Sixth Edition', 125, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('BB', 2, 'Enchant Creature', 'Enchanted creature gets -2/-2.',
'"If it is weak, either kill it or ignore it.  Anything else honors it."—Kaervek', NULL, NULL, NULL, 'Sixth Edition', 'Common', 125, 'John Bolton');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Anaba Bodyguard', 'Sixth Edition', 164, 'Lightly Played', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Minotaur', 'First strike',
'"Not all minotaurs are tribal.  Some are freelance."—Eron the Relentless', 2, 3, NULL, 'Sixth Edition', 'Common', 164, 'Anson Maddocks');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fit of Rage', 'Sixth Edition', 178, 'Damaged', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Sorcery', 'Target creature gets +3/+3 and gains first strike until end of turn.',
'"Anger is fleeting;  remorse is eternal"—Karn, silver golem', NULL, NULL, NULL, 'Sixth Edition', 'Common', 178, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lightning Blast', 'Sixth Edition', 193, 'Moderately Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Instant', 'Lightning Blast deals 4 damaage to target creature or player',
'"Those who fear the darkness have never seen what the light can do."—Selenia, dark angel', NULL, NULL, NULL, 'Sixth Edition', 'Common', 193, 'Richard Thomas');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pyrotechnics', 'Sixth Edition', 199, 'Moderately Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Sorcery', 'Pyrotechnics deals 4 damage divided any way you choose among any number of target creatures and/or players.',
'"Hi!ni!ya! Behold the man of flint, that''s me!/Four lightnings zigzag from me, strike and return."—Navajo war chant', NULL, NULL, NULL, 'Sixth Edition', 'Common', 199, 'Anson Maddocks');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sabretooth Tiger', 'Sixth Edition', 203, 'Lightly Played', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Tiger', 'First strike',
'"I fear anything with teeth measured in handspans!"—Norin the Wary', 2, 1, NULL, 'Sixth Edition', 'Common', 203, 'Melissa A. Benson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shock', 'Sixth Edition', 206, 'Moderately Played', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Instant', 'Shock deals 2 damage to target creature or player',
'Lightning tethers souls to the world.—Kor saying', NULL, NULL, NULL, 'Sixth Edition', 'Common', 206, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tremor', 'Sixth Edition', 211, 'Lightly Played', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Sorcery', 'Tremor deals 1 damage to each creature without flying.',
'"Where do you run when the earth becomes your enemy?"—Kor saying', NULL, NULL, NULL, 'Sixth Edition', 'Common', 211, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Spider', 'Sixth Edition', 234, 'Lightly Played', 0.02);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Spider', 'Giant Spider can block as though it had flying.',
'"It''s not far into the trap, as the crow flies', 2, 4, NULL, 'Sixth Edition', 'Common', 234, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Growth', 'Sixth Edition', 233, 'Lightly Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Instant', 'Target creature gets +3/+3 until end of turn',
NULL, NULL, NULL, NULL, 'Sixth Edition', 'Common', 233, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Llanowar Elves', 'Sixth Edition', 239, 'Damaged', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf', 'T:  Add G to your mana pool.',
'One bone broken for every twig snapped underfoot.—Llanowar penalty for trespassing', 1, 1, NULL, 'Sixth Edition', 'Common', 239, 'Anson Maddocks');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Panther Warriors', 'Sixth Edition', 243, 'Moderately Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Cat Warrior', NULL,
'The dogs of war are nothing compared to the cats.', 6, 3, NULL, 'Sixth Edition', 'Common', 243, 'Eric Peterson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Panther Warriors', 'Sixth Edition', 243, 'Lightly Played', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rampant Growth', 'Sixth Edition', 246, 'Lightly Played', 0.28);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Sorcery', NULL,
'Rath forces plants from its surface as one presses whey from cheese', 6, 3, NULL, 'Sixth Edition', 'Common', 246, 'Tom Kyffin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Scaled Wurm', 'Sixth Edition', 251, 'Lightly Played', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('7G', 8, 'Creature — Wurm', NULL,
'"Flourishing during the Ice Age, these wurms were the bane of all Kjeldorans.  Their great size and ferocity made them the subject of countless nightmares—they embodied the worst of the Ice Age."—Kjeldor:  Ice Civilization', 7, 6, NULL, 'Sixth Edition', 'Common', 251, 'Daniel Gelon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Trained Armodon', 'Sixth Edition', 257, 'Lightly Played', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Creature — Elephant', NULL,
'These are its last days.  Better to grow broad and heavy.  Better that the enemy is crushed beneath its carcass.', 3, 3, NULL, 'Sixth Edition', 'Common', 257, 'Gary Leach');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fountain of Cho', 'Mercadian Masques', 317, 'Moderately Played', 0.29);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'Fountain of Cho comes into play tapped.
T:  Put a storage counter on Fountain of Cho.
T,  Remove any number of storage counters from Fountain of Cho:  Add one white mana to your mana pool for each storage counter removed this way.',
NULL, NULL, NULL, NULL, 'Mercadian Masques', 'Uncommon', 317, 'Scott Hampton');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fountain of Cho', 'Mercadian Masques', 317, 'Moderately Played', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fountain of Cho', 'Mercadian Masques', 317, 'Moderately Played', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fountain of Cho', 'Mercadian Masques', 317, 'Moderately Played', 0.29);

--UPDATE card
--SET extension = 'Mercadian Masques'
--WHERE item_id = 80;

--UPDATE card
--SET extension = 'Mercadian Masques'
--WHERE item_id = 81;

--UPDATE card
--SET extension = 'Mercadian Masques'
--WHERE item_id = 82;

--UPDATE card
--SET extension = 'Mercadian Masques'
--WHERE item_id = 83;

--UPDATE info
--SET extension = 'Mercadian Masques'
--WHERE extension = 'Sixth Edition' AND collector_number = 317;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Chameleon Spirit', 'Mercadian Masques', 65, 'Moderately Played', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Illusion', 'As Chameleon Spirit comes into play, choose a color.
Chameleon Spirit''s power and toughness are each equal to the number of permanents of the chosen color your opponents control.',
NULL, NULL, NULL, NULL, 'Mercadian Masques', 'Uncommon', 65, 'Bradley Williams');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Uphill Battle', 'Mercadian Masques', 222, 'Damaged', 0.32);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Enchantment', 'Creatures your opponents play come into play tapped.',
'Cho-Manno knew he had no choice but to ally with Gerrard.  If that''s what it took to free his people, he''d pay the price', NULL, NULL, NULL, 'Mercadian Masques', 'Uncommon', 222, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fresh Volunteers', 'Mercadian Masques', 20, 'Moderately Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Rebel', NULL,
'"Every Cho-Arrim villager is a potential warrior;  when they are called, they abandon their peaceful way of life and take up arms to defend it."', 2, 2, NULL, 'Mercadian Masques', 'Common', 20, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Diplomatic Immunity', 'Mercadian Masques', 75, 'Moderately Played', 0.98);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Enchant Creature', 'Enchanted creature can''t be the target of spells or abilities',
'Diplomatic Immunity can''t be the target of spells or abilities', NULL, NULL, NULL, 'Mercadian Masques', 'Common', 75, 'Terese Nielsen');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bog Smugglers', 'Mercadian Masques', 117, 'Moderately Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1BB', 3, 'Creature — Mercenary', 'Swampwalk (This creature is unblockable as long as defending player controls a swamp.)',
'They slide over the bog like oil across glass.', 2, 2, NULL, 'Mercadian Masques', 'Common', 117, 'Mike Ploog');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deepwood Ghoul', 'Mercadian Masques', 131, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Zombie', 'Pay 2 life:  Regenerate Deepwood Ghoul.',
'They feed on the living so stay undead.', 2, 1, NULL, 'Mercadian Masques', 'Common', 131, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flaming Sword', 'Mercadian Masques', 190, 'Moderately Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Enchant Creature', 'You may play Flaming Sword any time you could play an instant
Target creature gets +1/+0 and has first strike.',
'"It''s not Talruum crystal, but I must admit—it gets the job done."—Tahngarth', NULL, NULL, NULL, 'Mercadian Masques', 'Common', 190, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rushwood Herbalist', 'Mercadian Masques', 265, 'Moderately Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Spellshaper', 'G, T, Discard a card from your hand:  Regenerate target creature.',
'When generals gather their armies, healers gather their herbs', 2, 2, NULL, 'Mercadian Masques', 'Common', 265, 'Terese Nielsen');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Defiant Falcon', 'Nemesis', 6, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Rebel Bird', '1, 1, Flying
4, T:  Search your library for a Rebel card with converted mana cost 3 or less and put that card into play.  Then shuffle your library.',
NULL, 1, 1, NULL, 'Nemesis', 'Common', 6, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Defiant Falcon', 'Nemesis', 6, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Defiant Falcon', 'Nemesis', 6, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Defiant Falcon', 'Nemesis', 6, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reveille Squad', 'Prophecy', 18, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Rebel', 'Whenever you''re attacked, if Reveille Squad is untapped, you may untap all creatures you control.',
'"To arms!  To Arms!  The Lion roars!"', 3, 3, NULL, 'Prophecy', 'Uncommon', 18, 'Greg & Tim Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reveille Squad', 'Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reveille Squad', 'Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reveille Squad', 'Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sky Weaver', 'Invasion', 74, 'Near Mint', 0.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Wizard', '2:  Target white or black creature gains flying until end of turn.',
'"Let my wisdom give you wings."', 2, 1, NULL, 'Invasion', 'Uncommon', 74, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quirion Elves', 'Invasion', 203, 'Lightly Played', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Elf', 'As Quirion Elves comes into play, choose a color.
T:  Add G to your mana pool.
T:  Add one mana of the chosen color to your mana pool.',
NULL, 1, 1, NULL, 'Invasion', 'Common', 203, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wandering Stream', 'Invasion', 224, 'Moderately Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Sorcery', 'You gain 2 life for each basic land type among lands you control.',
'"Dominaria watches us all." —Molimo, maro-sorcerer', NULL, NULL, NULL, 'Invasion', 'Common', 224, 'Quinton Hoover');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mana Cylix', 'Planeshift', 132, 'Lightly Played', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact', '1, T:  Add one mana of any color to your mana pool.',
'Overflowing with visions of the possible future, it lends power to those in the present.', NULL, NULL, NULL, 'Planeshift', 'Uncommon', 132, 'Donato Giancola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Slay', 'Planeshift', 55, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Instant', 'Destroy target green creature.  It can''t be regenerated.
Draw a card.',
'The elves had the edge in guile, skill, and valor.  But in the end, only sheer numbers mattered.', NULL, NULL, NULL, 'Planeshift', 'Uncommon', 55, 'Ben Thompson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cavern Harpy', 'Planeshift', 97, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('UB', 2, 'Creature — Beast', 'Flying
When Cavern Harpy comes into play, return a blue or black creature you control to its owner''s hand',
NULL, 2, 1, NULL, 'Planeshift', 'Common', 97, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cavern Harpy', 'Planeshift', 97, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Horned Kavu', 'Planeshift', 110, 'Lightly Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('RG', 2, 'Creature — Kavu', 'When Horned Kavu comes into play, return a red or green creature you control to its owner''s hand.',
'"That didn''t happen naturally," said Multani.  "Rath''s overlay is interfering with the AEther itself."', 3, 4, NULL, 'Planeshift', 'Common', 110, 'Michael Sutfin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Horned Kavu', 'Planeshift', 110, 'Lightly Played', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silver Drake', 'Planeshift', 125, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WU', 3, 'Creature — Drake', 'Flying
When Silver Drake comes into play, return a white or blue creature you control to its owner''s hand.',
NULL, 3, 3, NULL, 'Planeshift', 'Common', 125, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Soul Net', 'Seventh Edition', 317, 'Lightly Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact', 'Whenever a reature is put into a graveyard from play, you may pay 1, if you do, you gain 1 life.',
NULL, NULL, NULL, NULL, 'Seventh Edition', 'Uncommon', 317, 'Ron Spencer');

UPDATE card
SET title = 'Spined Wurm', extension = 'Seventh Edition', collector_number = 270, shape = 'Lightly Played', worth = 0.04
WHERE item_id = 111;

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Wurm', NULL,
'"I wouldn''t stand in front of that wurm, son.  ''Course, I wouldn''t stand behind it either.  In fact, standing anywhere near that wurm''s not much of a plan.  Running, now that''s a plan!"—Wandering mage', 5, 4, NULL, 'Seventh Edition', 'Common', 270, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wood Elves', 'Seventh Edition', 284, 'Lightly Played', 0.71);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Elf', 'When Wood Elves comes into play, search your library for a forest card and put that card into play.  Then shuffle your library.',
'Every branch a crossroads, every vine a swift steed', NULL, NULL, NULL, 'Seventh Edition', 'Common', 284, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Beloved Chaplain', 'Odyssey', 11, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Cleric', 'Protection from creatures',
'Nomad and Nantuko, eagle and elephant;  all the birds and beasts are charmed by his quiet dignity.', 1, 1, NULL, 'Odyssey', 'Common', 11, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Beloved Chaplain', 'Odyssey', 11, 'Near Mint', 0.25);

--UPDATE card
--SET extension = 'Odyssey'
--WHERE item_id = 114;

--UPDATE card
--SET extension = 'Odyssey'
--WHERE item_id = 115;

--UPDATE info
--SET extension = 'Odyssey'
--WHERE extension = 'Judgment' AND collector_number = 11;

--UPDATE card
--SET extension = 'Odyssey'
--WHERE item_id = 113;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mystic Penitent', 'Odyssey', 34, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Nomad Mystic', 'Attacking doesn''t cause Mystic Penitent to tap',
NULL, 1, 1, NULL, 'Odyssey', 'Unommon', 34, 'Larry Elmore');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mystic Penitent', 'Odyssey', 34, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nomad Decoy', 'Odyssey', 37, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Nomad', 'W, T:  Tap target creature.
Threshold — WW, T:  Tap two target creatures.  (Play this ability only if seven or more cards are in your graveyard.)',
'If you can take something from a nomad, it''s probably bait.', 1, 2, NULL, 'Odyssey', 'Unommon', 37, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nomad Decoy', 'Odyssey', 37, 'Lightly Played', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aven Cloudchaser', 'Odyssey', 7, 'Lightly Played', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Creature — Bird Soldier', 'Flying
When Aven Cloudchaser comes into play, destroy target enchantment.',
'"At the Reapportionment, Eagle begged to be human.  The Ancestor granted half that prayer."—Nomad myth', 2, 2, NULL, 'Odyssey', 'Common', 7, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aven Cloudchaser', 'Odyssey', 7, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dedicated Martyr', 'Odyssey', 16, 'Lightly Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Cleric', 'W, Sacrifice Dedicated Martyr:  You gain 3 life.',
'"If he''s so willing to suffer for his cause, then by all means, let us oblige him."—Cabal Patriarch', 1, 1, NULL, 'Odyssey', 'Common', 16, 'Dave Dorman');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Embolden', 'Odyssey', 22, 'Lightly Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Instant', 'Prevent the next 4 damage that would be dealt this turn to any number of target creatures and/or players, divided as you choose.
Flashback 1W (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Odyssey', 'Common', 22, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Life Burst', 'Odyssey', 30, 'Lightly Played', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Target player gains 4 life, then gains 4 life for each Life Burst card in each graveyard.',
'As uplifting as a mystic''s dreams', NULL, NULL, NULL, 'Odyssey', 'Common', 30, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Life Burst', 'Odyssey', 30, 'Lightly Played', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Life Burst', 'Odyssey', 30, 'Lightly Played', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Life Burst', 'Odyssey', 30, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Patrol Hound', 'Odyssey', 38, 'Lightly Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Hound', 'Discard a card from your hand:  Patrol Hound gains first strike until end of turn.',
'To the camp, it was a fierce and loyal protector.  To the sentry''s youngest daughter, it would always be her "Wuv Muffin."', 2, 2, NULL, 'Odyssey', 'Common', 38, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Patrol Hound', 'Odyssey', 38, 'Lightly Played', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Patrol Hound', 'Odyssey', 38, 'Lightly Played', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shelter', 'Odyssey', 46, 'Lightly Played', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Target creature you control gains protection from the color of your choice until end of turn.
Draw a card.',
'Good strategists seize opportunities.  Great strategists seize opportunities', NULL, NULL, NULL, 'Odyssey', 'Common', 46, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shelter', 'Odyssey', 46, 'Lightly Played', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tireless Tribe', 'Odyssey', 56, 'Lightly Played', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Nomad', 'Discard a card from your hand:  Tireless Tribe gets +0/+4 until end of turn.',
'"We''ve survived starvation, dwarf attacks, and heatstroke.  Why should a little sandstorm bother us?"', 1, 1, NULL, 'Odyssey', 'Common', 56, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deep Reconnaissance', 'Odyssey', 236, 'Lightly Played', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Sorcery', 'Search your library for a basic land card and put that card into play tapped.  Then shuffle your library.
Flashback 4G (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Odyssey', 'Common', 236, 'Jeff Remmer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deep Reconnaissance', 'Odyssey', 236, 'Lightly Played', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Elder', 'Odyssey', 254, 'Lightly Played', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Insect Druid ', 'T:  Add 1G to your mana pool.',
'Plant a field with wishes, and you will grow more wishes.', NULL, NULL, NULL, 'Odyssey', 'Common', 254, 'Darren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Elder', 'Odyssey', 254, 'Lightly Played', 0.36);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Roar of the Wurm', 'Odyssey', 266, 'Lightly Played', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6G', 7, 'Sorcery', 'Put a 6/6 green Wurm creature token into play.',
'Flashback 3G (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)', NULL, NULL, NULL, 'Odyssey', 'Common', 266, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Roar of the Wurm', 'Odyssey', 266, 'Heavily Played', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Diligent Farmhand', 'Odyssey', 237, 'Lightly Played', 0.64);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Druid', '1G, Sacrifice Diligent Farmhand:  Search your library for a basic land card and put that card into play tapped.  Then shuffle your library.
If Diligent Farmhand is in a graveyard, Muscle Burst''s effect counts as a Muscle Burst.',
NULL, NULL, NULL, NULL, 'Odyssey', 'Common', 237, 'Gary Ruddell');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Diligent Farmhand', 'Odyssey', 237, 'Lightly Played', 0.64);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Diligent Farmhand', 'Odyssey', 237, 'Lightly Played', 0.64);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Avenger', 'Odyssey', 247, 'Lightly Played', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Druid', 'Trample
Threshold — 1G:  Regenerate Krosan Avenger.  (Play this ability only if seven or more cards are in your graveyard.)',
'She''d have a fearsome reputation if she left any survivors', 3, 1, NULL, 'Odyssey', 'Common', 247, 'D. Alexander Gregory');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Archer', 'Odyssey', 246, 'Lightly Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Centaur', 'Krosan Archer  may block as though it had flying.',
'G, Discard a card from your hand:  Krosan Avenger gets +0/+2 until end of turn.', 2, 3, NULL, 'Odyssey', 'Common', 246, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Moment''s Peace', 'Odyssey', 251, 'Lightly Played', 1.49);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Instant', 'Prevent all combat damage that would be dealt this turn.
Flashback 2G (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Odyssey', 'Common', 251, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Moment''s Peace', 'Odyssey', 251, 'Lightly Played', 1.49);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Moment''s Peace', 'Odyssey', 251, 'Lightly Played', 1.49);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rabid Elephant', 'Odyssey', 263, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Elephant', 'Whenever Rabid Elephant becomes blocked, it gets +2/+2 until end of turn for each creature blocking it.',
'When in doubt, stomp.', 3, 4, NULL, 'Odyssey', 'Common', 263, 'Dave Dorman');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rabid Elephant', 'Odyssey', 263, 'Heavily Played', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Seeton''s Desire', 'Odyssey', 268, 'Heavily Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Enchant Creature', 'Enchanted creature gets +2/+2.
Threshold — All creatures able to block enchanted creature do so.  (You have threshold as long as seven or more cards are in your graveyard.)',
NULL, NULL, NULL, NULL, 'Odyssey', 'Common', 268, 'Ciruelo');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Militant Monk', 'Torment', 9, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WW', 3, 'Creature — Cleric', 'Attacking doesn''t cause Militant Monk to tap.
T:  Prevent the next 1 damage that would be dealt to target creature or player this turn.',
NULL, 2, 1, NULL, 'Torment', 'Common', 9, 'Mark Brill');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Militant Monk', 'Torment', 9, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Militant Monk', 'Torment', 9, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Commander Eesha', 'Judgment', 9, 'Lightly Played', 2.61);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Bird Soldier Legend', 'Flying, protection from creatures',
'"War glides on the simplest updrafts while peace struggles against hurricane winds."', 2, 4, NULL, 'Judgment', 'Rare', 9, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Selfless Exorcist', 'Judgment', 21, 'Lightly Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3WW', 5, 'Creature — Cleric', 'T:  Remove target creature card in a graveyard from the game.  That card deals damage equal to its power to Selfless Exorcist.  (A * on a card not in play is 0.)',
NULL, 3, 4, NULL, 'Judgment', 'Rare', 21, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battle Screech', 'Judgment', 3, 'Near Mint', 0.49);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Sorcery', 'Put two 1/1 white Bird creature tokens with flying into play.
Flashback — Tap three untapped white creatures you control.  (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Judgment', 'Uncommon', 3, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battle Screech', 'Judgment', 3, 'Lightly Played', 0.49);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spurnmage Advocate', 'Judgment', 27, 'Lightly Played', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Nomad', 'T:  Return two target cards in an opponent''s graveyard to his or her hand.  Destroy target attacking creature.',
'"Our unity humbles our foes."', 1, 1, NULL, 'Judgment', 'Uncommon', 27, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spurnmage Advocate', 'Judgment', 27, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Unquestioned Authority', 'Judgment', 31, 'Lightly Played', 0.39);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchant Creature', 'When Unquestioned Authority comes into play, draw a card.
Enchanted creature has protection from creatures.',
'"Only the Ancestor should be revered"—Mystic heretic', NULL, NULL, NULL, 'Judgment', 'Uncommon', 31, 'Alex Horley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Unquestioned Authority', 'Judgment', 31, 'Near Mint', 0.39);

--UPDATE card
--SET worth = 0.39
--WHERE item_id = 158;

--UPDATE card
--SET worth = 0.39
--WHERE item_id = 157;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Valor', 'Judgment', 32, 'Lightly Played', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Creature — Incarnation', 'First strike
As long as Valor is in your graveyard and you control a plains, creatures you control have first strike.',
'"The cracks widened, the shell crumbled, and Valor spread throughout the land."—Scroll of Beginnings', 2, 2, NULL, 'Judgment', 'Uncommon', 32, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wormfang Turtle', 'Judgment', 60, 'Lightly Played', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Nightmare Beast', 'When Wormfang Turtle comes into play, remove a land you control from the game.
When Wormfang Turtle leaves play, return the removed card to play under its owner''s control.',
'Chainer''s admirers keep his dreams alive', 2, 4, NULL, 'Judgment', 'Uncommon', 60, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wormfang Crab', 'Judgment', 56, 'Lightly Played', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Nightmare Crab', 'Wormfang Crab is unblockable.
When Wormfang Crab comes into play, an opponent chooses a permanent you control and removes it from the game.
When Wormfang Crab leaves play, return the removed card to play under its owner''s control.',
NULL, 3, 6, NULL, 'Judgment', 'Uncommon', 56, 'Glen Angus');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tunneler Worm', 'Judgment', 135, 'Lightly Played', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6GG', 8, 'Creature — Wurm', 'Discard a card from your hand:  Regenerate Tunneler Worm.',
'"If an anurid''s lucky, it''ll find a warm tunnel for bedtime.  If a wurm''s lucky, it''ll find a warm anurid for breakfast.', 6, 6, NULL, 'Judgment', 'Uncommon', 135, 'Jeff Easley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tunneler Worm', 'Judgment', 135, 'Lightly Played', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Exoskeletal Armor', 'Judgment', 114, 'Damaged', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Enchant Creature', 'Enchanted creature gets +X/+X, where X is the number of creature cards in all graveyards.',
'"We use only what we need—but in times of strife, our need becomes great."', NULL, NULL, NULL, 'Judgment', 'Uncommon', 114, 'Wayne England');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Exoskeletal Armor', 'Judgment', 114, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Exoskeletal Armor', 'Judgment', 114, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brawn', 'Judgment', 107, 'Lightly Played', 0.51);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Incarnation', 'Trample
As long as Brawn is in your graveyard and you control a forest, creatures you control have trample.',
'"''I have arrived,''bellowed Brawn, and the plane shuddered."', 3, 3, NULL, 'Judgment', 'Uncommon', 107, 'Matt Cavotta');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brawn', 'Judgment', 107, 'Lightly Played', 0.51);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Anurid Swarmsnapper', 'Judgment', 105, 'Lightly Played', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Beast', 'Anurid Swarmsnapper may block as though it had flying.
1G:  Anurid Swarmsnapper may block an additional creature this turn.',
'Anurids have the problem of airborne invaders licked', 1, 4, NULL, 'Judgment', 'Uncommon', 105, 'John Matson');

--UPDATE info
--SET artist = 'John Matson'
--WHERE extension = 'Judgment' AND collector_number = 105;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Anurid Swarmsnapper', 'Judgment', 105, 'Damaged', 0.24);

--UPDATE card
--SET shape = 'Damaged'
--WHERE item_id = 170;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benevolent Bodyguard', 'Judgment', 5, 'Near Mint', 0.34);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Cleric', 'Sacrifice Benevolent Bodyguard::  Target creature you control gains protection from the color of your choice until end of turn.',
'"My destiny is to save others so their destinies may be achieved"', 1, 1, NULL, 'Judgment', 'Common', 5, 'Roger Raupp');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benevolent Bodyguard', 'Judgment', 5, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benevolent Bodyguard', 'Judgment', 5, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Funeral Pyre', 'Judgment', 10, 'Foil Near Mint', 0.53);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant', 'Remove target card in a graveyard from the game.  Its owner puts a 1/1 white Spirit creature token with flying into play.',
'"Raze the body.  Raise the soul."—Mystic elder', NULL, NULL, NULL, 'Judgment', 'Common', 10, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Guided Strike', 'Judgment', 13, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Target creature gets +1/+0 and gains first strike until end of turn.
Draw a card.',
'"May the Ancestor strengthen my hand and guide my blade"—Nomad war prayer', NULL, NULL, NULL, 'Judgment', 'Common', 13, 'Dave Dorman');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Guided Strike', 'Judgment', 13, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Guided Strike', 'Judgment', 13, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lead Astray', 'Judgment', 14, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Tap up to two target creatures.',
'"Never underestimate our enemy''s strength, brutality,...or stupidity."—Commander Eesha', NULL, NULL, NULL, 'Judgment', 'Common', 14, 'Adam Rex');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Prismatic Strands', 'Judgment', 18, 'Lightly Played', 2.00);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant', 'Prevent all damage that sources of the color of your choice would deal this turn.
Flashback—Tap an untapped white creature you control.  (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Judgment', 'Common', 18, 'Eric Peterson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shieldmage Advocate', 'Judgment', 22, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Cleric', 'T:  Return target card in an opponent''s graveyard to his or her hand.  Prevent all damage that would be dealt to target creature or player this turn by a source of your choice.',
'"Our unity conquers all fears."', 1, 3, NULL, 'Judgment', 'Common', 22, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suntail Hawk', 'Judgment', 28, 'Lightly Played', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Bird', 'Flying',
'"Our forebears once flew like this—carefree, needing nothing but a warm nest and a full body.  Our intellect may be more burden than blessing."—Commander Eesha', 1, 1, NULL, 'Judgment', 'Common', 28, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suntail Hawk', 'Judgment', 28, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suntail Hawk', 'Judgment', 28, 'Moderately Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suntail Hawk', 'Judgment', 28, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suntail Hawk', 'Judgment', 28, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Defy Gravity', 'Judgment', 38, 'Lightly Played', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Instant', 'Target creature gains flying until end of turn.
Flashback U (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
'Magical or not, it''s still a cloud.', 1, 1, NULL, 'Judgment', 'Common', 38, 'Ben Thompson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Arcane Teachings', 'Judgment', 78, 'Lightly Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Enchant Creature', 'Enchanted creature gets +2/+2 and has "T:  This creature deals 1 damage to target creature or player."',
'Dwarves may teach at the speed of stone, but their results are solid.', NULL, NULL, NULL, 'Judgment', 'Common', 78, 'Mark Brill');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Barbarian Bully', 'Judgment', 79, 'Lightly Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Barbarian', 'Discard a card at random from you rhand:  Barbarian Bully gets +2/+2 until end of turn unless a player has Barbarian Bully deal 4 damage to him or her.  Play this ability only once each turn.',
'"Out of my way!"', 2, 2, NULL, 'Judgment', 'Common', 79, 'Mike Ploog');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Dart', 'Judgment', 94, 'Lightly Played', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Instant', 'Lava Dart deals 1 damage to target creature or player.
Flashback—Sacrifice a mountain.  (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
'"Out of my way!"', NULL, NULL, NULL, 'Judgment', 'Common', 94, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spellgorger Barbarian', 'Judgment', 100, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Nightmare Barbarian', 'When Spellgorger Barbarian comes into play, discard a card at random from your hand.
When Spellgorger Barbarian leaves play, draw a card.',
'"The epidemic insanity had a lasting effect on certain barbarians—but no one noticed"', 3, 1, NULL, 'Judgment', 'Common', 100, 'Mark Romanoski');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Anurid Barkripper', 'Judgment', 104, 'Moderately Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Creature — Beast', 'Threshold — Anurid Barkripper gets +2/+2.  (You have threshold as long as seven or more cards are in your graveyard.)',
'When it croaks, so do you.', 2, 2, NULL, 'Judgment', 'Common', 104, 'Randy Gallegos');

UPDATE info
SET rules_text = 'Threshold — Anurid Barkripper gets +2/+2.  (You have threshold as long as seven or more cards are in your graveyard.)'
WHERE extension = 'Judgment' AND collector_number = 104;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlefield Scrounger', 'Judgment', 106, 'Moderately Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GG', 5, 'Creature — Centaur', 'Threshold — Put three cards from your graveyard on the bottom of your library:  Battlefield Scrounger gets +3/+3 until end of turn.  Play this ability only once each turn.  (Play this ability only if you have seven or more cards in your graveyard.)',
NULL, 3, 3, NULL, 'Judgment', 'Common', 106, 'Darren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlefield Scrounger', 'Judgment', 106, 'Moderately Played', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Warthog', 'Judgment', 118, 'Moderately Played', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5G', 6, 'Creature — Beast', 'Trample',
'"When the Ancestor saw the cruelty her human children were capable of, Her fury shook the world.  From this outburst sprang the warthogs."—Nomad myth', 5, 5, NULL, 'Judgment', 'Common', 118, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Warthog', 'Judgment', 118, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Warthog', 'Judgment', 118, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Giant Warthog', 'Judgment', 118, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Harvester Druid', 'Judgment', 120, 'Moderately Played', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Druid', 'T:  Add to your mana pool one mana of any color that a land you control could produce.',
'"In the end, the same soil lies atop the field, within the mountain, and water the sea."', 1, 1, NULL, 'Judgment', 'Common', 120, 'David Martin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Wayfarer', 'Judgment', 123, 'Lightly Played', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Druid', 'Sacrifice Krosan Wayfarer:  Put a land card from your hand into play.',
'"The Krosan Forest lives, and druids are its seeds."—Seton, centaur druid', 1, 1, NULL, 'Judgment', 'Common', 123, 'Edward P. Beard, Jr.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Wayfarer', 'Judgment', 123, 'Moderately Played', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Tracer', 'Judgment', 125, 'Damaged', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Insect Druid', 'WHen Nantuko Tracer comes into play, you may put target card from a graveyard on the bottom of its owner''s library.',
'Your past is a map to where you will go"—Nantuko teaching', 2, 1, NULL, 'Judgment', 'Common', 125, 'Greg Staples');

UPDATE info
SET rules_text = 'When Nantuko Tracer comes into play, you may put target card from a graveyard on the bottom of its owner''s library.'
WHERE extension = 'Judgment' AND collector_number = 125;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Tracer', 'Judgment', 125, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantom Tiger', 'Judgment', 129, 'Damaged', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Cat Spirit', 'Phantom Tiger comes into play with two +1/+1 counters on it.
If damage would be dealt to Phantom Tiger, prevent that damage.  Remove a +1/+1 counter from Phantom Tiger.',
NULL, 1, 0, NULL, 'Judgment', 'Common', 129, 'Brian Snoddy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sudden Strength', 'Judgment', 132, 'Damaged', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Instant', 'Target creature gets +3/+3 until end of turn.
Draw a card.',
'The Mirari''s magic transformed the Krosan Forest—and its inhabitants', NULL, NULL, NULL, 'Judgment', 'Common', 132, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sudden Strength', 'Judgment', 132, 'Damaged', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Willbender', 'Legions', 58, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Wizard', 'Morph 1U (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)
When Willbender is turned face up, change the target of target spell or ability with a single target.',
NULL, 1, 2, NULL, 'Legions', 'Uncommon', 58, 'Eric Peterson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Branchsnap Lorian', 'Legions', 118, 'Moderately Played', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Creature — Beast', 'Trample
Morph G (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)',
'Lorians treat trees and prey the same way:  by ripping them limb from limb.', 4, 1, NULL, 'Legions', 'Uncommon', 118, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pemmin''s Aura', 'Scourge', 45, 'Lightly Played', 9.33);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Enchant Creature', 'U:  Untap enchanted creature.
U:  Enchanted creature gains flying until end of turn.
U:  Enchanted creature can''t be the target of spells or abilities this turn.
1:  Enchanted creature gets +1/-1 or -1/+1 until end of turn.',
NULL, NULL, NULL, NULL, 'Scourge', 'Uncommon', 45, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pemmin''s Aura', 'Scourge', 45, 'Lightly Played', 9.33);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pemmin''s Aura', 'Scourge', 45, 'Lightly Played', 9.33);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pemmin''s Aura', 'Scourge', 45, 'Moderately Played', 9.33);






INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elfhame Palace', 'Eighth Edition', 324, 'Lightly Played', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'Elfhame Palace comes into play tapped. T: Add G or W to your mana pool.',
'The elfhames are the closest thing to "civilization" the elves allow themselves', NULL, NULL, NULL, 'Eighth Edition', 'Uncommon', 324, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Seasoned Marshal', 'Eighth Edition', 44, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Soldier', 'Whenever Seasoned Marshal attacks you may tap target creature.',
'She reads the battlefield like a map, always seeking the shortest route to victory.', 2, 2, NULL, 'Eighth Edition', 'Uncommon', 44, 'Matthew D. Wilson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spirit Link', 'Eighth Edition', 47, 'Lightly Played', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Enchant Creature', 'Whenever enchanted creature deals damage, you gain that much life.',
'I am bound to all my children.  I share in their joys, I rage at their injuries', NULL, NULL, NULL, 'Eighth Edition', 'Uncommon', 47, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Staunch Defenders', 'Eighth Edition', 205, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3WW', 5, 'Creature — Soldier', 'When Staunch Defendes comes into play, you gain 4 life.',
'Ogres learn how to smash stuff even before they learn how to walk.', 4, 3, NULL, 'Eighth Edition', 'Uncommon', 205, 'Tristan Elwell');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ogre Taskmaster', 'Eighth Edition', 205, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Ogre', 'Ogre Taskmaster can''t block.',
'The key to winning any fight is simply staying alive.', 3, 4, NULL, 'Eighth Edition', 'Uncommon', 49, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Stone', 'Eighth Edition', 232, 'Lightly Played', 0.20);

--ALTER TABLE info
--MODIFY COLUMN flavor_text VARCHAR(240);

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RR', 3, 'Creature — Wall', 'Walls can''t attack.',
'The ground itself lends its strength to these walls of living stone, which possess the stability of ancient mountains.  These mighty bulwarks thwart ground-based troops, providing welcome relief for weary warriors who defend the land.', 0, 8, NULL, 'Eighth Edition', 'Uncommon', 232, 'Rob Alexander');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wall of Stone', 'Eighth Edition', 232, 'Lightly Played', 0.20);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Enormous Baloth', 'Eighth Edition', 6, 'Lightly Played', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6G', 7, 'Creature — Beast', NULL,
'Its diet consists of fruits, plants, small woodland animals, woodlands, fruit groves, fruit farmers, and small cities.', 7, 7, NULL, 'Eighth Edition', 'Uncommon', 6, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Enormous Baloth', 'Eighth Edition', 6, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Redeem', 'Eighth Edition', 37, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant', 'Prevent all damage that would be dealt this turn to up to two target creatures.',
'"Let me redeem my brothers both from death."—William Shakespeare, Titus Andronicus', NULL, NULL, NULL, 'Eighth Edition', 'Common', 37, 'D. Alexander Gregory');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spined Wurm', 'Eighth Edition', 279, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Wurm', NULL,
'"I wouldn''t stand in front of that wurm, son.  ''Course, I wouldn''t stand behind it either.  Infact, standing anywhere near that wurm''s not much of a plan.  Running, now that''s a plan!—Wandering mage"', 5, 4, NULL, 'Eighth Edition', 'Common', 279, 'Keith Parkinson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Unholy Strength', 'Eighth Edition', 169, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Enchant Creature', 'Enchanted creature gets +2/+1',
'Such power grows the body as it shrinks the soul.', NULL, NULL, NULL, 'Eighth Edition', 'Common', 169, 'Puddnhead');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Goblin Raider', 'Eighth Edition', 191, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Creature — Goblin', 'Goblin Raider can''t block.',
'He''s smart for a goblin.  He can do two things:  hit and run.', 2, 2, NULL, 'Eighth Edition', 'Common', 191, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Goblin Raider', 'Eighth Edition', 191, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hill Giant', 'Eighth Edition', 194, 'Near Mint', 0.5);

-- This entry was already in the info table.
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Giant', NULL,
'Bent on a quest for blood, a giant can storm through a fort''s wall as if it were nothing more than a picket fence.', 3, 3, NULL, 'Eighth Edition', 'Common', 194, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hill Giant', 'Eighth Edition', 194, 'Near Mint', 0.5);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Axe', 'Eighth Edition', 197, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Sorcery', 'Lava Axe deals 5 damage to target player.',
'"Catch!"', NULL, NULL, NULL, 'Eighth Edition', 'Common', 197, 'Brian Snoddy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Axe', 'Eighth Edition', 197, 'Lightly Played', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reflexes', 'Eighth Edition', 213, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Enchant Creature', 'Enchanted creature has first strike.  (It deals combat damage before creatures without first strike.)',
'"Be as fast as lightning, and you will be just as deadly."—Combat trainer', NULL, NULL, NULL, 'Eighth Edition', 'Common', 213, 'Steve White');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Grizzly Bears', 'Eighth Edition', 256, 'Lightly Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Bear', NULL,
'Don''t try to outrun one of Dominaria''s grizzlies;  it''ll catch you, knock you down, and eat you.  Of course, you could run up a tree.  In that case you''ll get a nice view before it knocks the tree down and eats you.', 2, 2, NULL, 'Eighth Edition', 'Common', 256, 'D.J. Cleland-Hura');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Grizzly Bears', 'Eighth Edition', 256, 'Lightly Played', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Norwood Ranger', 'Eighth Edition', 271, 'Lightly Played', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf', NULL,
'The song of the forest is in perfect harmony.  If a single note is out of place, the elves will find its source.', 1, 2, NULL, 'Eighth Edition', 'Common', 271, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rampant Growth', 'Eighth Edition', 274, 'Near Mint', 0.28);
-- the collector number 271 was copied from the query above, it has been corrected to 274
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Sorcery', 'Search your library for a basic land card and put that card into play tapped.  Then shuffle your library.',
'Nature grows solutions to her problems.', NULL, NULL, NULL, 'Eighth Edition', 'Common', 274, 'Tom Kyffin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flayed Nim', 'Mirrodin', 65, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Skeleton', 'Whenever Flayed Nim deals combat damage to a creature, that creatures''s controller loses that much life.
2B:  Regenerate Flayed Nim',
NULL, NULL, NULL, NULL, 'Mirrodin', 'Uncommon', 65, 'Trevor Hairsine');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Great Furnace', 'Mirrodin', 282, 'Near Mint', 0.76);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Artifact Land', '(Great Furnace isn''t a spell.)
T:  Add R to your mana pool.',
'Kuldotha, wellspring of molten metal, temple of the goblin horde', NULL, NULL, NULL, 'Mirrodin', 'Common', 282, 'Rob Alexander');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Great Furnace', 'Mirrodin', 282, 'Near Mint', 0.76);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Great Furnace', 'Mirrodin', 282, 'Near Mint', 0.76);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Great Furnace', 'Mirrodin', 282, 'Near Mint', 0.76);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Neurok Hoversail', 'Mirrodin', 218, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact — Equipment', 'Equipped creature has flying.
Equip 2 (2:  Attach to target creature you control.  Equip only as a sorcery.  This card comes into play unattached and stays in play if the creature leaves play.)',
NULL, NULL, NULL, NULL, 'Mirrodin', 'Common', 218, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Steel Wall', 'Mirrodin', 248, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact Creature — Wall', '(Walls can''t attack)',
'"We sculpt the land into what we need—homes, armament, fortresses of war.  Our strength comes not only from knowing, but from commanding the terrain."', 0, 4, NULL, 'Mirrodin', 'Common', 248, 'David Day');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Steel Wall', 'Mirrodin', 248, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Steel Wall', 'Mirrodin', 248, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viridian Longbow', 'Mirrodin', 270, 'Near Mint', 0.31);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Artifact — Equipment', 'Equipped creature has "T:  This creature deals 1 damage to target creature or player."
Equip 3 (3:  Attach to target creature you control.  Equip only as a sorcery.  This card comes into play unattachedand stays in play if the creature leaves play.)',
NULL, NULL, NULL, NULL, 'Mirrodin', 'Common', 270, 'Jeremy Jarvis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vulshok Gauntlets', 'Mirrodin', 273, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact — Equipment', 'Equipped creature gets +4/+2 and doesn''t untap during its controller''s untap step.
Equip 3 (3:  Attach to target creature you control.  Equip only as a sorcery.  This card comes into play unattachedand stays in play if the creature leaves play.)',
NULL, NULL, NULL, NULL, 'Mirrodin', 'Common', 273, 'Richard Sardinha');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vulshok Gauntlets', 'Mirrodin', 273, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vulshok Gauntlets', 'Mirrodin', 273, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yotian Soldier', 'Mirrodin', 277, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact Creature — Soldier', 'Attacking doesn''t cause Yotian Soldier to tap.',
'Poets dream the verses of otherworldly stories.  Artificers dream the blueprints of otherplanar artifacts.', 1, 4, NULL, 'Mirrodin', 'Common', 277, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yotian Soldier', 'Mirrodin', 277, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yotian Soldier', 'Mirrodin', 277, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yotian Soldier', 'Mirrodin', 277, 'Lightly Played', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Arrest', 'Mirrodin', 2, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchant Creature', 'Attacking doesn''t cause Yotian Soldier to tap.',
'"Unfortunately, it doesn''t restrain the beast''s smell"—Glissa Sunseeker', NULL, NULL, NULL, 'Mirrodin', 'Common', 2, 'Tim Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Arrest', 'Mirrodin', 2, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Arrest', 'Mirrodin', 2, 'Lightly Played', 0.10);


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Regress', 'Mirrodin', 48, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Instant', 'Return target permanent to its owner''s hand.',
'"Once cast, a spell can be undone.  But once revealed, a secret can never again be kept."—Pontifex, elder researcher', NULL, NULL, NULL, 'Mirrodin', 'Common', 48, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Regress', 'Mirrodin', 48, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Contaminated Bond', 'Mirrodin', 61, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Enchant Creature', 'Whenever enchanted creature attacks or blocks, its controller loses 3 life.',
'This leash disciplines the master.', NULL, NULL, NULL, 'Mirrodin', 'Common', 61, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Contaminated Bond', 'Mirrodin', 61, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Contaminated Bond', 'Mirrodin', 61, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlegrowth', 'Mirrodin', 113, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Instant', 'Put a +1/+1 counter on target creature.',
'"I would gladly lie for the forest, but I''m much better at killing for it."', NULL, NULL, NULL, 'Mirrodin', 'Common', 113, 'John Matson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlegrowth', 'Mirrodin', 113, 'Lightly Played', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlegrowth', 'Mirrodin', 113, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battlegrowth', 'Mirrodin', 113, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Predator''s Strike', 'Mirrodin', 128, 'Lightly Played', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Instant', 'Target creature gets +3/+3 and gains trample until end of turn.',
'If you hear it coming, you''re not its prey.', NULL, NULL, NULL, 'Mirrodin', 'Common', 128, 'Tony Szczudlo');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Predator''s Strike', 'Mirrodin', 128, 'Lightly Played', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Predator''s Strike', 'Mirrodin', 128, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Predator''s Strike', 'Mirrodin', 128, 'Lightly Played', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Chosen', 'Mirrodin', 132, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Elf Warrior', 'Protection from artifacts.',
'"It is my honor to keep safe Tel-Jilad''s secrets, not to know them."', 2, 1, NULL, 'Mirrodin', 'Common', 132, 'Matthew D. Wilson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Exile', 'Mirrodin', 133, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Troll Warrior', '1G:  Regenerate Tel-Jilad Exile.',
'For his crimes, he was made to forget all the trolls'' secrets.  Now he knows only that he is outcast, but not why.', 2, 3, NULL, 'Mirrodin', 'Common', 133, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Exile', 'Mirrodin', 133, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Exile', 'Mirrodin', 133, 'Lightly Played', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Exile', 'Mirrodin', 133, 'Lightly Played', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skullclamp', 'Darksteel', 140, 'Lightly Played', 10.57);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact — Equipment', 'Equipped creature gets +1/-1.
When equipped creature is put into a graveyard, draw two cards.
Equip 1 (1:  Attach to target creature you control.  Equip only as a sorcery.  This card comes into play unattached and stays in play if the creature leaves play.)',
NULL, NULL, NULL, NULL, 'Darksteel', 'Uncommon', 140, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spincrusher', 'Darksteel', 144, 'Near Mint', 0.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact Creature', 'Whenever Spincrusher blocks, put a +1/+1 counter on it.
Remove a +1/+1 counter from Spincrusher:  Spincrusher is unblockable this turn.',
'It rolls with the punches.', 0, 2, NULL, 'Darksteel', 'Uncommon', 144, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spire Golem', 'Darksteel', 145, 'Foil Near Mint', 2.54);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6', 6, 'Artifact Creature — Golem', 'Affinity for Islands (this spell costs 1 less to play for each Island you control.)
Flying',
'The longer it soars above the shimmering swirls of the Quicksilver Sea, the more it adopts their unpredictability.', 2, 4, NULL, 'Darksteel', 'Common', 145, 'Darren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Whispersilk Cloak', 'Darksteel', 160, 'Near Mint', 2.90);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6', 6, 'Artifact — Equipment', 'Equipped creature is unblockable and can''t be the target of spells or abilities.
Equip 2 (2:  Attach to target creature you control.  Equip only as a sorcery.  This card comes into play unattached and stays in play if the creature leaves play.)',
NULL, NULL, NULL, NULL, 'Darksteel', 'Common', 160, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Iron-Barb Hellion', 'Fifth Dawn', 69, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5R', 6, 'Creature — Beast', 'Haste
Iron-Barb Hellion can''t block.',
'When you feel a rumble in the ground, hold perfectly still.  One sound will bring the hellion.', 5, 4, NULL, 'Fifth Dawn', 'Uncommon', 69, 'Doug Chaffee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Magma Jet', 'Fifth Dawn', 73, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Instant', 'Magma Jet deals 2 damage to target creature or player.
Scry 2 (Look at the top two cards of your library.  Put any number of them on the bottom of your library and the rest on top in any order.)',
NULL, NULL, NULL, NULL, 'Fifth Dawn', 'Uncommon', 73, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fangren Pathcutter', 'Fifth Dawn', 87, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4GG', 6, 'Creature — Beast ', 'Whenever Fangren Pathcutter attacks, attacking creatures gain trample until end of turn.',
'"Tracking a fangren pack is easy.  Catching up to one is fatal."—Viridian scout', 4, 6, NULL, 'Fifth Dawn', 'Uncommon', 87, 'Rob Alexander');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fangren Pathcutter', 'Fifth Dawn', 87, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spark Elemental', 'Fifth Dawn', 79, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Creature — Elemental ', 'Trample, haste
At end of turn, sacrifice Spark Elemental.',
'Vulshok shamans summon spark elementals to burn paths through thick underbrush—or through goblin salvage squads.', 3, 1, NULL, 'Fifth Dawn', 'Common', 79, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spark Elemental', 'Fifth Dawn', 79, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spark Elemental', 'Fifth Dawn', 79, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spark Elemental', 'Fifth Dawn', 79, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spark Elemental', 'Fifth Dawn', 79, 'Lightly Played', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vulshok Sorcerer', 'Fifth Dawn', 80, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RR', 3, 'Creature — Human Shaman', 'Haste
T:  Vulshok Sorcerer deals 1 damage to target creature or player.',
'Vulshok sorcerers train by leaping into electrified storm clouds.  Dead or alive, they come back down with smiles on their faces.', 1, 1, NULL, 'Fifth Dawn', 'Common', 80, 'rk post');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vulshok Sorcerer', 'Fifth Dawn', 80, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ferocious Charge', 'Fifth Dawn', 88, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant', 'Target creature gets +4/+4 until end of turn.
Scry 2 (Look at the top two cards of your library.  Put any number of them on the bottom of your library and the rest on top in any order.)',
NULL , NULL, NULL, NULL, 'Fifth Dawn', 'Common', 88, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tel-Jilad Lifebreather', 'Fifth Dawn', 96, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Troll Shaman', 'G, T, Sacrifice a Forest:  Regenerate target creature.',
'"The Tangle loans you life.  Spend it well."', 3, 2, NULL, 'Fifth Dawn', 'Common', 96, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lure', 'Champions of Kamigawa', 226, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Enchant Creature', 'All creatures able to block enchanted creature do so.',
'Jukai Forest was known for its secrets, which drew in many wayfarers and wizards.  But it was those same secrets that kept most of those seekers from ever being heard from again.', NULL, NULL, NULL, 'Champions of Kamigawa', 'Uncommon', 226, 'D. Alexander Gregory');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lure', 'Champions of Kamigawa', 226, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ethereal Haze', 'Champions of Kamigawa', 9, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant — Arcane', 'Prevent all damage that would be dealt by creatures this turn.',
'"Imagine a dove flying through smoke.  Does the dove injure the smoke?  Does the smoke impede the dove?"—Teachings of Eight-and-a-Half-Tails', NULL, NULL, NULL, 'Champions of Kamigawa', 'Common', 9, 'Chris Appelhands');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Spike', 'Champions of Kamigawa', 178, 'Near Mint', 3.75);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Sorcery — Arcane', 'Lava Spike deals 3 damage to target player.',
'"Some kami attacks during the war were rife with trickery, subterfuge, and subtlety, draining hope, and pride from the mortal world.  Other attacks were a lot more straightforward."', NULL, NULL, NULL, 'Champions of Kamigawa', 'Common', 178, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Spike', 'Champions of Kamigawa', 178, 'Near Mint', 3.75);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Spike', 'Champions of Kamigawa', 178, 'Near Mint', 3.75);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Spike', 'Champions of Kamigawa', 178, 'Near Mint', 3.75);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Jukai Messenger', 'Champions of Kamigawa', 218, 'Near Mint', 0.39);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Human Wizard', 'Forestwalk',
'Dosan''s monks, deep in spiritual thought, could walk through the thickest of forests without leaving a mark, even the leaves beneath their feet unaffected by their passing.', 1, 1, NULL, 'Champions of Kamigawa', 'Common', 218, 'Terese Nielsen');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blinding Powder', 'Betrayers of Kamigawa', 153, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact — Equipment', 'Equipped creature has "Unattach Blinding Powder:  Prevent all combat damage that would be dealth to this creature this turn."
Equip 2 (2:  Attach to target creature you control.  Equip only as a sorcery.)',
NULL, NULL, NULL, NULL, 'Betrayers of Kamigawa', 'Uncommon', 153, 'Greg Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blinding Powder', 'Betrayers of Kamigawa', 153, 'Near Mint', 0.25);


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flames of the Blood Hand', 'Betrayers of Kamigawa', 101, 'Near Mint', 0.28);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Instant', 'Flames of the Blood Hand deals 4 damage to target player.  The damage can''t be prevented.  If that player would gain life this turn, that player gains no life instead.',
'Many ogres extracted blood oaths from the oni they summoned.  Others simply etracted blood.', NULL, NULL, NULL, 'Betrayers of Kamigawa', 'Uncommon', 101, 'Aleksi Briclot');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('O-Naginata', 'Saviors of Kamigawa', 157, 'Lightly Played', 0.32);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact — Equipment', 'O-Naginata can be attached only a creature with 3 or more power.
Equipped creature gets +3/+0 and has trample.
Equip 2 (2:  Attach to target creature you control.  Equip only as a sorcery.)',
NULL, NULL, NULL, NULL, 'Saviors of Kamigawa', 'Uncommon', 157, 'Brian Snoddy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hand of Honor', 'Saviors of Kamigawa', 12, 'Near Mint', 1.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('WW', 2, 'Creature — Human Samurai', 'Protection from black
Bushido 1 (When this blocks or becomes blocked, it gets +1/+1 until end of turn.)',
'"The sword is just a tool.  It is the samurai''s hand that brings it to life."', 2, 2, NULL, 'Saviors of Kamigawa', 'Uncommon', 12, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shape Stealer', 'Saviors of Kamigawa', 55, 'Near Mint', 0.26);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('UU', 2, 'Creature — Shapeshifter Spirit', 'Whenever Shape Stealer blocks or becomes blocked by a creature, change Shape Stealer''s power and toughness to that creature''s power and toughness until end of turn.',
'"Stand back, I know just what to do."—Kiki-Jiki, Mirror Breaker', 1, 1, NULL, 'Saviors of Kamigawa', 'Uncommon', 55, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Kitsune Loreweaver', 'Saviors of Kamigawa', 17, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Fox Cleric', '1W:  Kitsune Loreweaver gets +0/+X until end of turn, where X is the number of cards in your hand.',
'"Know your history.  The lessonsn of the past will shield you in times of doubt."', 2, 1, NULL, 'Saviors of Kamigawa', 'Common', 17, 'Eric Polak');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathknell Kami', 'Saviors of Kamigawa', 65, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Creature — Spirit', 'Flying
2:  Deathknell Kami gets +1/+1 until end of turn.  Sacrifice it at end of turn.
Soulshift 1 (When this is put into a graveyard from play, you may return target Spirit card with converted mana cost 1 or less from your graveyard to your hand.)',
NULL, 0, 1, NULL, 'Saviors of Kamigawa', 'Common', 65, 'Puddnhead');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Kagemaro''s Clutch', 'Saviors of Kamigawa', 74, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Enchant Creature', 'Enchanted creature gets -X/-X, where X is the number of cards in your hand.',
'The mist was thick, cloying, and constricting.  Shiro fought his way to fresh air only to look back and see his comrades fallen on the battlefield behind them.', NULL, NULL, NULL, 'Saviors of Kamigawa', 'Common', 74, 'Pat Lee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sokenzan Spellblade', 'Saviors of Kamigawa', 115, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Creature — Ogre Samurai Shaman', 'Bushido 1 (When this blocks or becomes blocked, it gets +1/+1 until end of turn.)
1R:  Sokenzan Spellblade gets +X/+0 until end of turn, where X is the number of cards in your hand.',
NULL, 2, 3, NULL, 'Saviors of Kamigawa', 'Common', 115, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Promised Kannushi', 'Saviors of Kamigawa', 141, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Human Druid', 'Soulshift 7 (When this is put into a graveyard from play, you may return target Spirit card with converted mana cost 7 or less from your graveyard to your hand.)',
NULL, 1, 1, NULL, 'Saviors of Kamigawa', 'Common', 141, 'Matt Thompson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shinen of Life''s Roar', 'Saviors of Kamigawa', 149, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Spirit', 'All creatures able to block Shinen of Life''s Roar do so.
Channel — 2GG, Discard Shinen of Life''s Roar:  All creatures able to block target creature this turn do so.',
NULL, 1, 2, NULL, 'Saviors of Kamigawa', 'Common', 149, 'Matt Cavotta');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Sandstalker', 'Ninth Edition', 225, 'Near Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RR', 3, 'Creature — Viashino Warrior', 'Haste (This creature may attack the turn it comes under your control.)
At end of turn, return Viashino Sandstalker to its owner''s hand. (Return it only if it''s in play.)',
'"Some believe sandstalkers to be illusions; those with scars know better."—Zhalfirin Guide to the Desert', 4, 2, NULL, 'Ninth Edition', 'Common', 225, 'Andrew Robinson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Sandstalker', 'Ninth Edition', 225, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Sandstalker', 'Ninth Edition', 225, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Horned Turtle', 'Ninth Edition', 81, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Turtle', NULL,
'It doesn''t like having visitors...unless it''s having them for lunch.', 1, 4, NULL, 'Ninth Edition', 'Common', 81, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Contaminated Bond', 'Ninth Edition', 120, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Enchantment — Aura', 'Enchant Creature (Target a creature as you play this.  This card comes into play attached to that creature.)
Whenever enchanted creature attacks or blocks, its controller loses 3 life.',
NULL, NULL, NULL, NULL, 'Ninth Edition', 'Common', 120, 'Thomas M. Baza');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Seething Song', 'Ninth Edition', 216, 'Lightly Played', 0.94);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Instant', 'Add RRRRR to your mana pool.',
'"The purest ore is produced from the hottest furnace, and the brightest thunder-bolt is elicited from the darkest storm."—Charles Colton', NULL, NULL, NULL, 'Ninth Edition', 'Common', 216, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Llanowar Elves', 'Ninth Edition', 253, 'Lightly Played', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf Druid', 'T:  Add G to your mana pool.',
'One bone broken for every twig snapped underfoot.— Llanowar penalty for trespassing', 1, 1, NULL, 'Ninth Edition', 'Common', 253, 'Kev Walker');

--RAVNICA

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sunhome, Fortress of the Legion', 'Ravnica:  City of Guilds', 282, 'Near Mint', 0.43);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'T:  Add 1 to your mana pool.
2RW, T:  target creature gains double strike until end of turn.',
'Sunhome—the stalwart shield, the towering sentinel, the seat of justice.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 282, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Svogthos, the Restless Tomb', 'Ravnica:  City of Guilds', 283, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'T:  Add 1 to your mana pool.
3BG:  Until end of turn, Svogthos, the Restless Tomb becomes a black and green Plant Zombie creature with "This creature''s power and toughness are each equal to the number of creature cards in your graveyard." It''s still a land.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 283, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Voyager Staff', 'Ravnica:  City of Guilds', 274, 'Near Mint', 0.50);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact', '2,  Sacrifice Voyager Staff:  Remove target creature from the game.  Return that creature to play under its owners control at end of turn.',
'Voyager staffs are sought by those hoping to find an escape from the sprawling glut of Ravnica.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 274, 'Tsutomu Kawade');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Auratouched Mage', 'Ravnica:  City of Guilds', 1, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5W', 6, 'Creature — Human Wizard', 'When Auratouched Mage comes into play, search your library for an Aura card that could enchant it.  If Auratouched Mage is still in play, attach that Aura to it.  Otherwise, reveal the Aura card and put it into your hand.  Then shuffle your library.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 1, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Festival of the Guildpact', 'Ravnica:  City of Guilds', 17, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('XW', 1, 'Instant', 'Prevent the next X damage that would be dealt to you this turn.
Draw a card.',
'Everyone knows that violence at the Festival brings the worst of luck, so for at least one day a year arms are laid down in favor of brimming goblets.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 17, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Festival of the Guildpact', 'Ravnica:  City of Guilds', 17, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Darkblast', 'Ravnica:  City of Guilds', 82, 'Near Mint', 0.85);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Instant', 'Target creature gets -1/-1 until end of turn.
Dredge 3 (If you would draw a card, instead you may put exactly three cards from the top of your library into your graveyard.  If you do, return this card from your graveyard to your hand.  Otherwise, draw a card.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 82, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dimir Machinations', 'Ravnica:  City of Guilds', 84, 'Near Mint', 1.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Sorcery', 'Look at the top three cards of target player''s library.  Remove any number of those cards from the game, then put the rest back in any order.
Transmute 1BB (1BB, Discard this card:  Search your library for a card with the same converted mana cost as this card, reveal it, and put it into your hand.  Then shuffle your library.  Play only as a sorcery',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 84, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Drooling Groodiion', 'Ravnica:  City of Guilds', 204, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3BBG', 6, 'Creature — Beast', '2BG, Sacrifice a creature:  Target creature gets +2/+2 until end of turn.  Another target creature gets -2/-2 until end of turn.',
'"The Golgari expand, yes, but I refuse to call their tainted creations ''growth.''"—Veszka, Selesnya evangel', 4, 3, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 204, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flame-Kin Zealot', 'Ravnica:  City of Guilds', 206, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RRW', 4, 'Creature — Elemental Berserker', 'When Flame-Kin Zealot comes into play, creatures you control get +1/+1 and gain haste until end of turn.',
'Boros soldiers are like a cache of bombs ready to explode, and the flame-kin light their faces.', 2, 2, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 206, 'Arnie Swekel');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Reroute', 'Ravnica:  City of Guilds', 139, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Instant', 'Change the target of target activated ability with a single target.
Draw a card.',
'Three hundred years of practice twarted by an instant of mischief.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 139, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stoneshaker Shaman', 'Ravnica:  City of Guilds', 145, 'Near Mint', 0.43);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Human Shaman', 'At the end of each player''s turn, that player sacrifices an untapped land.',
'There is no place in Ravnica for stagnation, no room for lands unfilled and untilled.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 145, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Recollect', 'Ravnica:  City of Guilds', 178, 'Near Mint', 0.15);
--collector number from the query above was copied. corrected to 178
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Sorcery', 'Return target card from your graveyard to your hand.',
'"The bones of the past will tell their tales—if you know how to speak their language."—Savra', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 178, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rolling Spoil', 'Ravnica:  City of Guilds', 179, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Sorcery', 'Destroy target land.  If B was spent to play Rolling Spoil, all creatures get -1/-1 until end of turn.',
'The shadow that fell over the grove was silent yet horribly alive, roiling with millions of tiny minions dedicated to the process of rot.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Uncommon', 179, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Golgari Rot Farm', 'Ravnica:  City of Guilds', 278, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'Golgari Rot Farm comes into play tapped.
When Golgari Rot Farm comes into play, return a land you control to its owner''s hand.
T:  Add BG to your mana pool.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 278, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Selesnya Sanctuary', 'Ravnica:  City of Guilds', 281, 'Near Mint', 0.30);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land', 'Selesnya Sanctuary comes into play tapped.
When Selesnya Sanctuary comes into play, return a land you control to its owner''s hand.
T:  Add GW to your mana pool.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 281, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Caregiver', 'Ravnica:  City of Guilds', 6, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Human Cleric', 'W, Sacrifice a creature:  Prevent the next 1 damage that would be dealth to target creature or player this turn.',
'"The guilds each believe its way is right, but their ways only bring blood to Ravnica''s streets and tears to Ravnica''s families."', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 6, 'William Simpson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Faith''s Fetters', 'Ravnica:  City of Guilds', 16, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Enchantment — Aura', 'Enchant permanent
When Faith''s Fetters comes into play, you gain 4 life.
Enchanted permanent''s activated abilities can''t be played unless they''re mana abilities.  If enchanted permanent is a creature, it can''t attack or block.',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 16, 'Chippy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Convolute', 'Ravnica:  City of Guilds', 41, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Instant', 'Counter target spell unless its controller pays 4.',
'The words came to the sorcerer''s lips but refused to budge any further.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 41, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Convolute', 'Ravnica:  City of Guilds', 41, 'Near Mint', 0.10);
--
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Instant', 'Counter target spell unless its controller pays 4.',
--'The words came to the sorcerer''s lips but refused to budge any further.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 41, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dizzy Spell', 'Ravnica:  City of Guilds', 43, 'Near Mint', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Instant', 'Target creature gets -3/-0 until end of turn.
Transmute 1UU (1UU, Discard this card:  Search your library for a card with the same converted mana cost as this card, reveal it, and put it into your hand.  Then shuffle your library.  Play only as a sorcery)',
NULL, NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 43, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Drift of Phantasms', 'Ravnica:  City of Guilds', 46, 'Near Mint', 0.86);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Spirit', 'Defender (This creature can''t attack.)
Flying
Transmute 1UU (1UU, Discard this card:  Search your library for a card with the same converted mana cost as this card, reveal it, and put it into your hand.  Then shuffle your library.  Play only as a sorcery.)',
NULL, 0, 5, NULL, 'Ravnica:  City of Guilds', 'Common', 46, 'Michael Phillipps');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gaze of the Gorgon', 'Ravnica:  City of Guilds', 246, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B|G', 4, 'Instant', '(B|G can be paid with either B or G.)
Regenerate target creature.  At end of combat, destroy all creatures that blocked or were blocked by that creature this turn.',
'Even the dead give way to the mineral gaze of the gorgon.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 246, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gaze of the Gorgon', 'Ravnica:  City of Guilds', 246, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infectious Host', 'Ravnica:  City of Guilds', 91, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Spirit', 'When Infectious Host is put into a graveyard from play, target player loses 2 life.',
'"Last man, dead man, knocking on the door.  Cankerman, soreman, knock no more."—Ravnican children''s rhyme', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 91, 'rk post');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infectious Host', 'Ravnica:  City of Guilds', 91, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infectious Host', 'Ravnica:  City of Guilds', 91, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infectious Host', 'Ravnica:  City of Guilds', 91, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Last Gasp', 'Ravnica:  City of Guilds', 93, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Instant', 'Target creature gets -3/-3 until end of turn.',
'"Allow me a moment to catch your breath."', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 93, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Last Gasp', 'Ravnica:  City of Guilds', 93, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Last Gasp', 'Ravnica:  City of Guilds', 93, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sewerdreg', 'Ravnica:  City of Guilds', 104, 'Near Mint', 0.5);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3BB', 5, 'Creature — Spirit', 'Swampwalk
Sacrifice Sewerdreg:  Remove target card in a graveyard from the game.',
'They hardly have form, dripping through pipe and grate with the slip and stench of flowing sewage.', 3, 3, NULL, 'Ravnica:  City of Guilds', 'Common', 104, 'Joel Thomas');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Strands of Undeath', 'Ravnica:  City of Guilds', 108, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Enchantment — Aura', 'Enchant Creature
When Strands of Undeath comes into play, target player discards two cards.
B:  Regenerate enchanted creature.',
'"Why limit yourself to mortal law when you can outlive those who enforce it?"—Czaric, Orzhov prelate', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 108, 'Dave Allsop');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Strands of Undeath', 'Ravnica:  City of Guilds', 108, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thoughtpicker Witch', 'Ravnica:  City of Guilds', 109, 'Near Mint', 0.23);
--missing a comma before punch.
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Creature — Human Wizard', '1, Sacrifice a creature:  Look at the top two cards of target opponent''s library, then remove one of them from the game.',
'"Once the brew gets the brains nice and pickled, they''re a lot easier to pick through."', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 109, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thoughtpicker Witch', 'Ravnica:  City of Guilds', 109, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thoughtpicker Witch', 'Ravnica:  City of Guilds', 109, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thoughtpicker Witch', 'Ravnica:  City of Guilds', 109, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coalhauler Swine', 'Ravnica:  City of Guilds', 119, 'Near Mint', 0.15);
-- another comma before punch
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4RR', 6, 'Creature — Beast', 'Whenever Coalhauler Swine is dealt damage, it deals that much damage to each player.',
'"Nothing stops industry in Ravnica"—certainly not the safety of its workers.', 4, 4, NULL, 'Ravnica:  City of Guilds', 'Common', 119, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Galvanic Arc', 'Ravnica:  City of Guilds', 126, 'Near Mint', 0.6);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Enchantment — Aura', 'Enchant creature
When Galvanic Arc comes into play, it deals 3 damage to target creature or player.
Enchanted creature has first strike.',
NULL, 4, 4, NULL, 'Ravnica:  City of Guilds', 'Common', 126, 'Michael Sutfin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Goblin Spelunkers', 'Ravnica:  City of Guilds', 128, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Goblin Warrior', 'Mountainwalk
Chimney sweeps, explorers of abandoned buildings, spire climbers...goblin spelunkers have found countless riches within Ravnica''s metropolis',
NULL, 2, 2, NULL, 'Ravnica:  City of Guilds', 'Common', 128, 'Glenn Fabry');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skyknight Legionnaire', 'Ravnica:  City of Guilds', 232, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RW', 3, 'Creature — Human Knight', 'Flying, haste',
'"I do not know which gives me more pride:  the legions of soldiers marching in thunderous lockstep, or the cry of the skyknights riding their rocs like jagged lightning overhead."—Razia', 2, 2, NULL, 'Ravnica:  City of Guilds', 'Common', 232, 'Jim Murray');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skyknight Legionnaire', 'Ravnica:  City of Guilds', 232, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skyknight Legionnaire', 'Ravnica:  City of Guilds', 232, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skyknight Legionnaire', 'Ravnica:  City of Guilds', 232, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skyknight Legionnaire', 'Ravnica:  City of Guilds', 232, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Smash', 'Ravnica:  City of Guilds', 143, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Instant', 'Destroy target artifact.
Draw a card.',
'Ravnica''s laws protect not its citizens but its industry.  Aging equipment is destroyed rather than restored, to bring more money into the factories'' coffers.', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 143, 'Paolo Parente');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Centaur Safeguard', 'Ravnica:  City of Guilds', 244, 'Lightly Played', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G|W', 3, 'Creature — Centaur Warrior', '(G|W can be paid with either G or W.)
When Centaur Safeguard is put into a graveyard from play, you may gain 3 life.',
'Swift, strong, and selfless, the centaurs are the shields of the Conclave.', 3, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 244, 'Glenn Fabry');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Civic Wayfinder', 'Ravnica:  City of Guilds', 157, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Elf Warrior Druid', 'When Civic Wayfinder comes into play, you may search your library for a basic land card, reveal it, and put it into your hand.  If you do, shuffle your library.',
'"These alleys are not safe.  Come, I can guide you back to the market square."', 2, 2, NULL, 'Ravnica:  City of Guilds', 'Common', 157, 'Cyril Van Der Haegen');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elves of Deep Shadow', 'Ravnica:  City of Guilds', 161, 'Near Mint', 1.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf Druid', 'T:  Add B to your mana pool.  Elves of Deep Shadow deals 1 damage to you.',
'Cast out of the Conclave generations ago, these elves found a home in the corrupted districts of the Golgari.', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 161, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elves of Deep Shadow', 'Ravnica:  City of Guilds', 161, 'Near Mint', 1.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elves of Deep Shadow', 'Ravnica:  City of Guilds', 161, 'Near Mint', 1.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elves of Deep Shadow', 'Ravnica:  City of Guilds', 161, 'Near Mint', 1.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Elves of Deep Shadow', 'Ravnica:  City of Guilds', 161, 'Near Mint', 1.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fists of Ironwood', 'Ravnica:  City of Guilds', 164, 'Lightly Played', 0.18);
--collector number 161 was copied. corrected to 164
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf Druid', 'T:  Add B to your mana pool.  Elves of Deep Shadow deals 1 damage to you.',
'Cast out of the Conclave generations ago, these elves found a home in the corrupted districts of the Golgari.', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 164, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fists of Ironwood', 'Ravnica:  City of Guilds', 164, 'Lightly Played', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Greater Mossdog', 'Ravnica:  City of Guilds', 169, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Hound', 'Dredge 3 (If you would draw a card, instead you may put exactly three cards from the top of your library into your graveyard.  If you do, return this card from your graveyard to your hand.  Otherwise, draw a card.)',
'Man''s best fungus.', 3, 3, NULL, 'Ravnica:  City of Guilds', 'Common', 169, 'Chippy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Selesnya Evangel', 'Ravnica:  City of Guilds', 228, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('GW', 2, 'Creature — Elf Shaman', '1, T, Tap an untapped creature you control:  Put a 1/1 green Saproling creature token into play.',
'"The clamor of the city drowns all voices.  But together we can sing a harmony that will resonate from Ravnica''s tallest spires to her deepest wells."', 1, 2, NULL, 'Ravnica:  City of Guilds', 'Common', 228, 'Rob Alexander');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Siege Wurm', 'Ravnica:  City of Guilds', 183, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5GG', 7, 'Creature — Wurm', 'Convoke (Each creature you tap while playing this spell reduces its cost by 1 or by one mana of that creature''s color.)
Trample',
'"The Rubblefield was once among the wealthiest districts in Ravnica.  All it took was a single wurm to reduc it to ruins."', 5, 5, NULL, 'Ravnica:  City of Guilds', 'Common', 183, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stone-Seeder Hierophant', 'Ravnica:  City of Guilds', 184, 'Foil Near Mint', 9.47);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Creature — Human Druid', 'Whenever a land comes into play under your control, untap Stone-Seeder Hierophant.
T:  Untap target land.',
'Her touch brings to bare stone what water and sun bring to rich soil', 1, 1, NULL, 'Ravnica:  City of Guilds', 'Common', 184, 'William Simpson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sundering Vitae', 'Ravnica:  City of Guilds', 185, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant', 'Convoke (Each creature you tap while playing this spell reduces its cost by 1 or by one mana of that creature''s color.)
Destroy target enchantment.',
'Centuries of wind, rain and roots compressed into an instant of destruction:  such is the power of Selesnya', NULL, NULL, NULL, 'Ravnica:  City of Guilds', 'Common', 185, 'Shishizaru');

--GUILDPACT

--UPDATE card
--SET title = 'Nivix, Aerie of the Firemind', extension = 'Guildpact', collector_number = 160, shape = 'Near Mint', worth = 0.12
--WHERE item_id = 380;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nivix, Aerie of the Firemind', 'Guildpact', 160, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
2UR, T:  Remove the top card of your library from the game.  Until your next turn, you may play that card if it''s an instant or sorcery.',
'Niv-Mizzet''s genius and vanity reverberate throughout the mirrored halls of Nivix', NULL, NULL, NULL, 'Guildpact', 'Uncommon', 160, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skarrg, the Rage Pits', 'Guildpact', 163, 'Near Mint', 0.73);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
RG, T:  Target creature gets +1/+1 and gains trample until end of turn.',
'"This palace will be our fire-spit, and roasted prince our victory meal.  Send in the torch-pigs!"—Ghut Rak, Gruul guildmage', NULL, NULL, NULL, 'Guildpact', 'Uncommon', 163, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Agent of Masks', 'Guildpact', 100, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3WB', 5, 'Creature — Human Advisor',
'At the beginning of your upkeep, each opponent loses 1 life.  You gain life equal to the life lost this way.',
'"You say that I am two-faced? Enough with the flattery, We have business to conduct."', 2, 3, NULL, 'Guildpact', 'Uncommon', 100, 'Matt Thompson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Agent of Masks', 'Guildpact', 100, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Martyred Rusalka', 'Guildpact', 12, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Spirit',
'W, Sacrifice a creature:  Target creature can''t attack this turn.',
'Rakdos cultists hanged her for sport in the township square.  Her ghost now stands vigil at what has become known as the Tree of Weeping.', 1, 1, NULL, 'Guildpact', 'Uncommon', 12, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Order of the Stars', 'Guildpact', 13, 'Lightly Played', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Human Cleric',
'Defender (This creature can''t attack.)
As Order of the Stars comes into play, choose a color.
Order of the Stars has protection from the chosen color.',
'As stoic as the marble halls, as unblinking as the stars upon their shields', 0, 1, NULL, 'Guildpact', 'Uncommon', 13, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Souls of the Faultless', 'Guildpact', 131, 'Mear Mint', 0.35);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('WBB', 3, 'Creature — Spirit',
'Defender(This creature can''t attack.)
Whenever Souls of the Faultless is dealt combat damage, you gain that much life and attacking player loses that much life.',
'"More horrible than their empty forms are their noble eyes.  I dare not strike"—Klattic, Boros legionnaire', 0, 4, NULL, 'Guildpact', 'Uncommon', 131, 'Pat Lee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Souls of the Faultless', 'Guildpact', 131, 'Mear Mint', 0.35);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Drowned Rusalka', 'Guildpact', 24, 'Mear Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 31, 'Creature — Spirit',
'U, Sacrificea creature:  Discard a card, then draw a card.',
'"Lurking below the current, she thirsts until others comme to drink"', 1, 1, NULL, 'Guildpact', 'Uncommon', 24, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Electrolyze', 'Guildpact', 111, 'Mear Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UR', 111, 'Instant',
'Electrolyze deals 2 damage divided as you choose among any number of target creatures and/or players.
Draw a card.',
'The Izzet learn something from every lesson they teach', NULL, NULL, NULL, 'Guildpact', 'Uncommon', 111, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vertigo Spawn', 'Guildpact', 42, 'Mear Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Illusion',
'Defender (This creature can''t attack.)
Whenever Vertigo Spawn blocks a creature, tap that creature.  It doesn''t untap during its controller''s next untap step.',
NULL, NULL, NULL, NULL, 'Guildpact', 'Uncommon', 42, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hissing Miasma', 'Guildpact', 51, 'Mear Mint', 0.91);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1BB', 3, 'Enchantment',
'Whenever a creature attacks you, its controller loses 1 life.',
'All that remains when the fog finishes are neat piles of polished bones, like acid-etched glass.  Orzhov servants collect them to make altar chimes.', NULL, NULL, NULL, 'Guildpact', 'Uncommon', 51, 'Ben Thompson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hissing Miasma', 'Guildpact', 51, 'Mear Mint', 0.91);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hissing Miasma', 'Guildpact', 51, 'Mear Mint', 0.91);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Plagued Rusalka', 'Guildpact', 56, 'Mear Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Creature — Spirit',
'B, Sacrifice a creature:  Target creature gets -1/-1 until end of turn.',
'"Look at her, once filled with innocence.  Death has a way of wringing away such...deficiencies"—Savra', 1, 1, NULL, 'Guildpact', 'Uncommon', 56, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Revenant Patriarch', 'Guildpact', 59, 'Mear Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4B', 5, 'Creature — Spirit',
'When Revenant Patriarch comes into play, if W was spent to play Revenant Patriarch, target player skips his or her next combat phase.
Revenant Patriarch can''t block.',
'"The Golgari raise the bodies of their dead to serve.  We raise the spirits of our dead to lead."', 4, 3, NULL, 'Guildpact', 'Uncommon', 59, 'Nick Percival');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Smogsteed Rider', 'Guildpact', 63, 'Moderately Played', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2BB', 4, 'Creature — Human Wizard',
'Whenever Smogsteed Rider attacks, each other attacking creature gains fear until end of turn.',
'"An entire order of mages who draw their power from Ravnica''s smog? Yet another indicator of our world''s decay."—Dravash, dowsing shaman', 2, 2, NULL, 'Guildpact', 'Uncommon', 63, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shattering Spree', 'Guildpact', 75, 'Near Mint', 4.28);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Sorcery',
'Replicate R (When you play this spell, copy it for each time you paid its replicate cost.  You may choose new targets for the copies.
Destroy target artifact.',
NULL, 2, 2, NULL, 'Guildpact', 'Uncommon', 75, 'Pat Lee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shattering Spree', 'Guildpact', 75, 'Near Mint', 4.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shattering Spree', 'Guildpact', 75, 'Lightly Played', 4.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shattering Spree', 'Guildpact', 75, 'Near Mint', 4.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Battering Wurm', 'Guildpact', 79, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6G', 7, 'Creature — Wurm',
'Bloodthirst 1 (If an opponent was dealt damage this turn, this creature comes into play with a +1/+1 counter on it.)
Creatures with power less than Battering Wurm''s power can''t block it.',
NULL, 4, 3, NULL, 'Guildpact', 'Uncommon', 79, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Crash Landing', 'Guildpact', 82, 'Lightly Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant',
'Target creature with flying loses flying until end of turn.  Crash Landing deals damage to that creature equal to the number of Forests you control.',
'"The other guilds think they''re untouchable It''s time we brought them back down to earth."—Glut Rak, Gruul guildmage', NULL, NULL, NULL, 'Guildpact', 'Uncommon', 82, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dryad Sophisticate', 'Guildpact', 83, 'Near Mint', 0.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Dryad',
'Nonbasic landwalk',
'From Tin Street to the Outcast mansions, she walks unbidden and unbound, her graceful silence never shaken by the riot of city life around her.', 2, 1, NULL, 'Guildpact', 'Uncommon', 83, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dryad Sophisticate', 'Guildpact', 83, 'Near Mint', 0.19);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Turf', 'Guildpact', 158, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'Gruul Turf comes into play tapped.
When Gruul Turf comes into play, return a land you control to its owner''s hand.
T:  Add RG to your mana pool.',
NULL, NULL, NULL, NULL, 'Guildpact', 'Common', 158, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Turf', 'Guildpact', 158, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Turf', 'Guildpact', 158, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Turf', 'Guildpact', 158, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Izzet Boilerworks', 'Guildpact', 159, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'Izzet Boilerworks comes into play tapped.
When Izzet Boilerworks comes into play, return a land you control to its owner''s hand.
T:  Add UR to your mana pool.',
NULL , NULL, NULL, NULL, 'Guildpact', 'Common', 159, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Izzet Boilerworks', 'Guildpact', 159, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Signet', 'Guildpact', 150, 'Near Mint', 0.63);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact',
'1, T:  Add RG to your mana pool.',
'Gruul territorial markings need not be legible.  The blood, snot, and muck used to smear them are unmistakably Gruul.', NULL, NULL, NULL, 'Guildpact', 'Common', 150, 'Tim Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Signet', 'Guildpact', 150, 'Near Mint', 0.63);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Signet', 'Guildpact', 150, 'Near Mint', 0.63);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Signet', 'Guildpact', 150, 'Near Mint', 0.63);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orzhov Signet', 'Guildpact', 155, 'Near Mint', 0.43);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact',
'1, T:  Add WB to your mana pool.',
'The form of the sigil is just as important as the sigil itself.  If it''s carried on a medallion, its bearer is a master.  If it''s tattooed on the body, its bearer is a slave.', NULL, NULL, NULL, 'Guildpact', 'Common', 155, 'Tim Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pillory of the Sleepless', 'Guildpact', 125, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WB', 3, 'Enchantment — Aura',
'Enchant Creature
Enchanted creature can''t attack or block.
Enchanted creature has "At the beginning of your upkeep, you lose 1 life."',
'Which is worse—the sleep which never ends or that which never comes?', NULL, NULL, NULL, 'Guildpact', 'Common', 125, 'Mark Romanoski');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pillory of the Sleepless', 'Guildpact', 125, 'Lightly Played', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pillory of the Sleepless', 'Guildpact', 125, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pillory of the Sleepless', 'Guildpact', 125, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benediction of Moons', 'Guildpact', 3, 'Lightly Played', 0.04);

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Sorcery',
'You gain 1 life for each player.
Haunt (When this spell card is put into a graveyard after resolving, remove it from the game  haunting target creature.)',
'When the creature Benediction of Moons haunts is put into a graveyard, you gain 1 life for each player.', NULL, NULL, NULL, 'Guildpact', 'Common', 3, 'Matt Cavotta');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benediction of Moons', 'Guildpact', 3, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benediction of Moons', 'Guildpact', 3, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benediction of Moons', 'Guildpact', 3, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mourning Thrull', 'Guildpact', 146, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W|B', 2, 'Creature — Thrull',
'(W|B can be paid with either W or B.)
Flying
Whenever Mourning Thrull deals damage, you gain that much life.',
'During their ascent to spirithood, patriarchs of Orzhova shed both flesh and emotion.  This earthly slag is collected and formed into thralls.', 1, 1, NULL, 'Guildpact', 'Common', 146, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mourning Thrull', 'Guildpact', 146, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mourning Thrull', 'Guildpact', 146, 'Lightly Played', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mourning Thrull', 'Guildpact', 146, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infiltrator''s Magemark', 'Guildpact', 28, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Enchantment — Aura',
'Enchant creature
Creatures you control that are enchanted get +1/+1 and can''t be blocked except by creatures with defender.',
'"In secrecy is strength, None can oppose one who cannot be found."—Szadek', NULL, NULL, NULL, 'Guildpact', 'Common', 28, 'Brandon Kitkouski');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infiltrator''s Magemark', 'Guildpact', 28, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Infiltrator''s Magemark', 'Guildpact', 28, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orzhov Euthanist', 'Guildpact', 54, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Human Assassin',
'Haunt (When this card is put into a graveyard from play, remove it from the game haunting target creature.)',
'When Orzhov Euthanist comes into play or the creature it haunts is put into a graveyard, destroy target creature that was dealt damage this turn.', 2, 2, 0, 'Guildpact', 'Common', 54, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orzhov Euthanist', 'Guildpact', 54, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orzhov Euthanist', 'Guildpact', 54, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orzhov Euthanist', 'Guildpact', 54, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ostiary Thrull', 'Guildpact', 55, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Thrull',
'W, T:  Tap target creature.',
'Orzhov churches don''t pass the plate for collection.  They charge for admission', 2, 2, NULL, 'Guildpact', 'Common', 55, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ostiary Thrull', 'Guildpact', 55, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ostiary Thrull', 'Guildpact', 55, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ostiary Thrull', 'Guildpact', 55, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ostiary Thrull', 'Guildpact', 55, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Poisonbelly Ogre', 'Guildpact', 57, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4B', 5, 'Creature — Ogre Warrior',
'Whenever another creature comes into play, its controller loses 1 life.',
'Some claim it''s a failed Simic experiement, others say a Golgari creation.  Both guilds deny all responsibility, while secretly studying its strange virulence', 3, 3, NULL, 'Guildpact', 'Common', 57, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Poisonbelly Ogre', 'Guildpact', 57, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Burning-Tree Bloodscale', 'Guildpact', 104, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2RG', 4, 'Creature — Viashino Berserker',
'Bloodthirst 1 (If an opponent was dealt damage this turn, this creature comes into play with a +1/+1 counter on it.
2R:  Target creature can''t block Burning-Tree Bloodscale this turn.
2G:  Target creature blocks Burning-Tree Bloodscale this turn if able.',
NULL, 3, 3, NULL, 'Guildpact', 'Common', 104, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fencer''s Magemark', 'Guildpact', 65, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Enchantment — Aura',
'Enchant creature
Creaturess you control that are enchanted get +1/+1 and have first strike',
'"The first blow is the most important.  It often negates the need for a second."—Agrus Kos', NULL, NULL, NULL, 'Guildpact', 'Common', 65, 'Brandon Kitkouski');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fencer''s Magemark', 'Guildpact', 65, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fencer''s Magemark', 'Guildpact', 65, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fencer''s Magemark', 'Guildpact', 65, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fencer''s Magemark', 'Guildpact', 65, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ogre Savant', 'Guildpact', 70, 'Foil Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Creature — Ogre Wizard',
'When Ogre Savant comes into play, if U was spent to play Ogre Savant, return target creature to its owner''s hand.',
'He''s an oxymoron', 3, 2, NULL, 'Guildpact', 'Common', 70, 'Paolo Parente');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ogre Savant', 'Guildpact', 70, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pyromantics', 'Guildpact', 72, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Instant',
'Replicate 1R (When you play this spell, copy it for each time you paid its replicate cost.  You may choose new targets for the copies.
Pyromantics deals 1 damage to target creature or player.',
NULL, 3, 2, NULL, 'Guildpact', 'Common', 72, 'Glen Angus');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wild Cantor', 'Guildpact', 149, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R|G', 1, 'Creature — Human Druid',
'(R|G can be paid with either R or G.)
Sacrifice Wild Cantor:  Add one mana of any color to your mana pool.',
'They are the voice of the wild, crying out with nature''s fury and bringing forth its primeval might.', 1, 1, NULL, 'Guildpact', 'Common', 149, 'Glenn Fabry');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghor-Clan Savage', 'Guildpact', 86, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GG', 5, 'Creature — Centaur Berserker',
'Bloodthirst 3 (If an opponent was dealt damage this turn, this creature comes into play with three +1/+1 counters on it.)',
'The snap of sinew.  The crunch of bone.  A cry for mercy.  These are the music of the Gruul.', 2, 3, NULL, 'Guildpact', 'Common', 86, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gruul Nodorog', 'Guildpact', 88, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4GG', 6, 'Creature — Beast',
'R:  Gruul Nodorog can''t be blocked this turn except by two or more creatures.',
'Petting the nodorog—Gruul expression meaning "making a really big mistake".', 4, 4, NULL, 'Guildpact', 'Common', 88, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silhana Ledgewalker', 'Guildpact', 94, 'Near Mint', 0.57);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Elf Rogue',
'Silhana Ledgewalker can''t be blocked except by creatures with flying.
Silhana Ledgewalker can''t be the target of spells or abilities your opponents control.',
'Street folk call them "spire mice," but behind the mockery is an unspoken envy of the ledgewalkers'' skill at avoiding harm.', 1, 1, NULL, 'Guildpact', 'Common', 94, 'James Wong');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silhana Ledgewalker', 'Guildpact', 94, 'Near Mint', 0.57);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silhana Ledgewalker', 'Guildpact', 94, 'Near Mint', 0.57);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silhana Ledgewalker', 'Guildpact', 94, 'Near Mint', 0.57);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silhana Starfletcher', 'Guildpact', 95, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Elf Druid Archer',
'As Silhana Starfletcher comes into play, choose a color.
T:  Add one mana of the chosen color to your mana pool.
Silhana Starfletcher can block as though it had flying.',
'In light he finds both gift and weapon.', 1, 3, NULL, 'Guildpact', 'Common', 95, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wildsize', 'Guildpact', 98, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant',
'Target creature gets +2/+2 and gains trample until end of turn.
Draw a card.',
'Two times the size, four times the smell.', NULL, NULL, NULL, 'Guildpact', 'Common', 98, 'Jim Murray');

--DISSENSION

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Novijen, Heart of Progress', 'Dissension', 175, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
GU, T:  Put a +1/+1 counter on each creature that came into play this turn.',
'"The unnatural pressures of life in this city are best withstood by lifeforms that adapt with unnatural swiftness."—Momir Vig', NULL, NULL, NULL, 'Dissension', 'Uncommon', 175, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Novijen, Heart of Progress', 'Dissension', 175, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Novijen, Heart of Progress', 'Dissension', 175, 'Lightly Played', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Magewright''s Stone', 'Dissension', 162, 'Near Mint', 7.62);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact',
'1, T:  Untap target creature that has an activated ability with T in its cost.',
'The stones hark back to an age before civilization, when the living earth blessed all who trod its untamed wilds.', NULL, NULL, NULL, 'Dissension', 'Uncommon', 162, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Trial // Error', 'Dissension', 158, 'Foil Near Mint', 0.78);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Instant',
'Return all creatures blocking or blocked by target creature to their owner''s hand // Counter target multicolored spell.',
NULL, NULL, NULL, NULL, 'Dissension', 'Uncommon', 158, 'Ron Spears & Wayne Reynolds');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flash Foliage', 'Dissension', 85, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant',
'Put a 1/1 green Saproling creature token into play blocking target creature attacking you.
Draw a card.',
'"This undemanding vegetation takes root in a mote of dust but grows incredibly quickly."—Simic research notes', NULL, NULL, NULL, 'Dissension', 'Uncommon', 85, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flash Foliage', 'Dissension', 85, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flash Foliage', 'Dissension', 85, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flash Foliage', 'Dissension', 85, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flash Foliage', 'Dissension', 85, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Plaxcaster Frogling', 'Dissension', 123, 'Near Mint', 0.31);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GU', 3, 'Creature — Frog Mutant',
'Graft 3 (This creature comes into play with three +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)
2:  Target creature with a +1/+1 counter on it can''t be the target of spells or abilities this turn.',
NULL, 0, 0, NULL, 'Dissension', 'Uncommon', 123, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Basilisk', 'Dissension', 93, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4GG', 6, 'Creature — Basilisk Mutant',
'Graft 3 (This creature comes into play with three +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)
1G:  Until end of turn, target creature with a +1//+1 counter on it gains "Whenever this creature deals combat damage to a creature, destroy that creature at end of combat."',
NULL, 0, 0, NULL, 'Dissension', 'Uncommon', 93, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Basilisk', 'Dissension', 93, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Basilisk', 'Dissension', 93, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Basilisk', 'Dissension', 93, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Basilisk', 'Dissension', 93, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Guildmage', 'Dissension', 148, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G|UG|U', 2, 'Creature — Elf Wizard',
'(G|U can be paid with either G or U.)
1G:  Move a +1/+1 counter from target creature onto another target creature with the same controller.
1U:  Attach target Aura enchanting a permanent to another permanent with the same controller.',
NULL, 2, 2, NULL, 'Dissension', 'Uncommon', 148, 'Aleksi Briclot');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Guildmage', 'Dissension', 148, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Growth Chamber', 'Dissension', 180, 'Near Mint', 0.28);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'Simic Growth Chamber comes into play tapped.
When Simic Growth Chamber comes into play, return a land you control to its owner''s hand.
T:  Add GU to your mana pool.',
NULL, NULL, NULL, NULL, 'Dissension', 'Common', 180, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Growth Chamber', 'Dissension', 180, 'Near Mint', 0.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Growth Chamber', 'Dissension', 180, 'Near Mint', 0.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Growth Chamber', 'Dissension', 180, 'Near Mint', 0.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Growth Chamber', 'Dissension', 180, 'Near Mint', 0.28);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Helium Squirter', 'Dissension', 26, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4U', 5, 'Creature — Beast Mutant',
'Graft 3 (This creature comes ito play with three +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.',
NULL, 0, 0, NULL, 'Dissension', 'Common', 26, 'Hideaki Takamura');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silkwing Scout', 'Dissension', 31, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Faerie Scout',
'Flying
G, Sacrifice Silkwing Scout:  Search your library for a basic land card and put that card into play tapped.  Then shuffle your library.',
NULL, 2, 1, NULL, 'Dissension', 'Common', 31, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silkwing Scout', 'Dissension', 31, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Silkwing Scout', 'Dissension', 31, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cackling Flames', 'Dissension', 59, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Instant',
'Cackling Flames deals 3 damage to target creature or player.
Hellbent — Cackling Flames deals 5 damage to that creature or player instead if you have no cards in hand.',
'"I like a little entertainment with my dinner."—Rakdos', NULL, NULL, NULL, 'Dissension', 'Common', 59, 'Shishizaru');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aquastrand Spider', 'Dissension', 80, 'Lightly Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Spider Mutant',
'Graft 2 (This creature comes into play with two +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)
G:  Target creature with a +1/+1 counter on it can block as though it had flying this turn.',
NULL, NULL, NULL, NULL, 'Dissension', 'Common', 80, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aquastrand Spider', 'Dissension', 80, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Assault Zeppelid', 'Dissension', 103, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GU', 4, 'Creature — Beast',
'Flying, trample',
'"Show them to Razia and then to the Azorius sky marshals.  We could create a fine bidding war"—enough to fund the final stages of Project Kraj."—Momir Vig', 3, 3, NULL, 'Dissension', 'Common', 103, 'Jeremy Jarvis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coiling Oracle', 'Dissension', 107, 'Near Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('GU', 2, 'Creature — Snake Elf Druid',
'When Coiling Oracle comes into play, reveal the top card of your library.  If it''s a land card, put it into play.  Otherwise, put that card into your hand.',
'Snaking remnants of nature directed by a body of thought and progress, the oracles embody all that is Simic.', 1, 1, NULL, 'Dissension', 'Common', 107, 'Mark Zug');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coiling Oracle', 'Dissension', 107, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coiling Oracle', 'Dissension', 107, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coiling Oracle', 'Dissension', 107, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shielding Plax', 'Dissension', 147, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G|U', 3, 'Enchantment — Aura',
'(G|U can be paid with either G or U.)
Enchant creature
When Shielding Plax comes into play, draw a card.
Enchanted creature can''t be the target of spells or abilities your opponents control.',
NULL, NULL, NULL, NULL, 'Dissension', 'Common', 147, 'Brian Hagan');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shielding Plax', 'Dissension', 147, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shielding Plax', 'Dissension', 147, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Initiate', 'Dissension', 92, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Human Mutant',
'Graft 1 (This creature comes into play with a +1/+1 counter on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)',
'Simic initiates begin their training as experimental subjects.  Failures are flushed to the undersewers.', 0, 0, NULL, 'Dissension', 'Common', 92, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Initiate', 'Dissension', 92, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Simic Initiate', 'Dissension', 92, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporeback Troll', 'Dissension', 94, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Troll Mutant',
'Graft 2 (This creature comes into play with two +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)
1G:  Regenerate target creature with a +1/+1 counter on it.',
NULL, 0, 0, NULL, 'Dissension', 'Common', 94, 'Dan Scott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporeback Troll', 'Dissension', 94, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporeback Troll', 'Dissension', 94, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GU', 3, 'Creature — Plant Mutant',
'Graft 5 (This creature comes into play with five +1/+1 counters on it.  Whenever another creature comes into play, you may move a +1/+1 counter from this creature onto it.)
Vigean Hydropon can''t attack or block.',
NULL, 0, 0, NULL, 'Dissension', 'Common', 135, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Lightly Played', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vigean Hydropon', 'Dissension', 135, 'Near Mint', 0.11);


--COLDSNAP

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coldsteel Heart', 'Coldsnap', 136, 'Near Mint', 3.02);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Snow Artifact',
'Coldsteel Heart comes into play tapped.
As Coldsteel heart comes into play, choose a color.
T:  Add one mana of the chosen color to your mana pool.',
'The Phyrexian death machine awoke, its coldsteel heart imbuing it with sinister new power.', NULL, NULL, NULL, 'Coldsnap', 'Uncommon', 136, 'Mark Romanoski');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Glacial Plating', 'Coldsnap', 7, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Snow Enchantment — Aura',
'Enchant creature
Cumulative upkeep S (At the beginning of your upkeep, put an age counter on this permanent, then sacrifice it unless you pay its upkeep cost for each age counter on it. S can be paid with one mana from a snow permanent
Enchanted creature gets +3/+3 for each age counter on Glacial Plating',
NULL , NULL, NULL, NULL, 'Coldsnap', 'Unommon', 7, 'Brian Despain');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Luminesce', 'Coldsnap', 14, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant',
'Prevent all damage that black and/or red sources would deal this turn.',
'"The White Shield is not the burnished metal you lash to your forearm but the conviction that burns in your chest."—Lucilde Fiksdotter, leader of the Order of the White Shield' , NULL, NULL, NULL, 'Coldsnap', 'Uncommon', 14, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Luminesce', 'Coldsnap', 14, 'Near Mint', 0.10);


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Balduvian Frostwaker', 'Coldsnap', 28, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Human Wizard',
'U, T:  Target snow land becomes a 2/2 blue Elemental creature with flying.  It''s still a land.',
'"Whether frozen or fertile, the land is our ally.  It awaits the call to battle."', 1, 1, NULL, 'Coldsnap', 'Uncommon', 28, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rimewind Cryomancer', 'Coldsnap', 43, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Human Wizard',
'1, T:  Counter target activated ability.
Play this ability only if you control four or more snow permanents.
(Mana abilities can''t be targeted.)',
'"The Thaw brings flooding, disease, and death.  We will do all in our power to bring frigid peace back to the world."', 2, 3, NULL, 'Coldsnap', 'Uncommon', 43, 'Dan Scott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krovikan Mist', 'Coldsnap', 38, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Illusion',
'Flying
Krovikan Mist''s power and toughness are each equal to the number of Illusions in play.',
'"Plague-induced dreams became real as they swirled above Krov, mingling with the magical residue of the World Spell"', 0, 0, NULL, 'Coldsnap', 'Common', 38, 'Jeremy Jarvis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krovikan Mist', 'Coldsnap', 38, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krovikan Mist', 'Coldsnap', 38, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krovikan Mist', 'Coldsnap', 38, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rimewind Taskmage', 'Coldsnap', 44, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Human Wizard',
'1, T:  Tap or untap target permanent.  Play this ability only if you control four or more snow permanents.',
'"Find solace in the sun?  Burning, blinding, laying secrets bare?  No, solace is found under the blanket of cold."', 1, 2, NULL, 'Coldsnap', 'Common', 44, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rune Snag', 'Coldsnap', 46, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Instant',
'Counter target spell unless its controller pays 2 plus an additional 2 for each card named Rune Snag in each graveyard.',
'"Concentration is key.  Without it, a mage conjures nothing for a splitting headache."—Zur the Enchanter', NULL, NULL, NULL, 'Coldsnap', 'Common', 46, 'Dave Dorman');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rune Snag', 'Coldsnap', 46, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rune Snag', 'Coldsnap', 46, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rune Snag', 'Coldsnap', 46, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Chill to the Bone', 'Coldsnap', 52, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Instant',
'Destroy target nonsnow creature.',
'"Thick hides and layered armor won''t help when I freeze you from the inside out."—Heidar, Rimewind master', NULL, NULL, NULL, 'Coldsnap', 'Common', 52, 'Jim Murray');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Chill to the Bone', 'Coldsnap', 52, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Grim Harvest', 'Coldsnap', 58, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Instant',
'Return target creature card from your graveyard to your hand.
Recover 2B (When a creature is put into your graveyard from play, you may pay 2B.  If you do, return this card from your graveyard to your hand.  Otherwise, remove this card from the game.)',
NULL, NULL, NULL, NULL, 'Coldsnap', 'Common', 58, 'Zoltan Boros & Gabor Szikszai');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Boreal Druid', 'Coldsnap', 105, 'Near Mint', 2.62);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Snow Creature — Elf Druid',
'T:  Add 1 to your mana pool.',
'Some creatures are bound to the cold by Rimewind magic.  Others seek it out, adapted by two thousand years of the Ice.  The Boreal, where Heidar''s frigid sway is strongest, its home to bath.', 1, 1, NULL, 'Coldsnap', 'Common', 105, 'Dan Dos Santos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Boreal Druid', 'Coldsnap', 105, 'Near Mint', 2.62);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Martyr of Spores', 'Coldsnap', 113, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Human Shaman',
'1, Reveal X green cards from  your hand, Sacrifice Martyr of Spores:  Target creature gets +X/+X until end of turn.',
'"Weep not for me.  I will rise with the spring''s new growth."', 1, 1, NULL, 'Coldsnap', 'Common', 113, 'Dan Scott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Surging Might', 'Coldsnap', 125, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Enchantment — Aura',
'Enchant creature
Enchanted creature gets +2/+2.
Ripple 4 (When you play this spell, you may reveal the top four cards of your library.  You may play any revealed cards with the same name as this spell without paying their mana costs.  Put the rest on the bottom of your library.)',
NULL, NULL, NULL, NULL, 'Coldsnap', 'Common', 125, 'Luca Zontini');


--STARTER 1999

--UPDATE card
--SET title = 'Lone Wolf', extension = 'Starter 1999', collector_number = 130, shape = 'Moderately Played', worth = 0.22
--WHERE item_id = 533;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lone Wolf', 'Starter 1999', 130, 'Moderately Played', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Wolf',
'You may have Lone Wolf deal its combat damage to defending player as though it weren''t blocked.',
NULL, NULL, NULL, NULL, 'Starter 1999', 'Common', 130, 'Una Fricker');

--UPDATE card
--SET title = 'Norwood Archers', extension = 'Starter 1999', collector_number = 137, shape = 'Moderately Played', worth = 0.26
--WHERE item_id = 534;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Norwood Archers', 'Starter 1999', 137, 'Damaged', 0.26);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Elf',
'Norwood Archers can block as though it had flying.',
'"''Air superiority?'' Not while our archers scan the skies.""', 3, 3, NULL, 'Starter 1999', 'Common', 137, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ingenious Thief', 'Starter 1999', 40, 'Moderately Played', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Thief',
'Flying
When Ingenious Thief comes into play, look at target player''s hand.',
NULL, 1, 1, NULL, 'Starter 1999', 'Common', 40, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Breath of Life', 'Starter 1999', 10, 'Lightly Played', 0.30);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Thief',
'Flying
When Ingenious Thief comes into play, look at target player''s hand.',
NULL, 1, 1, NULL, 'Starter 1999', 'Uncommon', 10, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Extinguish', 'Starter 1999', 37, 'Lightly Played', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Instant',
'Counter target sorcery spell.',
NULL, NULL, NULL, NULL, 'Starter 1999', 'Common', 37, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Muck Rats', 'Starter 1999', 84, 'Lightly Played', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Creature — Rat',
'"Just as some fool said it couldn''t get worse, the rats began to show up."—Foot soldier', NULL, 1, 1, NULL, 'Starter 1999', 'Common', 84, 'Una Fricker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stone Rain', 'Starter 1999', 118, 'Moderately Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Sorcery',
'Destroy target land.',
NULL, NULL, NULL, NULL, 'Starter 1999', 'Common', 118, 'John Matson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wild Griffin', 'Starter 1999', 31, 'Damaged', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Griffin',
'Flying',
'Two little goblins, out in the sun.  Down came a griffin, and then there was one.', 2, 2, NULL, 'Starter 1999', 'Common', 31, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bog Raiders', 'Starter 1999', 66, 'Lightly Played', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Zombie',
'Swampwalk (This creature is unblockable as long as defending player has a swamp in play.)',
'Those who live amid decay must expect scavengers.', 2, 2, NULL, 'Starter 1999', 'Common', 66, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sleight of Hand', 'Starter 1999', 51, 'Lightly Played', 1.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Sorcery',
'Look at the top two cards of your library.  Put one of them into your hand andn the other one on the bottom of your library.',
NULL, NULL, NULL, NULL, 'Starter 1999', 'Common', 51, 'Phil Foglio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sacred Nectar', 'Starter 1999', 26, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Sorcery',
'You gain 4 life.',
'"For he on honey-dew hath fed, And drunk the milk of Paradise."—Samuel Taylor Coleridge, "Kubla Khan"', NULL, NULL, NULL, 'Starter 1999', 'Common', 26, 'Janine Johnston');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Veteran Cavalier', 'Starter 1999', 30, 'Moderately Played', 0.60);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('WW', 2, 'Creature — Knight',
'Attacking doesn''t cause Veteran Cavalier to tap.',
'Spirit is the sword and experience the sharpening stone.—Arabian proverb', 2, 2, NULL, 'Starter 1999', 'Uncommon', 30, 'rk post');

--PORTAL SECOND AGE

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Righteous Charge', 'Portal Second Age', 20, 'Lightly Played', 0.26);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WW', 3, 'Sorcery',
'All your creatures get +2/+2 until the end of the turn.',
'"Bravery shines brightest in a pure soul."—Restela, Alaborn marshal', NULL, NULL, NULL, 'Portal Second Age', 'Common', 20, 'Jeffrey R. Busch');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Angel of Fury', 'Portal Second Age', 7, 'Moderately Played', 2.47);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4WW', 6, 'Creature — Angel',
'Flying
If Angel of Fury is put into your graveyard from play, you may choose to shuffle Angel of Fury into your library.',
NULL, 3, 5, NULL, 'Portal Second Age', 'Rare', 7, 'Keith Parkinson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Merchant', 'Portal Second Age', 50, 'Moderately Played', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Merchant', NULL,
'The trader let loose a laugh that made all around him check their purses.', 1, 3, NULL, 'Portal Second Age', 'Common', 50, 'Lubov');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Air Elemental', 'Portal Second Age', 31, 'Damaged', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3UU', 5, 'Creature — Elemental', NULL,
'As insubstantial, and as powerful, as the wind that carries it.', 4, 4, NULL, 'Portal Second Age', 'Uncommon', 31, 'Doug Chaffee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Touch of Brilliance', 'Portal Second Age', 58, 'Lightly Played', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Sorcery',
'Draw two cards.',
'"I don''t want what I don''t have.  I want more of what I do have."', NULL, NULL, NULL, 'Portal Second Age', 'Common', 58, 'Kaja Foglio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Researcher', 'Portal Second Age', 51, 'Lightly Played', 3.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4U', 5, 'Creature — Wizard',
'On your turn, before you attack, you may tap Talas Researcher to draw a card.',
'From time, knowledge.  From knowledge, power.', 1, 1, NULL, 'Portal Second Age', 'Rare', 51, 'Kaja Foglio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('False Summoning', 'Portal Second Age', 40, 'Lightly Played', 0.34);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Sorcery',
'Play False Summoning only in response to another player playing a creature.  That creature card has no effect, and that player puts it into his or her graveyard.',
NULL, NULL, NULL, NULL, 'Portal Second Age', 'Common', 40, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Air Ship', 'Portal Second Age', 48, 'Damaged', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Ship',
'Flying',
'"Their ships pollute our air as they themselves pollute our forest."—Arathel, elvish queen', 3, 2, NULL, 'Portal Second Age', 'Common', 48, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mystic Denial', 'Portal Second Age', 41, 'Damaged', 0.30);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Sorcery',
'Play Mystic Denial only in response to another player playing a creature or a sorcery.  That card has no effect, and that player puts it into his or her graveyard.',
NULL, NULL, NULL, NULL, 'Portal Second Age', 'Uncommon', 41, 'DiTerlizzi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Air Elemental', 'Portal Second Age', 31, 'Moderately Played', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Scout', 'Portal Second Age', 52, 'Lightly Played', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Pirate',
'Flying',
'"Scouting a battle before you fight it is just good business"—Jefan, Talas ship captain', 1, 2, NULL, 'Portal Second Age', 'Common', 52, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Apprentice Sorcerer', 'Portal Second Age', 32, 'Lightly Played', 0.47);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Wizard',
'On your turn, before you attack, you may tap Apprentice Sorcerer to have it deal 1 damage to any one creature or player.',
NULL, 1, 1, NULL, 'Portal Second Age', 'Common', 32, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Exhaustion', 'Portal Second Age', 37, 'Lightly Played', 0.79);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Sorcery',
'At the beginning of your opponent''s next turn, he or she skips untapping creatures and lands.',
NULL, NULL, NULL, NULL, 'Portal Second Age', 'Rare', 37, 'Kaja Foglio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mystic Denial', 'Portal Second Age', 41, 'Moderately Played', 0.30);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Merchant', 'Portal Second Age', 50, 'Lightly Played', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Explorer', 'Portal Second Age', 49, 'Lightly Played', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Merchant',
'Flying
When Talas Explorer comes into play from your hand, look at your opponent''s hand.',
NULL, 1, 1, NULL, 'Portal Second Age', 'Common', 49, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Air Ship', 'Portal Second Age', 48, 'Moderately Played', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Touch of Brilliance', 'Portal Second Age', 58, 'Lightly Played', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Time Ebb', 'Portal Second Age', 57, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Sorcery',
'Return any one creature from play to the top of its owner''s library.',
'"The ogre had come from out of the blue, so that''s where I sent it back"—Talas wizard', NULL, NULL, NULL, 'Portal Second Age', 'Common', 57, 'Sam Wood');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Explorer', 'Portal Second Age', 49, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Apprentice Sorcerer', 'Portal Second Age', 32, 'Lightly Played', 0.47);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Warrior', 'Portal Second Age', 53, 'Lightly Played', 9.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Creature — Pirate',
'Talas Warrior can''t be blocked.',
'The sea is in their blood, Literally.', NULL, NULL, NULL, 'Portal Second Age', 'Rare', 53, 'Douglas Shuler');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Talas Scout', 'Portal Second Age', 52, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('False Summoning', 'Portal Second Age', 40, 'Lightly Played', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Time Ebb', 'Portal Second Age', 57, 'Lightly Played', 0.09);

--PORTAL

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lava Axe', 'Portal', 137, 'Heavily Played', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Sorcery',
'Lava Axe deals 5 damage to your opponent.',
'Swing your axe as a broom, to sweep away the foe.', NULL, NULL, NULL, 'Portal', 'Common', 137, 'Adrian Smith');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Volcanic Hammer', 'Portal', 154, 'Lightly Played', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Sorcery',
'Volcanic Hammer deals 3 damage to any one creature or player.',
'Cast the weight as though it were a die, to see a rival''s fate.', NULL, NULL, NULL, 'Portal', 'Common', 154, 'Christopher Rush');

--TIME SPIRAL

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Calciform Pools', 'Time Spiral', 270, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
1, T:  Put a storage counter on Calciform Pools.
1, Remove X storage counters from Calciform Pools:  Add X mana in any combination of W and/or U to your mana pool.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 270, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dreadship Reef', 'Time Spiral', 271, 'Lightly Played', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
1, T:  Put a storage counter on Dreadship Reef.
1, Remove X storage counters from Dreadship Reef:  Add X mana in any combination of W and/or U to your mana pool.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 271, 'Lars Grant-West');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Molten Slagheap', 'Time Spiral', 276, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T:  Add 1 to your mana pool.
1, T:  Put a storage counter on Molten Slagheap.
1, Remove X storage counters from Molten Slagheap:  Add X mana in any combination of W and/or U to your mana pool.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 276, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Molten Slagheap', 'Time Spiral', 276, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Locket of Yesterdays', 'Time Spiral', 258, 'Near Mint', 0.60);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact',
'Spells you play cost 1 less to play for each card with the same name as that spell in your graveyard.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 258, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thunder Totem', 'Time Spiral', 265, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact',
'T:  Add W to your mana pool.
1WW:  Thunder Totem becomes a 2/2 white Spirit artifact creature with flying and first strike until end of turn.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 265, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thunder Totem', 'Time Spiral', 265, 'Near Mint', 0.15);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact',
--'T:  Add W to your mana pool.
--1WW:  Thunder Totem becomes a 2/2 white Spirit artifact creature with flying and first strike until end of turn.',
--NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 265, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Weatherseed Totem', 'Time Spiral', 268, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact',
'T:  Add G to your mana pool.
2GGG:  Weatherseed Totem becomes a 5/3 green Treefolk artifact creature with trample until end of turn.
When Weatherseed Totem is put into a graveyard from play, if it was a creature, return this card to its owner''s hand.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 268, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Weatherseed Totem', 'Time Spiral', 268, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Knight of the Holy Nimbus', 'Time Spiral', 26, 'Foil Near Mint', 1.47);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('WW', 2, 'Creature — Human Rebel Knight',
'Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)
If Knight of the Holy Nimbus would be destroyed, regenerate it.
2:  Knight of the Holy Nimbus can''t be regenerated this turn.  Only any opponent may play this ability',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 26, 'Wayne England');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Knight of the Holy Nimbus', 'Time Spiral', 26, 'Near Mint', 0.13);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pull from Eternity', 'Time Spiral', 35, 'Near Mint', 1.86);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant',
'Put target face-up card that''s removed from the game into its owner''s graveyard.',
'It is best to conquer dragons before they hatch. —Femeref adage', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 35, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quilled Sliver', 'Time Spiral', 37, 'Foil Near Mint', 3.97);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Sliver',
'All Slivers have "T:  This creature deals 1 damage to target attackinng or blocking creature."',
'"They have long kept us under attack, but we do not lack for ammunition.  The very bodies of our foes arm us against them."—Adom Capashen, Benalish hero', 1, 1, NULL, 'Time Spiral', 'Uncommon', 37, 'John Matson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quilled Sliver', 'Time Spiral', 37, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quilled Sliver', 'Time Spiral', 37, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brine Elemental', 'Time Spiral', 50, 'Near Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4UU', 6, 'Creature — Elemental',
'Morph 5UU (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)
When Brine Elemental is turned face up, each opponent skips his or her next untap step.',
'Water calls to water, and the world is left exhausted and withered in its wake.', 5, 4, NULL, 'Time Spiral', 'Uncommon', 50, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Careful Consideration', 'Time Spiral', 52, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2UU', 4, 'Instant',
'Target player draws four cards, then discards three cards.  If you played this spell during your main phase, instead that player draws four cards, then discards two cards.',
'"Sages who take the time to verify their sources are rewarded for their diligence."—Jhoira, to Teferi', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 52, 'Janine Johnston');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fledgling Mawcor', 'Time Spiral', 63, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Beast',
'Flying
T:  Fledgling Mawcor deals 1 damage to target creature or player.
Morph UU (You may play this face down as a 2/2 creature for 3.  Turn it face up at any time for its morph cost.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 63, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fledgling Mawcor', 'Time Spiral', 63, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Riftwing Cloudskate', 'Time Spiral', 73, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3UU', 5, 'Creature — Illusion',
'Flying
When Riftwing Cloudskate comes into play, return target permanent to its owner''s hand.,
Suspend 3—1U (Rather than play this card from your hand, you may pay 1U and remove it from the game with three time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, 2, 2, NULL, 'Time Spiral', 'Uncommon', 73, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Riftwing Cloudskate', 'Time Spiral', 73, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Riftwing Cloudskate', 'Time Spiral', 73, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Telekinetic Sliver', 'Time Spiral', 84, 'Near Mint', 1.48);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2UU', 4, 'Creature — Sliver',
'All Slivers have "T:  Tap target permanent."',
'"Slivers are guided only by simple instinct.  Advance the hive, and you will be welcomed.  Impede the hive, and you will face unrelenting opposition."—Freyalise', 2, 2, NULL, 'Time Spiral', 'Uncommon', 84, 'Randy Elliott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wipe Away', 'Time Spiral', 94, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Instant',
'Split second (As long as this spell is on the stack, players can''t play spells or activated abilities that aren''t mana abilities.)',
'An eyeblink later, all that remained of the tree-beast was the breeze of its momentum', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 94, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dread Return', 'Time Spiral', 104, 'Near Mint', 0.60);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2BB', 4, 'Sorcery',
'Return target creature card from your graveyard to play.
Flashback—Sacrifice three creatures.  (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
'Those who forget the horrors of the past are doomed to re-meet them.', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 104, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dread Return', 'Time Spiral', 104, 'Near Mint', 0.60);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2BB', 4, 'Sorcery',
--'Return target creature card from your graveyard to play.
--Flashback—Sacrifice three creatures.  (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
--'Those who forget the horrors of the past are doomed to re-meet them.', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 104, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dread Return', 'Time Spiral', 104, 'Near Mint', 0.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Evil Eye of Urborg', 'Time Spiral', 107, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4B', 5, 'Creature — Eye',
'Non-Eye creatures you control can''t attack.
Whenever Evil Eye of Urborg becomes blocked by a creature, destroy that creature.',
'"Edahlis, what is that thing?  We should have stayed in Yavimaya...."—Aznaph, greenseeker', 6, 3, NULL, 'Time Spiral', 'Uncommon', 107, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nightshade Assassin', 'Time Spiral', 121, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2BB', 4, 'Creature — Human Assassin',
'First strike
When Nightshade Assassin comes into play, you may reveal X black cards in your hand.  If you do target creature gets -X/-X until end of turn.
Madness 1B (If you discard this card, you may play it for its madness cost instead of putting it into your graveyard.)',
NULL, 2, 1, NULL, 'Time Spiral', 'Uncommon', 121, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Vampiric Sliver', 'Time Spiral', 140, 'Near Mint', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Sliver',
'All Slivers have "Whenever a creature dealt damage by this creature this turn is put into a graveyard, put a +1/+1 counter on this creature."',
'"They draw upon the strength of their hive and their victims"', 3, 3, NULL, 'Time Spiral', 'Uncommon', 140, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Barbed Shocker', 'Time Spiral', 144, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Insect',
'Trample, haste
Whenever Barbed Shocker deals damage to a player, that player discards all the cards in his or her hand, then draws that many cards.',
'Fervid shamans willingly submit to shockers in hopes of glimpsing the fortunes of the future.', 2, 2, NULL, 'Time Spiral', 'Uncommon', 144, 'Tony Szczudlo');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Barbed Shocker', 'Time Spiral', 144, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Undying Rage', 'Time Spiral', 184, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Enchantment — Aura',
'Enchant creature
Enchanted creature gets +2/+2 and can''t block.
When Undying Rage is put into a graveyard from play, return Undying Rage to its owner''s hand.',
'Radha was born in Skyshroud, but her temper is undeniably Keldon.', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 184, 'Scott M. Fischer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aspect of Mongoose', 'Time Spiral', 191, 'Near Mint', 2.01);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Enchantment — Aura',
'Enchant creature
Enchanted creature can''t be the target of spells or abilities.
When Undying Rage is put into a graveyard from play, return Aspect of Mongoose to its owner''s hand.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 191, 'Dave Dorman');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Grip', 'Time Spiral', 202, 'Near Mint', 0.73);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Instant',
'Split second (As long as this spell is on the stack, players can''t play spells or activated abilities that aren''t mana abilities.)
Destroy target artifact or enchantment.',
'"Give up these unnatural weapons, these scrolls.  Heart and mind and fist are enough."—Zyd, Kamahlite druid', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 202, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Might of Old Krosa', 'Time Spiral', 204, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Instant',
'Target creature gets +2/+2 until end of turn.  If you played this spell during your main phase, that creature gets +4+4 until end of turn instead.',
'Sometimes even humble forest creatures were gifted with mighty emanations from the past.', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 204, 'Una Fricker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pendelhaven Elder', 'Time Spiral', 209, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Elf Shaman',
'T:  Each 1/1 creature you control gets +1/+2 until end of turn.',
'The elder who carries the ancestral mantle of Jacques le Vert is tasked with his ancient mission:  to protect the creatures of Pendelhaven', 1, 1, NULL, 'Time Spiral', 'Uncommon', 209, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yavimaya Dryad', 'Time Spiral', 235, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Creature — Dryad',
'Forestwalk
When Yavimaya Dryad comes into play, you may search your library for a Forest card and put it into play tapped under target player''s control.  If you do, shuffle your library.',
'The parched earth still shielded those few souls with the heart to call it home.', 2, 1, NULL, 'Time Spiral', 'Uncommon', 235, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yavimaya Dryad', 'Time Spiral', 235, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benalish Cavalry', 'Time Spiral', 4, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Human Knight',
'Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)',
'"My people swore to protect Banaliato the end.  It is battered, but yet stands, as do we."', 2, 2, NULL, 'Time Spiral', 'Common', 4, 'Parente');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benalish Cavalry', 'Time Spiral', 4, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Castle Raptors', 'Time Spiral', 5, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4W', 5, 'Creature — Bird Soldier',
'Flying
As long as Castle Raptors is untapped, it gets +0/+2',
'"Each place we see is as ruined and lifeless as the last.  So here we stay, because this ruin is ours."', 3, 3, NULL, 'Time Spiral', 'Common', 5, 'Christopher Moeller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Castle Raptors', 'Time Spiral', 5, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Castle Raptors', 'Time Spiral', 5, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Healer', 'Time Spiral', 11, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1WW', 3, 'Creature — Human Cleric Archer',
'T:  D''Avenant Healer deals 1 damage to target attacking or blocking creature.
T:  Prevent the next 1 damage that would be dealt to target creature or player this turn.',
'"One arrow keenly fired might prevent more battlefield wounds than I could treat."', 1, 1, NULL, 'Time Spiral', 'Common', 11, 'Michael Sutfin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Healer', 'Time Spiral', 11, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Divine Congregation', 'Time Spiral', 13, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Sorcery',
'You gain 2 life for each creature target player controls.
Suspend 5—1W (Rather than play this card from your hand, you may pay 1W and remove it from the game with fire time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 13, 'Jeremy Jarvis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Errant Doomsayers', 'Time Spiral', 15, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Human Rebel',
'T:  Tap target creature with toughness 2 or less.',
'"Heed my words, traveler.  Plagues, war, desolation...all mere hints of what is yet to come from Dominaria''s vault of horrors."', 1, 1, NULL, 'Time Spiral', 'Common', 15, 'Liz Danforth');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Icatian Crier', 'Time Spiral', 23, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Human Spellshaper',
'1W, T, Discard a card:  Put two 1/1 white Citizen creature tokens into play.', NULL, 1, 1, NULL, 'Time Spiral', 'Common', 23, 'Michael Phillipi');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ivory Giant', 'Time Spiral', 24, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5WW', 7, 'Creature — Giant',
'When Ivory Giant comes into play, tap all nonwhite creatures.
Suspend 5—W (Rather than play this card from your hand, you may pay W and remove it from the game with five time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, 1, 1, NULL, 'Time Spiral', 'Common', 24, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ivory Giant', 'Time Spiral', 24, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pentarch Ward', 'Time Spiral', 33, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchantment — Aura',
'Enchant creature
As Pentarch Ward comes into play, choose a color.
When Pentarch Ward comes into play, draw a card.
Enchanted creature has protection from the chosen color.  This effect doesn''t remove Pentarch Ward',
NULL, 1, 1, NULL, 'Time Spiral', 'Common', 33, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pentarch Ward', 'Time Spiral', 33, 'Near Mint', 0.25);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchantment — Aura',
--'Enchant creature
--As Pentarch Ward comes into play, choose a color.
--When Pentarch Ward comes into play, draw a card.
--Enchanted creature has protection from the chosen color.  This effect doesn''t remove Pentarch Ward',
--NULL, 1, 1, NULL, 'Time Spiral', 'Common', 33, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sidewinder Sliver', 'Time Spiral', 41, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Sliver',
'All Slivers have flanking.  (Whenever a creature without flanking blocks a Sliver, the blocking creature gets -1/-1 until end of turn.)',
'"They encircled our patrol with the stealth of snakes, coralling us like livestock."—Merrik Aidar, Benalish Patrol', 1, 1, NULL, 'Time Spiral', 'Common', 41, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sidewinder Sliver', 'Time Spiral', 41, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sidewinder Sliver', 'Time Spiral', 41, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Watcher Sliver', 'Time Spiral', 45, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Creature — Sliver',
'All Slivers get +0/+2',
'"I have spied them, wandering and watching—but for what?  I fear they watch for us."—Yonat of Amrou', 2, 2, NULL, 'Time Spiral', 'Common', 45, 'Liz Danforth');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Zealot il-Vec', 'Time Spiral', 47, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Human Rebel',
'Shadow (This creature can block or be blocked by only creatures with shadow.
Whenever Zealot il-Vec attacks and isn''t blocked, you may have it deal 1 damage to target creature.  If you do, prevent all combat damage Zealot il-Vec would deal this turn.',
NULL, 1, 1, NULL, 'Time Spiral', 'Common', 47, 'Chippy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Clockspinning', 'Time Spiral', 53, 'Near Mint', 0.64);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Instant',
'Buyback 3 (You may pay an additional 3 as you play this spell.  If you do, put this card into your hand as it resolves.)
Choose a counter on target permanent or suspended card.  Remove that counter from that permanent or card or put another of those counters on it.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 53, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coral Trickster', 'Time Spiral', 54, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Merfolk Rogue',
'Morph U (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)
When Coral Trickster is turned face up, you may tap or untap target permanent.',
NULL, 2, 1, NULL, 'Time Spiral', 'Common', 54, 'D. Alexander Gregory');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coral Trickster', 'Time Spiral', 54, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coral Trickster', 'Time Spiral', 54, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coral Trickster', 'Time Spiral', 54, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Crookclaw Transmuter', 'Time Spiral', 55, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Bird Wizard',
'Flash (You may play this spell any time you could play an instant.)
Flying
When Crookclaw Transmuter comes into play, switch target creature''s power and toughness until end of turn.',
NULL, 3, 1, NULL, 'Time Spiral', 'Common', 55, 'Ron Spencer');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Illusion',
'When Dream Stalker comes into play, return a permanent you control to its owner''s hand.',
'What happens when it is the dream that wakes and the sleeper that fades into memory?', 1, 5, NULL, 'Time Spiral', 'Common', 58, 'Brian Despain');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Drifter il-Dal', 'Time Spiral', 59, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Creature — Human Wizard',
'Shadow (This creature can block or be blocked by only creatures with shadow.)
At the beginning of your upkeep, sacrifice Drifter il-Dal unless you pay U.',
'They study the deeds of their traitorous ancestors, hoping the stories may reveal a way back to the physical world.', 2, 1, NULL, 'Time Spiral', 'Common', 59, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Errant Ephemeron', 'Time Spiral', 60, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6U', 7, 'Creature — Illusion',
'Flying
Suspend 4—1U (Rather than play this card from your hand, you may pay 1U and remove it from the game with four time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.',
NULL, 4, 4, NULL, 'Time Spiral', 'Common', 60, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Errant Ephemeron', 'Time Spiral', 60, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Eternity Snare', 'Time Spiral', 61, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5U', 6, 'Enchantment — Aura',
'Enchant creature
When Eternity Snare comes into play, draw a card.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 61, 'Drew Tucker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fathom Seer', 'Time Spiral', 62, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Illusion',
'Morph—Return two Islands you control to their owner''s hand.  (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)
When Fathom Seer is turned face up, draw two cards.',
NULL, 1, 3, NULL, 'Time Spiral', 'Common', 62, 'Ralph Horsley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fathom Seer', 'Time Spiral', 62, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fathom Seer', 'Time Spiral', 62, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Looter Il-Kor', 'Time Spiral', 66, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Kor Rogue',
'Shadow (This creature can block or be blocked by only creatures with shadow.)
Whenever Looter Il-Kor deals damage to an opponent, draw a card, then discard a card.',
'Unable to touch items of value, he goes forth to steal secrets instead.', 1, 1, NULL, 'Time Spiral', 'Common', 66, 'Mike Dringenberg');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Looter Il-Kor', 'Time Spiral', 66, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mystical Teachings', 'Time Spiral', 69, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Instant',
'Search your library for an instant card or a card with flash, reveal it, and put it into your hand.  Then shuffle your library
Flashback 5B (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 69, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ophidian Eye', 'Time Spiral', 70, 'Near Mint', 1.01);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Enchantment — Aura',
'Flash (You may play this spell any time you could play an instant.)
Enchant creature
Whenever enchanted creature deals damage to an opponent, you may draw a card.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 70, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sage of Epityr', 'Time Spiral', 74, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Creature — Human Wizard',
'When Sage of Epityr comes into play, look at the top four cards of your library, then put them back in any order.',
'Clairvoyants across Dominaria were driven mad by the overload from the widening time rifts, while other random folk gained the gift of future sight.', 1, 1, NULL, 'Time Spiral', 'Common', 74, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sage of Epityr', 'Time Spiral', 74, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Screeching Sliver', 'Time Spiral', 75, 'Near Mint',  0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Creature — Sliver',
'All Slivers have "T:  Target player puts the top card of his or her library into his or her graveyard."',
'"What wears down my people most, I think, is not the danger, but the endless screeching outside our camp."—Merrik Aidar, Benalish patrol', 1, 1, NULL, 'Time Spiral', 'Common', 75, 'Stuart Griffin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shadow Sliver', 'Time Spiral', 76, 'Near Mint', 0.32);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Sliver',
'All Slivers have shadow.  (They can block or be blocked by only creatures with shadow.)',
'These slivers, trapped between worlds since the Rathi overlay, are among the last to claim direct lineage from the lost Sliver Queen.', 1, 1, NULL, 'Time Spiral', 'Common', 76, 'Warren Mahy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Slilpstream Serpent', 'Time Spiral', 77, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('7U', 8, 'Creature — Serpent',
'Slipstream Serpent can''t attack unless defending player controls an Island.
When you control no Islands, sacrifice Slipstream Serpent.
Morph 5U (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)',
NULL, 6, 6, NULL, 'Time Spiral', 'Common', 77, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Slilpstream Serpent', 'Time Spiral', 77, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Snapback', 'Time Spiral', 78, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Instant',
'You may remove a blue card in your hand from the game rather than pay Snapback''s mana cost.
Return target creature to its owner''s hand.',
'"If it returns years hence, our knowledge of how to combat it will be that much greater."—Andorel, Tolarian Sentinel', NULL, NULL, NULL, 'Time Spiral', 'Common', 78, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tolarian Sentinel', 'Time Spiral', 87, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Creature — Human Spellshaper',
'Flying
U, T:  Discard a card:  Return target permanent you control to its owner''s hand.',
'"It is not just our people I try to rescue.  It is our culture, and our hope that we can return to greatness."', 1, 3, NULL, 'Time Spiral', 'Common', 87, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tolarian Sentinel', 'Time Spiral', 87, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscerid Deepwalker', 'Time Spiral', 91, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4U', 5, 'Creature — Homarid Warrior',
'U:  Viscerid Deepwalker gets +1/+0 until end of turn.
Suspend 4—U (Rather than play this card from your hand, you may pay U and remove it from the game with four time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.',
NULL, 2, 3, NULL, 'Time Spiral', 'Common', 91, 'Heather Hudson');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscerid Deepwalker', 'Time Spiral', 91, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Assassinate', 'Time Spiral', 95, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Sorcery',
'Destroy target tapped creature.',
'The rulers of old Dominaria kept assassins on retainer.  However, the true loyalty of these master killers was always to their peers.  This elite brotherhood survived the fall of the old royal order.', NULL, NULL, NULL, 'Time Spiral', 'Common', 95, 'Kev Walker');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Basal Sliver', 'Time Spiral', 96, 'Near Mint', 0.36);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Sliver',
'All Slivers have "Sacrifice this creature:  Add BB to your mana pool."',
'Fascinating...These creatures display the paradox of tenacity and purposed self-destruction I have sought to breed into my thrulls."—Endrek Sahr, master breeder', 2, 2, NULL, 'Time Spiral', 'Common', 96, 'Drew Tucker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Corpulent Corpse', 'Time Spiral', 98, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5B', 6, 'Creature — Zombie',
'Fear
Suspend 5—B (Rather than play this card from your hand, you may pay B and remove it from the game with five time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, 3, 3, NULL, 'Time Spiral', 'Common', 98, 'Doug Chaffee');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cyclopean Giant', 'Time Spiral', 100, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2BB', 4, 'Creature — Zombie Giant',
'When Cyclopean Giant is put into a graveyard from play, target land becomes a Swamp.  Remove Cyclopean Giant from the game.',
'A tomb-eye may remain shut for centuries.  It opens when it sees a world as twisted and hollow as the wretch beneath its lid.', 4, 2, NULL, 'Time Spiral', 'Common', 100, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dark Withering', 'Time Spiral', 101, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4BB', 6, 'Instant',
'Destroy target nonblack creature.
Madness B (If you discard this card, you may play it for its madness cost instead of putting it into your graveyard.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 101, 'Wayne Reynolds');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dark Withering', 'Time Spiral', 101, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Creature — Zombie Fungus',
'At the beginning of your upkeep, ut a spore counter on Deathspore Thallid.
Remove three spore counters from Deathspore Thallid:  Put a 1/1 green Saproling creature token into play.
Sacrifice a Saproling:  Target creature gets -1/-1 until end of turn.',
NULL, 1, 1, NULL, 'Time Spiral', 'Common', 102, 'Randy Elliott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Feebleness', 'Time Spiral', 110, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Enchantment — Aura',
'Flash (You may play this spell any time you could play an instant.)
Enchant creature
Enchanted creature gets -2/-1.
Enchanted creature gets -2/-1.',
'Just a small touch of magic can harness the debilitating power of Urborg''s poisonous touch.', NULL, NULL, NULL, 'Time Spiral', 'Common', 110, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Feebleness', 'Time Spiral', 110, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mindlash Sliver', 'Time Spiral', 118, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Creature — Sliver',
'All Slivers have "1, Sacrifice this creature:  Each player discards a card."',
'Though Dominaria''s queenless slivers lack a single purpose, in some the instinct for self-sacrifice remains extremely strong.', 1, 1, NULL, 'Time Spiral', 'Common', 118, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mindstab', 'Time Spiral', 119, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5B', 6, 'Sorcery',
'Target player discards three cards.
Suspend 4—B (Rather than play this card from your hand, you may pay B and remove it from the game with four time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 119, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pit Keeper', 'Time Spiral', 123, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Creature — Human Wizard',
'When Pit Keeper comes into play, if you have four or more creature cards in your graveyard, you may return target creature card from your graveyard to your hand.',
'"The undead are not ''awakened.''They are evicted when there is no room left in the pit for more bodies."', 2, 1, NULL, 'Time Spiral', 'Common', 123, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skulking Knight', 'Time Spiral', 130, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Zombie Knight',
'Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)
When Skulking Knight becomes the target of a spell or ability, sacrifice it.',
NULL, 3, 3, NULL, 'Time Spiral', 'Common', 130, 'rk post');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skulking Knight', 'Time Spiral', 130, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tendrils of Corruption', 'Time Spiral', 136, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Instant',
'Tendrils of Corruption deals X damage to target creature and you gain X life, where X is the number of Swamps you control.',
'"Even swamps need sustenance.  We will give it to them, and in turn, they will sustain us."', NULL, NULL, NULL, 'Time Spiral', 'Common', 136, 'Mike Dringenberg');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Traitor''s Clutch', 'Time Spiral', 137, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4B', 5, 'Instant',
'Target creature gets +1/+0, becomes black, and gains shadow until end of turn.  (It can block or be blocked by only creatures with shadow.
Flashback 1B (You may play this card from your graveyard for its flashback cost. Then remove it ffrom the game.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 137, 'Dave Allsop');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Traitor''s Clutch', 'Time Spiral', 137, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Trespasser il-Vec', 'Time Spiral', 138, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Human Rogue',
'Discard a card:  Trespasser il-Vec gains shadow until end of turn.  (It can block or be blocked by only creatures with shadow.)',
'At the epicenter of the Rathi overlay, the City of Traitors did not align with Dominaria.  Many of its inhabitants were caught between the two worlds.', 3, 1, NULL, 'Time Spiral', 'Common', 138, 'Jim Murray');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Trespasser il-Vec', 'Time Spiral', 138, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Urborg Syphon-Mage', 'Time Spiral', 139, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Human Spellshaper',
'2B, T, Disscard a card:  Each other player loses 2 life.  You gain life equal to the life lost this way.',
'"I have become a gourmet of sorts.  Each soul has its own distinctive flavor.  The art is in inviting the right company to the feast."', 2, 2, NULL, 'Time Spiral', 'Common', 139, 'Greg Staples');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscid Lemures', 'Time Spiral', 141, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4B', 5, 'Creature — Spirit',
'0:  Viscid Lemures gets -1/-0 and gains swampwalk until end of turn.',
'"Lemurs?  Is that all?  Finally, something harmless..."—Norin the Wary', 4, 3, NULL, 'Time Spiral', 'Common', 141, 'Drew Tucker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscid Lemures', 'Time Spiral', 141, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscid Lemures', 'Time Spiral', 141, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aetherflame Wall', 'Time Spiral', 142, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Creature — Wall',
'Defender
Aetherflame Wall can block creatures with shadow as though they didn''t have shadow.
R:  Aetherflame Wall gets +1/+0 until end of turn.',
NULL, 0, 4, NULL, 'Time Spiral', 'Common', 142, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aetherflame Wall', 'Time Spiral', 142, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blazing Blade Askari', 'Time Spiral', 146, 'Foil Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Human Knight',
'Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)
2:  Blazing Blade Askari becomes colorless until end of turn.',
'"This can''t be Jamuraa.  We could not have failed her this badly...."', 2, 2, NULL, 'Time Spiral', 'Common', 146, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blazing Blade Askari', 'Time Spiral', 146, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Blazing Blade Askari', 'Time Spiral', 146, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bogardan Rager', 'Time Spiral', 148, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5R', 6, 'Creature — Elemental',
'Flash (You may play this spell any time you could play an instant.
When Bogardan Rager comes into play, target creature gets +4/+0 until end of turn.',
'In the erupting heart of Bogardan, it''s hard to tell hurtling volcanic rocks from pouncing volcanic beasts.', 3, 4, NULL, 'Time Spiral', 'Common', 148, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bogardan Rager', 'Time Spiral', 148, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bonesplitter Sliver', 'Time Spiral', 149, 'Lightly Played', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Sliver',
'All Slivers get +2/+0.',
'As the time streams grew more and more unstable, Dominaria''s creatures struggled to adapt.  The intense pressures led to many dead ends but also to lethal new forms that appeared as suddenly as the ashen rains.', 2, 2, NULL, 'Time Spiral', 'Common', 149, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flowstone Channeler', 'Time Spiral', 155, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Human Spellshaper',
'1R, T, Discard a card:  Target creature gets +1/-1 and gains haste until end of turn.',
'With the evincars gone, flowstone became erratic and wild, a source of power for mages more desperate than wise', 2, 2, NULL, 'Time Spiral', 'Common', 155, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flowstone Channeler', 'Time Spiral', 155, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Flowstone Channeler', 'Time Spiral', 155, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghitu Firebreathing', 'Time Spiral', 158, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Enchantment — Aura',
'Flash (You may play this spell any time you could play an instant.
Enchant creature
R:  Enchanted creature gets +1/+0 until end of turn.
R:  Return Ghitu Firebreathing to its owner''s hand.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 158, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Goblin Skycutter', 'Time Spiral', 159, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Creature — Goblin Warrior',
'Sacrifice Goblin Skycutter:  Goblin Skycutter deals 2 damage to target creature with flying.  That creature loses flying until end of turn.',
'He takes out his fear of heights on anything above his head.', 2, 1, NULL, 'Time Spiral', 'Common', 159, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Grapeshot', 'Time Spiral', 160, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Sorcery',
'Grapeshot deals 1 damage to target creature or player.
Storm (When you play this spell, copy it for each spell played before it this turn.  You may choose new targets for the copies.',
'Mages often seek to emulate the powerful relics lost to time and apocalypse.', NULL, NULL, NULL, 'Time Spiral', 'Common', 160, 'Pete Venters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Grapeshot', 'Time Spiral', 160, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ironclaw Buzzardiers', 'Time Spiral', 165, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Orc Scout',
'Ironclaw Buzzardiers can''t block creatures with power 2 or greater.
R:  Ironclaw Buzzardiers gains flying until end of turn.',
'They warn the army of danger as they squawk past in swift retreat.', 2, 2, NULL, 'Time Spiral', 'Common', 165, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Keldon Halberdier', 'Time Spiral', 167, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4R', 5, 'Creature — Human Warrior',
'First strike
Suspend 4—R (Rather than play this card from your hand, you may pay R and remove it from the game with four time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost. It has haste)',
NULL, 4, 1, NULL, 'Time Spiral', 'Common', 167, 'Parente');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lightning Axe', 'Time Spiral', 168, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Instant',
'As an additional cost to play Lightning Axe, discard a card or pay 5.
Lightning Axe deals 5 damage to target creature.',
'"A gargoyle''s meat can be carved with an ordinary cleaver, but for its petrous hide..."—Asmoranomardicadaistiaculdacar, The Underworld Cookbook', NULL, NULL, NULL, 'Time Spiral', 'Common', 168, 'Dan Scott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Two-Headed Sliver', 'Time Spiral', 183, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Creature — Sliver',
'All Slivers have "This creature can''t be blocked except by two or more creatures"',
'"That which would be a fatal mutation in any other species is merely a source of new powers.  I am intrigued, yet too fearful to examine it more closely."—Rukarumel, field journal', 1, 1, NULL, 'Time Spiral', 'Common', 183, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Bladescout', 'Time Spiral', 185, 'Near Mint', 0.03);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RR', 3, 'Creature — Viashino Scout',
'Flash (You may play this spell any time you could play an instant.
When Viashino Bladescout comes into play, target creature gains first strike until end of turn.',
'"Find your courage in a desperate moment, and you turn the tide of history.  So sayeth the bey."', 2, 1, NULL, 'Time Spiral', 'Common', 185, 'Dany Orizio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Bladescout', 'Time Spiral', 185, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Bladescout', 'Time Spiral', 185, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aether Web', 'Time Spiral', 189, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Enchantment — Aura',
'Flash (You may play this spell any time you could play an instant.
Enchant creature
Enchanted creature gets +1/+1, can block as though it had flying, and can block creatures with shadow as though they didn''t have shadow.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 189, 'Justin Sweet');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Durkwood Baloth', 'Time Spiral', 193, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4GG', 6, 'Creature — Beast',
'Suspend 5—G (Rather than play this card from your hand, you may pay G and remove it from the game with five time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, 5, 5, NULL, 'Time Spiral', 'Common', 193, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Havenwood Wurm', 'Time Spiral', 199, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('6G', 7, 'Creature — Wurm',
'Flash (You may play this spell any time you could play an instant.)
Trample',
'Time rifts bring tunneling beasts of old into the hard, dry earth of the present.  Most die there, trapped, but the mightiest burst through the surface.', 5, 6, NULL, 'Time Spiral', 'Common', 199, 'Stuart Griffin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Herd Gnarr', 'Time Spiral', 200, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Beast',
'Whenever another creature comes into play under your control, Herd Gnarr gets +2/+2 until end of turn.',
'Long ago, the solitary gnarr was a sign of good luck.  Now they have become wild pack hunters, a sign of impending danger.', 2, 2, NULL, 'Time Spiral', 'Common', 200, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Molder', 'Time Spiral', 206, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('XG', 1, 'Instant',
'Destroy target artifact or enchantment with converted mana cost X.  It can''t be regenerated.  You gain X life.',
'"The forests have succumbed to ruin, but the spirit of Krosa remains alive and vital in these devouring spores."—Zyd, Kamahlite druid', NULL, NULL, NULL, 'Time Spiral', 'Common', 206, 'Greg Hildebrandt');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mwonvuli Acid-Moss', 'Time Spiral', 207, 'Near Mint', 0.95);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Sorcery',
'Destroy target land. Search your library for a Forest card and put that card into play tapped. Then shuffle your library.',
'"Life gives way to death, and death to new life.  Nature feeds upon her own decay."—Ezrith, druid of the Dark Hours', NULL, NULL, NULL, 'Time Spiral', 'Common', 207, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Shaman', 'Time Spiral', 208, 'Near Mint', 0.01);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Insect Shaman',
'When Nantuko Shaman comes into play, if you control no tapped lands, draw a card.
Suspend 1—2GG (Rather than play this card from your hand, you may pay 2GG and remove it from the game with a time counter on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 208, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nantuko Shaman', 'Time Spiral', 208, 'Near Mint', 0.01);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Penumbra Spider', 'Time Spiral', 210, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Creature — Insect Shaman',
'Penumbra Spider can block as though it had flying.
When Penumbra Spider is put into a graveyard from play, put a 2/4 black Spider creature token into play that can block as though it had flying.',
'When it snared a passing cockatrice, its own soul darkly doubled.', 2, 4, NULL, 'Time Spiral', 'Common', 210, 'Jeff Easley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Savage Thallid', 'Time Spiral', 213, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GG', 5, 'Creature — Fungus',
'At the beginning of your upkeep, put a spore counter on Savage Thallid.  Remove three spore counters from Savage Thallid:  Put a 1/1 green Saproling creature token into play.
Sacrifice a Saproling:  Regenerate target Fungus.',
NULL, 5, 2, NULL, 'Time Spiral', 'Common', 213, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Near Mint', 0.29);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Sorcery',
'Search your library for a basic land card and put it into play.  Then shuffle your library.
Suspend 2—G (Rather than play this card from your hand, you may pay 2GG and remove it from the game with a time counter on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.  It has haste.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 216, 'Randy Gallegos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Near Mint', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spinneret Sliver', 'Time Spiral', 219, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Sliver',
'All Slivers have "This creature can block as though it had flying."',
'Each new generation of slivers evolves to assimilate the strengths of the prey upon which their progenitors fed.', 2, 2, NULL, 'Time Spiral', 'Common', 219, 'Michael Sutfin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spinneret Sliver', 'Time Spiral', 219, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sprout', 'Time Spiral', 221, 'Near Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Instant',
'Put a 1/1 green Saproling creature token into play.',
'Centuries of temporal strife had stripped Dominaria of its natural defenses, but nature fought back with armies constructed of little more than grime and sunlight.', NULL, NULL, NULL, 'Time Spiral', 'Common', 221, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thrill of the Hunt', 'Time Spiral', 229, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Instant',
'Target creature gets +1/+2 until end of turn.
Flashback W (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 229, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thrill of the Hunt', 'Time Spiral', 229, 'Near Mint', 0.08);



INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Safe Haven', 'Timeshifted', 121, 'Near Mint', 0.40);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'2, T:  Remove target creature you control from the game.
At the beginning of your upkeep, you may sacrifice Safe Haven.  If you do, return each card removed from the game with Safe Haven to play under its owner''s control.',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 121, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Chronatog Totem', 'Time Spiral', 252, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact',
'T:  Add U to your mana pool.
1U:  Chronatog Totem becomes a 1/2 blue Atog artifact creature until end of turn.
0:  Chronatog Totem gets +3/+3 until end of turn.  You skip your next turn.  Play this ability only once each turn and only if Chronatog Totem is a creature.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 252, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Claws of Gix', 'Timeshifted', 107, 'Near Mint', 0.74);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('0', 0, 'Artifact',
'1, Sacrifice a permanent:  You gain 1 life.',
'When the Brotherhood of Gix dug out the cave of Koilos they found their master''s severed hand.  They enshrined their master''s severed hand.  They enshrined it, hoping that one day it would point the way to Phyrexia', NULL, NULL, NULL, 'Timeshifted', 'Special', 107, 'Henry G. Higgenbotham');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Clockwork Hydra', 'Time Spiral', 253, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('0', 0, 'Artifact Creature — Hydra',
'Clockwork Hydra comes into play with four +1/+1 counters on it.
Whenever Clockwork Hydra attacks or blocks, remove a +1/+1 counter from it. If you do, Clockwork Hydra deals 1 damage to target creature or player.
T:  Put a +1/+1 counter on Clockwork Hydra.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 253, 'Daren Bader');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Foriysian Totem', 'Time Spiral', 254, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3', 3, 'Artifact',
'T:  Add R to your mana pool.
4R:  Foriysian Totem becomes a 4/4 red Giant artifact creature with trample until end of turn.
As long as Foriysian Totem is a creature, it can block an additional creature.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 254, 'Anson Maddocks');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Foriysian Totem', 'Timeshifted', 109, 'Near Mint', 1.38);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact',
'T, Remove Feldon''s Cane from the game:  Shuffle your graveyard into your library.',
'Feldon found the first of these canes frozen in the Ronom Glacier.', NULL, NULL, NULL, 'Timeshifted', 'Special', 109, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Locket of Yesterdays', 'Time Spiral', 258, 'Near Mint', 0.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Locket of Yesterdays', 'Time Spiral', 258, 'Near Mint', 0.60);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Weatherseed Totem', 'Time Spiral', 268, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Weatherseed Totem', 'Time Spiral', 268, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cavalry Master', 'Time Spiral', 6, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Human Knight',
'Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)
Other creatures you control with flanking have flanking.  (Each instance of flanking triggers separately.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 6, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Celestial Crusader', 'Time Spiral', 7, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Spirit',
'Flash (You may play this spell any time you could play an instant.)
Split second (As long as this spell is on the stack, players can''t play spells or activated abilities that aren''t mana abilities.
Flying
Other white creatures get +1/+1',
NULL, 2, 2, NULL, 'Time Spiral', 'Uncommon', 7, 'Jim Murray');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Griffin Guide', 'Time Spiral', 21, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchantment — Aura',
'Enchant creature
Enchanted creature gets +2/+2 and has flying.
When enchanted creature is put into a graveyard, put a 2/2 white Griffin creature token with flying into play.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 21, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Moorish Cavalry', 'Timeshifted', 14, 'Near Mint', 0.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Human Knight',
'Trample',
'Members of the elite Moorish Cavalry are very particular about their mounts, choosing only those whose bloodlines have been pure for generations.', NULL, NULL, NULL, 'Timeshifted', 'Special', 14, 'Dameon Willich');

--UPDATE info
--SET collector_number = 14
--WHERE extension = 'Timeshfited' AND collector_number = 11;

UPDATE card
SET collector_number = 11
WHERE item_id = 737;

UPDATE info
SET collector_number = 11
WHERE extension = 'Timeshifted' AND collector_number = '14';

SELECT *
FROM card;


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Quilled Sliver', 'Time Spiral', 37, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Return to Dust', 'Time Spiral', 39, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Instant',
'Remove target artifact or enchantment from the game.  If you played this spell during your main phase, you may remove up to one other target artifact or enchantment from the game.',
'Some timelines forever fray, branch, and intermingle.  Others end abruptly', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 39, 'Wayne Reynolds');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Return to Dust', 'Time Spiral', 39, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Return to Dust', 'Time Spiral', 39, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Squire', 'Timeshifted', 15, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Human Soldier', NULL,
'"Of twenty yeer of age he was, I gesse.  Of his stature he was of evene lengthe.  And wonderly delyvere, and of greete strengthe."—Geoffrey Chaucer, The canterbury Tales', 1, 2, NULL, 'Timeshifted', 'Special', 15, 'Dennis Detwiller');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brine Elemental', 'Time Spiral', 50, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Careful Consideration', 'Time Spiral', 52, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mistform Ultimus', 'Timeshifted', 26, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Legendary Creature — Illusion',
'Mistform Ultimus is every creature type (even if this card isn''t in play).',
'It may wear your face, but its mind is its own.', 3, 3, NULL, 'Timeshifted', 'Special', 26, 'Anthony S. Wares');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nicol Bolas', 'Timeshifted', 98, 'Near Mint', 2.33);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2UUBBRR', 8, 'Legendary Creature — Elder Dragon',
'Flying
At the beginning of your upkeep, sacrifice Nicol Bolas unless you pay UBR.
Whenever Nicol Bolas deals damage to an opponent, that player discards his or her hand.',
NULL, 7, 7, NULL, 'Timeshifted', 'Special', 98, 'Edward P. Beard, Jr.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ovinomancer', 'Timeshifted', 27, 'Near Mint', 0.19);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Creature — Human Wizard',
'When Ovinomancer comes into play, sacrifice it unless you return three basic lands you control to their owner''s hand.
T, Return Ovinomancer to its owner''s hand:  Destroy target creature.  It can''t be regenerated.  That creature''s controller puts a 0/1 green Sheep creature token into play.',
NULL, 0, 1, NULL, 'Timeshifted', 'Special', 27, 'Kev Walker.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ovinomancer', 'Timeshifted', 27, 'Near Mint', 0.19);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Unstable Mutation', 'Timeshifted', 33, 'Near Mint', 0.26);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Enchantment — Aura',
'Enchant creature
Enchanted creature gets +3/+3.
At the beginning of the upkeep of enchanted creature''s controller, put a -1/-1 counter on that creature',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 33, 'Douglas Shuler.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Voidmage Prodigy', 'Timeshifted', 34, 'Near Mint', 2.44);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('UU', 2, 'Creature — Human Wizard',
'UU, Sacrifice a Wizard:  Counter target spell.
Morph U (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)',
NULL, 2, 1, NULL, 'Timeshifted', 'Special', 34, 'Christopher Moeller.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Resurrection', 'Timeshifted', 12, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Sorcery',
'Return target creature card from your graveyard to play.',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 12, 'Dan Frazier.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Conspiracy', 'Timeshifted', 39, 'Near Mint', 3.82);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3BB', 5, 'Enchantment',
'As Conspiracy comes into play, choose a creature type.
Creature cards you own that aren''t in play, creature spells you control, and creatures you control are the chosen type.',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 39, 'Jeff Easley.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Evil Eye of Urborg', 'Time Spiral', 107, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Faceless Devourer', 'Time Spiral', 108, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Creature — Nightmare Horror',
'Shadow (This creature can block or be blocked by only creatures with shadow.)
When Faceless Devourer comes into play, remove another target reature with shadow from the game.
When Faceless Devourer leaves play, return the removed card to play under its owner''s control.',
NULL, 2, 1, NULL, 'Time Spiral', 'Uncommon', 108, 'Chippy.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fallen Ideal', 'Time Spiral', 109, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Enchantment — Aura',
'Enchant creature
Enchanted creature has flying and "Sacrifice a creature:  This creature gets +2/+1 until end of turn."
When Fallen Ideal is put into a graveyard from play, return Fallen Ideal to its owner''s hand',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 109, 'Anson Maddocks.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fallen Ideal', 'Time Spiral', 109, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nightshade Assassin', 'Time Spiral', 121, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Nightshade Assassin', 'Time Spiral', 121, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Premature Burial', 'Time Spiral', 125, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1B', 2, 'Sorcery',
'Destroy target nonblack creature that came into play since your last turn ended.',
'"This soil knows well the taste of the dead.  Give it the hunger for a living meal, and it can become a deadly ally."—Ezrith, druid of the Dark Hours', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 125, 'Clint Langley.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stupor', 'Timeshifted', 48, 'Near Mint', 0.38);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Sorcery',
'Target opponent discards a card at random, then discards a card.',
'There are medicines for all afflictions but idleness.—Suq''Ata saying', NULL, NULL, NULL, 'Timeshifted', 'Special', 48, 'Mike Kimble.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stupor', 'Timeshifted', 48, 'Near Mint', 0.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stupor', 'Timeshifted', 48, 'Near Mint', 0.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stupor', 'Timeshifted', 48, 'Near Mint', 0.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stupor', 'Timeshifted', 48, 'Near Mint', 0.38);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sudden Death', 'Time Spiral', 134, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1BB', 3, 'Instant',
'Split Second (As long as this spell is on the stack, players can''t play spells or activated abilities that aren''t mana abilities.)
Target creature gets -4/-4 until end of turn.',
'Some mages tapped into the time rifts, forcing upon others alternate timelines in which unimaginable horrors befall them.', NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 134, 'Dave Allsop.');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sudden Death', 'Time Spiral', 134, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Barbed Shocker', 'Time Spiral', 144, 'Near Mint', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Basalt Gargoyle', 'Time Spiral', 145, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Gargoyle',
'Flying
Echo 2R (At the beginning of your upkeep, if this came under your control since the beginning of your last upkeep, sacrifice it unless you pay its echo cost.)
R:  Basalt Gargoyle gets +0/+1 until end of turn.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 145, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Basalt Gargoyle', 'Time Spiral', 145, 'Near Mint', 0.04);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2R', 3, 'Creature — Gargoyle',
--'Flying
--Echo 2R (At the beginning of your upkeep, if this came under your control since the beginning of your last upkeep, sacrifice it unless you pay its echo cost.)
--R:  Basalt Gargoyle gets +0/+1 until end of turn.',
--NULL, NULL, NULL, NULL, 'Time Spiral', 'Uncommon', 145, 'Clint Langley');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Desolation Giant', 'Timeshifted', 57, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2RR', 4, 'Creature — Giant',
'Kicker WW (You may pay an additinal WW as you play this spell.)
When Desolation Giant comes into play, destroy all other creatures you control.  If the kicker cost was paid destroy all other creatures instead.',
NULL, 3, 3, NULL, 'Timeshifted', 'Special', 57, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dragonstorm', 'Timeshifted', 60, 'Near Mint', 3.40);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('8R', 9, 'Sorcery',
'Search your library for a Dragon card and put it into play.  Then shuffle your library.
Storm (When you play this spell, copy it for each spell played before it this turn.)',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 60, 'Kev Walker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Firewake Sliver', 'Time Spiral', 238, 'Near Mint', 0.23);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RG', 3, 'Creature — Sliver',
'All Slivers have haste and "1, Sacrifice this creature:  Target Sliver gets +2/+2 until end of turn."',
'"They are here, and they are hungry.  And what they do not eat, they burn.  Yavimaya is lost.  We must leave now for Skyshroud."—Edahlis, greenseeker', 1, 1, NULL, 'Time Spiral', 'Uncommon', 238, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fire Whip', 'Timeshifted', 63, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Enchantment — Aura',
'Enchant creature you control
Enchanted creature has "T:  This creature deals 1 damage to target creature or player."
Sacrifice Fire Whip:  Fire Whip deals 1 damage to target creature or player.',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 63, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orcish Librarian', 'Timeshifted', 66, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Creature — Orc',
'R, T:  Look at the top eight cards of your library.  Remove four of them at random from the game, then put the rest on top of your library in any order.',
'"Us hungry, need food....Lots of books....Hmm...."', 1, 1, NULL, 'Timeshifted', 'Special', 66, 'Phil Foglio');

--UPDATE info
--SET collector_number = 66
--WHERE extension = 'Timeshifted' AND collector_number = 68;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Orgg', 'Timeshifted', 67, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3RR', 5, 'Creature — Orgg',
'Trample
Orgg can''t attack if defending player controls an untapped creature with power 3 or greater.
Orgg can''t block creatures with power 3 or greater.',
'It''s bigger than it thinks.', 6, 6, NULL, 'Timeshifted', 'Special', 67, 'Daniel Gelon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stormbind', 'Timeshifted', 102, 'Near Mint', 0.40);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1RG', 3, 'Enchantment',
'2, Discard a card at random:  Stormbind deals 2 damage to target creature or player.',
'"Once, our people could call down the storm itself to do our bidding"', NULL, NULL, NULL, 'Timeshifted', 'Special', 102, 'NéNé Thomas & Phillip Mosness');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Suq''Ata Lancer', 'Timeshifted', 69, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2E', 3, 'Creature — Human Knight',
'Haste
Flanking (Whenever a creature without flanking blocks this creature, the blocking creature gets -1/-1 until end of turn.)',
'"Never stop ''til you see your lance come out the other side."—Telim''Tor', 2, 2, NULL, 'Timeshifted', 'Special', 69, 'Jeff Miracola');

--UPDATE info
--SET collector_number = 60
--WHERE extension = 'Timeshifted' AND collector_number = 69;

--HERE

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tectonic Fiend', 'Time Spiral', 181, 'Near Mint', 0.07);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4RR', 6, 'Creature — Elemental',
'Echo 4RR (At the beginning of your upkeep, if this came under your control since the beginning of your last upkeep, sacrifice it unless you pay its echo cost.)
Tectonic Fiend attacks each turn if able.',
'The barbarians of Pardia are long dead, but its mountains still smolder with rage.', 7, 7, NULL, 'Time Spiral', 'Uncommon', 181, 'Mark Tedin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Avoid Fate', 'Timeshifted', 73, 'Near Mint', 4.96);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Instant',
'Counter target instant or Aura spell that targets a permanent you control.',
NULL, NULL, NULL, NULL, 'Timeshifted', 'Special', 73, 'Phil Foglio');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Craw Giant', 'Timeshifted', 76, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GGGG', 7, 'Creature — Giant',
'Trample
Rampage 2 (Whenever this creature becomes blocked, it gets +2/+2 until end of turn for each creature blocking it beyond the first.)',
'Harthag gave a jolly laugh as he surveyed the army before him.  "Ho ho ho!  Miidgets!  You think you can stand in my way?"', 6, 4, NULL, 'Timeshifted', 'Special', 76, 'Christopher Rush');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gaea''s Liege', 'Timeshifted', 78, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GGG', 6, 'Creature — Avatar',
'Gaea''s Liege''s power and toughness are each equal to the number of Forests you control.  As long as Gaea''s Liege is attacking, its power and toughness are each equal to the number of Forests defending player controls instead.
T:  Target land becomes a Forest until Gaea''s Liege leaves play',
NULL, 0, 0, NULL, 'Timeshifted', 'Special', 78, 'Dameon Willich');

--SELECT *
--FROM info
--WHERE extension = 'Timeshifted' AND collector_number = 76;

--SELECT card.item_id AS id, card.title AS "name", info.mana_cost AS "mana cost", info.converted_mana_cost AS "converted mana cost", info.kind AS "type", info.rules_text AS "rules text", info.flavor_text AS "flavor text", info.punch AS "power", info.toughness, info.loyalty, card.extension AS "expansion", info.rarity, card.collector_number AS "collector number", info.artist, card.shape AS "condition", card.worth AS "value"
--FROM card
--JOIN info
--ON card.extension = info.extension AND card.collector_number = info.collector_number;

--UPDATE card
--SET collector_number = 78
--WHERE item_id = 781;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hail Storm', 'Timeshifted', 79, 'Near Mint', 0.15);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Instant',
'Hail Storm deals 2 damage to each attacking creature and 1 damage to you and each creature you control.',
'"If they can''t take the hail, they''d better stay home."', NULL, NULL, NULL, 'Timeshifted', 'Special', 79, 'Jeff A. Menges');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hail Storm', 'Timeshifted', 79, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Jolrael, Empress of Beasts', 'Timeshifted', 81, 'Near Mint', 1.28);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3GG', 5, 'Legendary Creature — Human Spellshaper',
'2G, T, Discard two cards:  Until end of turn, all lands target player controls are 3/3 creatures that are still lands.',
'"I need no army.  I have Jamuraa."', NULL, NULL, NULL, 'Timeshifted', 'Special', 81, 'Matthew D. Wilson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Krosan Grip', 'Time Spiral', 202, 'Near Mint', 0.73);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Might Sliver', 'Time Spiral', 205, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Sliver',
'All Slivers get +2/+2.',
'"The colossal thing rumbled over the ridge, tree husks crumbling before it.  The ones we were already fighting howled as it came, their muscles suddenly surging, and we knew it was time to flee."—Llanach, Skyshroud ranger', 2, 2, NULL, 'Time Spiral', 'Uncommon', 205, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pendelhaven Elder', 'Time Spiral', 209, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pendelhaven Elder', 'Time Spiral', 209, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantom Wurm', 'Time Spiral', 711, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4GG', 6, 'Creature — Wurm Spirit',
'Phantom Wurm comes into play with four +1/+1 counters on it.
If damage would be dealt to Phantom Wurm, prevent that damage.  Remove a +1/+1 counter from Phantom Wurm.',
'It died with the forest, yet both linger on in twisted form', 2, 0, NULL, 'Time Spiral', 'Uncommon', 711, 'Alan Pollack');

--UPDATE info
--SET collector_number = 711
--WHERE extension = 'Time Spiral' AND collector_number = 71;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Primal Forcemage', 'Time Spiral', 212, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Elf Shaman',
'Whenever another creature comes into play under your control, that creature gets +3/+3 until end of turn.',
'Their calls unheeded by the withered forests, nature shamans channeled the life force of their bretheren', 2, 2, NULL, 'Time Spiral', 'Uncommon', 212, 'Jeff Miracola');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Primal Forcemage', 'Time Spiral', 212, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Scragnoth', 'Timeshifted', 83, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4G', 5, 'Creature — Beast',
'Scragnoth can''t be countered.  Protection from blue',
'It possesses no intelligence, only counter-intelligence', 3, 4, NULL, 'Timeshifted', 'Special', 83, 'Jeff Laubenstein');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Scryb Ranger', 'Time Spiral', 215, 'Near Mint', 0.29);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Faerie',
'Flash (You may play this spell any time you could play an instant.)
Flying, protection from blue
Return a Forest you control to its owner''s hand:  Untap target creature.  Play this ability only once each turn.',
NULL, 1, 1, NULL, 'Time Spiral', 'Uncommon', 215, 'Rebecca Guay');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporesower Thallid', 'Time Spiral', 220, 'Near Mint', 0.29);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Creature — Fungus',
'At the beginning of your upkeep, put a spore counter on each Fungus you control.
Remove three spore counters from Sporesower Thallid:  Put a 1/1 green Saproling creature token into play.',
NULL, 4, 4, NULL, 'Time Spiral', 'Uncommon', 220, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporesower Thallid', 'Time Spiral', 220, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sporesower Thallid', 'Time Spiral', 220, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid', 'Timeshifted', 86, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Fungus',
'At the beginning of your upkeep, put a spore counter on Thallid.
Remove three spore counters from Thallid:  Put a 1/1 green Saproling creature token into play.',
NULL, 1, 1, NULL, 'Timeshifted', 'Special', 86, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid', 'Timeshifted', 86, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Whirling Dervish', 'Timeshifted', 90, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Fungus',
'Protection from black
At end of turn, if Whirling Dervish dealth damage to an opponent this turn, put a +1/+1 counter on it.',
NULL, 1, 1, NULL, 'Timeshifted', 'Special', 90, 'Susan Van Camp');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Yavimaya Dryad', 'Time Spiral', 235, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Terramorphic Expanse', 'Time Spiral', 279, 'Near Mint', 0.26);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES(NULL, NULL, 'Land',
'T, Sacrifice Terramorphic Expanse:  Search your library for a basic land card and put it into play tapped.  Then shuffle your library.',
'Take two steps north into the unsettled future, south into the uniquiet past, east into the present day, or west into the great unknown', NULL, NULL, NULL, 'Time Spiral', 'Common', 279, 'Dan Scott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Terramorphic Expanse', 'Time Spiral', 279, 'Near Mint', 0.26);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Terramorphic Expanse', 'Time Spiral', 279, 'Near Mint', 0.26);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brass Gnat', 'Time Spiral', 249, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1', 1, 'Artifact Creature — Insect',
'Flying
Brass Gnat doesn''t untap during your untap step.
At the beginning of your upkeep, you may pay 1.  If you do, untap Brass Gnat.',
'Its buzzing is the sound of its inner mechanisms, ever winding down.', 1, 1, NULL, 'Time Spiral', 'Common', 249, 'Martina Pilcerova');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Brass Gnat', 'Time Spiral', 249, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Jhoira''s Timebug', 'Time Spiral', 257, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact Creature — Insect',
'T:  Choose target permanent you control or suspended card you own.  If that permanent or card has a time counter on it, you may remove a time counter from it or put another time counter on it.',
NULL, 1, 2, NULL, 'Time Spiral', 'Common', 257, 'Dan Frazier');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Prismatic Lens', 'Time Spiral', 262, 'Near Mint', 0.62);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2', 2, 'Artifact',
'T:  Add 1 to your mana pool.
1, T:  Add one mana of any color to your mana pool.',
'It bends not light but mana, aligning its chaotic currents into the sharp angles necessary for the mystic''s purposes', NULL, NULL, NULL, 'Time Spiral', 'Common', 262, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Prismatic Lens', 'Time Spiral', 262, 'Near Mint', 0.62);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Prismatic Lens', 'Time Spiral', 262, 'Near Mint', 0.62);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Venser''s Sliver', 'Time Spiral', 267, 'Near Mint', 0.21);

--ALTER TABLE info
--MODIFY COLUMN flavor_text VARCHAR(248);

INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5', 5, 'Artifact Creature — Sliver', 
'Amrou Seekers can''t be blocked except by artifact creatures and/or white creatures.',
'Venser admired his handiwork and smiled.  His first prototype had joined with the hive mind all too well, running with the brood and becoming a predator itself.  This one, he thought, would be accepted into the hive but still obey his commands.', 2, 2, NULL, 'Time Spiral', 'Common', 267, 'Quinton Hoover');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Amrou Seekers', 'Time Spiral', 2, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Kithkin Rebel', NULL,
'The paradise of Amrou Haven had become a field of cinders.  Its people struggled to survive, hoping to see visions of its past in the strange storms that quickly passed.', 3, 3, NULL, 'Time Spiral', 'Common', 2, 'Carl Critchlow ');



--UPDATE info
--SET rules_text = 'Venser admired his handiwork and smiled.  His first prototype had joined with the hive mind all too well, running with the brood and becoming a predator itself.  This one, he thought, would be accepted into the hive but still obey his commands.'
--WHERE extension = 'Time Spiral' AND collector_number = 267;

--UPDATE info
--SET rules_text = 'The paradise of Amrou Haven had become a field of cinders.  Its people struggled to survive, hoping to see visions of its past in the strange storms that quickly passed.'
--WHERE extension = 'Time Spiral' AND collector_number = 2;

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Benalish Cavalry', 'Time Spiral', 4, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Children of Korlis', 'Time Spiral', 8, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Creature — Human Rebel Cleric',
'Sacrifice Children of Korlis:  You gain life equal to the life you''ve lost this turn.  (Damage causes loss of life.)',
'"We have a proud history of self-sacrifice.  But it is easy, in these bleak times, to find one among us who is eager to die for any cause."—Tavalus, acolyte of Korlis', 1, 1, NULL, 'Time Spiral', 'Common', 8, 'Quinton Hoover');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Children of Korlis', 'Time Spiral', 8, 'Near Mint', 0.20);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Archer', 'Sixth Edition', 15, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('D''Avenant Archer', 'Sixth Edition', 15, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Detainment Spell', 'Time Spiral', 12, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Enchantment — Aura',
'Enchant creature
Enchanted creature''s activated abilities can''t be played.
1W:  Attach Detainment Spell to target creature.',
'Bind the mind rather than the wrist, and you stop the intent to harm before it starts.', 1, 1, NULL, 'Time Spiral', 'Common', 12, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Divine Congregation', 'Time Spiral', 13, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Errant Doomsayers', 'Time Spiral', 15, 'Near Mint', 0.05);
--INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Human Rebel',
--'T:  Tap target creature with toughness 2 or less.',
--'"Heed my words, traveler.  Plagues, war, desolation...all mere hints of what is yet to come from Dominaria''s vault of horrors."', 1, 1, NULL, 'Time Spiral', 'Common', 15, 'Liz Danforth');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gaze of Justice', 'Time Spiral', 20, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Sorcery',
'As an additional cost to play Gaze of Justice, tap three untapped white creatures you control.
Remove target creature from the game.
Flashback 5W (You may play this card from your graveyard for its flashback cost and any additional costs.  Then remove it from the game.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 20, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Icatian Crier', 'Time Spiral', 23, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Icatian Crier', 'Time Spiral', 23, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ivory Giant', 'Time Spiral', 24, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ivory Giant', 'Time Spiral', 24, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Momentary Blink', 'Time Spiral', 29, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant',
'Remove target creature you control from the game, then return it to play under its owner''s control.
Flashback 3U (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 29, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Temporal Isolation', 'Time Spiral', 43, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Enchantment — Aura',
'Flash (You may play this spell any time you could play an instant.)
Enchant creature
Enchanted creature has shadow.  (it can block or be blocked only by creatures with shadow.)
Prevent all damage that would be dealt by enchanted creature.',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 43, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Zealot il-Vec', 'Time Spiral', 47, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bewilder', 'Time Spiral', 49, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2U', 3, 'Instant',
'Target creature gets -3/-0 until end of turn.
Draw a card.',
'"Teferi snapped his fingers, and the viashino started clucking like a chicken.  Silly, yes, but exactlythe thing we needed to break the stifling tension."—Jhoira, master artificer', NULL, NULL, NULL, 'Time Spiral', 'Common', 49, 'Ralph Horsley');



INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bewilder', 'Time Spiral', 49, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cancel', 'Time Spiral', 51, 'Near Mint', 0.13);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Instant',
'Counter target spell',
'Fendros gasped as he watched the spell drip from the ends of his fingers.  He moved his foot, afraid to disturb the spot where it lay slain.', NULL, NULL, NULL, 'Time Spiral', 'Common', 51, 'Mark Poole');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Clockspinning', 'Time Spiral', 53, 'Near Mint', 0.64);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coral Trickster', 'Time Spiral', 54, 'Near Mint', 0.07);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dream Stalker', 'Time Spiral', 58, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Eternity Snare', 'Time Spiral', 61, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Fathom Seer', 'Time Spiral', 62, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ophidian Eye', 'Time Spiral', 70, 'Near Mint', 1.01);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Screeching Sliver', 'Time Spiral', 75, 'Near Mint',  0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Snapback', 'Time Spiral', 78, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Snapback', 'Time Spiral', 78, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bewilder', 'Time Spiral', 49, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Temporal Eddy', 'Time Spiral', 85, 'Near Mint', 0.06);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2UU', 4, 'Sorcery',
'Put target creature or land on top of its owner''s library',
'As the temporal fractures spread and time itself slowly fell apart, visitors started to appear from across the past and future, and those native to the present began to disappear', NULL, NULL, NULL, 'Time Spiral', 'Common', 85, 'Wayne England');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Assassinate', 'Time Spiral', 95, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Call to the Netherworld', 'Time Spiral', 97, 'Near Mint', 0.33);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('B', 1, 'Sorcery',
'Return target black creature card from your graveyard to your hand.
Madness 0 (If you discard this card, you may play it for its madness cost instead of putting it into your graveyard.)',
'The ritual was normally performed only by horrors and pit spawn.  Lesser mages had but one sanity to crack in the casting.', NULL, NULL, NULL, 'Time Spiral', 'Common', 97, 'Vance Kovacs');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Corpulent Corpse', 'Time Spiral', 98, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Corpulent Corpse', 'Time Spiral', 98, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cyclopean Giant', 'Time Spiral', 100, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Cyclopean Giant', 'Time Spiral', 100, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Deathspore Thallid', 'Time Spiral', 102, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Feebleness', 'Time Spiral', 110, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Feebleness', 'Time Spiral', 110, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gorgon Recluse', 'Time Spiral', 111, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3BB', 5, 'Creature — Gorgon',
'Whenever Gorgon Recluse blocks or becomes blocked by a nonblack creature, destroy that creature at end of combat.
Madness BB (If you discard this card, you may play it for its madness cost instead of putting it into your graveyard.', NULL, 2, 4, NULL, 'Time Spiral', 'Common', 111, 'Darrell Riche');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mana Skimmer', 'Time Spiral', 117, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Leach',
'Flying
Whenever Mana Skimmer deals damage to a player, tap target land that player controls.  That land doesn''t untap during the controller''s next untap step.',
'They traverse the mana-starved wastes in search of richer lands.', 2, 2, NULL, 'Time Spiral', 'Common', 117, 'Daniel Gelon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mindstab', 'Time Spiral', 119, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mindstab', 'Time Spiral', 119, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mindstab', 'Time Spiral', 119, 'Near Mint', 0.17);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pit Keeper', 'Time Spiral', 123, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pit Keeper', 'Time Spiral', 123, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Psychotic Episode', 'Time Spiral', 126, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UU', 3, 'Sorcery',
'Target player reveals his or her hand and the top card of his or her library.  You choose a card revealed this way.  That player puts the chosen card on the bottom of his or her library.
Madness 1B (If you discard this card, you may play it for its madness cost instead of putting it into your graveyard.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 126, 'Drew Tucker');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Skulking Knight', 'Time Spiral', 130, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Tendrils of Corruption', 'Time Spiral', 136, 'Near Mint', 0.20);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Evil Eye of Urborg', 'Time Spiral', 107, 'Near Mint', 0.25);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscid Lemures', 'Time Spiral', 141, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viscid Lemures', 'Time Spiral', 141, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Aetherflame Wall', 'Time Spiral', 142, 'Near Mint', 0.09);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ancient Grudge', 'Time Spiral', 143, 'Near Mint', 0.18);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1R', 2, 'Instant',
'Destroy target artifact.
Flashback G (You may play this card from your graveyard for its flashback cost.  Then remove it from the game.)',
NULL, NULL, NULL, NULL, 'Time Spiral', 'Common', 143, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bonesplitter Sliver', 'Time Spiral', 149, 'Lightly Played', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Bonesplitter Sliver', 'Time Spiral', 149, 'Lightly Played', 0.23);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Coal Stoker', 'Time Spiral', 150, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3R', 4, 'Creature — Elemental',
'When Coal Stoker comes into play, if you played it from your hand, add RRR to your mana pool.',
'"The day is mine!  I sent three such creatures against my foe, then watched as my magefire popped her soldiers like overripe spleenfruits."—Dobruk the Unstable, pyromancer', 3, 3, NULL, 'Time Spiral', 'Common', 150, 'Mark Zug');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghitu Firebreathing', 'Time Spiral', 158, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ground Rift', 'Time Spiral', 162, 'Near Mint', 0.44);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('R', 1, 'Sorcery',
'Target creature without flying can''t block this turn.
Storm (When you play this spell, copy it for each spell played before it this turn.  You may choose new targets for the copies.)',
'Some time rifts didn''t take away the people but just the ground they stood on.', NULL, NULL, NULL, 'Time Spiral', 'Common', 162, 'Thomas M. Baxa');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ground Rift', 'Time Spiral', 162, 'Near Mint', 0.44);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ground Rift', 'Time Spiral', 162, 'Near Mint', 0.44);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ground Rift', 'Time Spiral', 162, 'Near Mint', 0.44);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Keldon Halberdier', 'Time Spiral', 167, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Keldon Halberdier', 'Time Spiral', 167, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Keldon Halberdier', 'Time Spiral', 167, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Lightning Axe', 'Time Spiral', 168, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Viashino Bladescout', 'Time Spiral', 185, 'Near Mint', 0.03);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ashcoat Bear', 'Time Spiral', 190, 'Near Mint', 0.27);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Bear',
'Flash (You may play this spell any time you could play an instant.)
The bears wade into time rifts to feed.  They do not fear the storms, and they are quick enough to snatch prey juat as it blinks in or out of time.',
NULL, 2, 2, NULL, 'Time Spiral', 'Common', 190, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ashcoat Bear', 'Time Spiral', 190, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ashcoat Bear', 'Time Spiral', 190, 'Near Mint', 0.27);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Chameleon Blur', 'Time Spiral', 192, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Instant',
'Prevent all damage that creatures would deal to players this turn.',
'"Sometimes the  best plan is neither fighting nor running."—Freyalise', NULL, NULL, NULL, 'Time Spiral', 'Common', 192, 'Anthony S. Waters');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Durkwood Baloth', 'Time Spiral', 193, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Durkwood Baloth', 'Time Spiral', 193, 'Near Mint', 0.06);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Gemhide Sliver', 'Time Spiral', 196, 'Near Mint', 0.39);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Sliver',
'All Slivers have "T:  Add one mana of any color to your mana pool."',
'"The land is weary.  Even Skyshroud is depleted.  We must find another source of mana—one that is growing despite our withering world."—Freyalise', 1, 1, NULL, 'Time Spiral', 'Common', 196, 'John Matson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Glass Asp', 'Time Spiral', 197, 'Near Mint', 0.08);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1GG', 3, 'Creature — Snake',
'Whenever Glass Asp deals combat damage to a player, that player loses 2 life at the beginning of his or her next draw step unless he or she pays 2 before that step.',
'Its venom induces a fever that causes its victims to relive the attack in recurring, haunting visions.', 2, 1, NULL, 'Time Spiral', 'Common', 197, 'Richard Kane Ferguson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Glass Asp', 'Time Spiral', 197, 'Near Mint', 0.08);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Greenseeker', 'Time Spiral', 198, 'Near Mint', 0.16);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('G', 1, 'Creature — Elf Spellshaper',
'G, T, Discard a card:  Search your library for a basic land card, reveal it, and put it into your hand.  Then shuffle your library.',
'"A rumor passes among the snakes, whispered by the rushes, inspiring the seekers:  the goddess Freyalise is alive in Skyshroud."', 1, 1, NULL, 'Time Spiral', 'Common', 198, 'Rebecca Guay');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Greenseeker', 'Time Spiral', 198, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Greenseeker', 'Time Spiral', 198, 'Near Mint', 0.16);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Herd Gnarr', 'Time Spiral', 200, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Herd Gnarr', 'Time Spiral', 200, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Savage Thallid', 'Time Spiral', 213, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Savage Thallid', 'Time Spiral', 213, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Savage Thallid', 'Time Spiral', 213, 'Near Mint', 0.24);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Moderately Played', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Moderately Played', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Near Mint', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Search for Tomorrow', 'Time Spiral', 216, 'Near Mint', 0.29);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spinneret Sliver', 'Time Spiral', 219, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Spinneret Sliver', 'Time Spiral', 219, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sprout', 'Time Spiral', 221, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sprout', 'Time Spiral', 221, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sprout', 'Time Spiral', 221, 'Near Mint', 0.18);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Strength in Numbers', 'Time Spiral', 224, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Instant',
'Until end of turn, target creature gains trample and gets +X/+X, where X is the number of attacking creatures.',
'"The hermit dies.  The outcast dies.  The lone wolf dies.  Only those who stick together survive this world."—Uros, Pendlehaven elder', NULL, NULL, NULL, 'Time Spiral', 'Common', 224, 'Ron Spencer');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Strength in Numbers', 'Time Spiral', 224, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Germinator', 'Time Spiral', 225, 'Near Mint', 0.10);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Fungus',
'At the beginning of your upkeep, put a spore counter on Thallid Germinator.
Remove three spore counters from Thallid Germinator:  Put a 1/1 green Saproling creature token into play.
Sacrifice a Saproling:  Target creature gets +1/+1 until end of turn.',
NULL, 2, 2, NULL, 'Time Spiral', 'Common', 225, 'Tom Wänerstrand');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Germinator', 'Time Spiral', 225, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Germinator', 'Time Spiral', 225, 'Near Mint', 0.10);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Shell-Dwellerr', 'Time Spiral', 226, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1G', 2, 'Creature — Fungus',
'Defender
At the beginning of your upkeep, put a spore counter on Thallid Shell-Dweller.
Remove three spore counters from Thallid Shell-Dweller:  Put a 1/1 green Saproling creature token into play.',
NULL, 0, 5, NULL, 'Time Spiral', 'Common', 226, 'Carl Critchlow');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Shell-Dwellerr', 'Time Spiral', 226, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Thallid Shell-Dwellerr', 'Time Spiral', 226, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Molder', 'Time Spiral', 206, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mwonvuli Acid-Moss', 'Time Spiral', 207, 'Near Mint', 0.95);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mwonvuli Acid-Moss', 'Time Spiral', 207, 'Near Mint', 0.95);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mwonvuli Acid-Moss', 'Time Spiral', 207, 'Near Mint', 0.95);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Mwonvuli Acid-Moss', 'Time Spiral', 207, 'Near Mint', 0.95);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Penumbra Spider', 'Time Spiral', 210, 'Near Mint', 0.15);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wormwood Dryad', 'Time Spiral', 233, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2G', 3, 'Creature — Dryad',
'G:  Wormwood Dryad gains forestwalk until end of turn and it deals 1 damage to you.
B:  Wormwood Dryad gains swampwalk until end of turn and it deals 1 damage to you.',
NULL, 3, 1, NULL, 'Time Spiral', 'Common', 233, 'Warren Mahy');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Wormwood Dryad', 'Time Spiral', 233, 'Near Mint', 0.05);

-- P L A N A R  C H A O S

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Malach of the Dawn', 'Planar Chaos', 24, 'Foil Near Mint', 2.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2WW', 4, 'Creature — Angel',
'Flying
WWW:  Regenerate Malach of the Dawn.',
'"The sun rises, but the world still feels dark.  Pray for the arrival of teh malachim—they''ll bring Dawn to the world and to our hearts."', 3, 1, NULL, 'Planar Chaos', 'Uncommon', 24, 'Steve Prescott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Malach of the Dawn', 'Planar Chaos', 24, 'Near Mint', 0.21);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rebuff the Wicked', 'Planar Chaos', 12, 'Near Mint', 1.47);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('W', 1, 'Instant',
'Counter target spell that targets a permanent you control.',
'"I cannot teach you their brand of magic, but I can teach you how to defend against it."—Tavalus, priest of Korlis', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 12, 'Stephen Tappin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rebuff the Wicked', 'Planar Chaos', 12, 'Near Mint', 1.47);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rebuff the Wicked', 'Planar Chaos', 12, 'Near Mint', 1.47);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Rebuff the Wicked', 'Planar Chaos', 12, 'Near Mint', 1.47);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Saltblast', 'Planar Chaos', 15, 'Near Mint', 0.11);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3WW', 5, 'Sorcery',
'Destroy target nonwhite permanent.',
'Dominaria erodes with each passing gust.', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 15, 'Parente');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Saltblast', 'Planar Chaos', 15, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Saltblast', 'Planar Chaos', 15, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Saltblast', 'Planar Chaos', 15, 'Near Mint', 0.11);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Serra''s Boon', 'Planar Chaos', 17, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Enchantment — Aura',
'Enchant creature
Enchanted creature gets +1/+2 as long as it''s white.  Otherwise, it gets -2/-1.',
'"The light of an angel''s glance is warm, but her fixed stare blinds and burns."—Calexis, deacon of the New Order of Serra', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 17, 'Steven Belledin');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stonecloaker', 'Planar Chaos', 19, 'Near Mint', 0.17);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2W', 3, 'Creature — Gargoyle',
'Flash (You may play this spell any time you could play an instant.)
Flying
When Stonecloaker comes into play, return a creature you control to its owner''s hand.
When Stonecloaker comes into play, remove target card in a graveyard from the game.',
NULL, 3, 2, NULL, 'Planar Chaos', 'Uncommon', 19, 'Tomas Giorello');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stormfront Riders', 'Planar Chaos', 20, 'Near Mint', 0.20);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4W', 5, 'Creature — Human Soldier',
'Flying
When Stormfront Riders comes into play, return two creatures you control to their owner''s hand.
Whenever Stormfront Riders or another creature is returned to your hand from play, put a 1/1 white Soldier creature token into play.',
NULL, 4, 3, NULL, 'Planar Chaos', 'Uncommon', 20, 'Wayne Reynolds');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Stormfront Riders', 'Planar Chaos', 20, 'Near Mint', 0.20);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Frozen Aether', 'Planar Chaos', 54, 'Near Mint', 1.45);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3U', 4, 'Enchantment',
'Artifacts, creatures, and lands your opponents control come into play tapped.',
'Gjornersen entertained his followers by taking bets on which would move first—the drowsing land wurm or the frozen goblins.', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 54, 'Dan Dos Santos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Frenetic Sliver', 'Planar Chaos', 157, 'Near Mint', 1.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1UR', 3, 'Creature — Sliver',
'All Slivers have "0:  If this creature is in play, flip a coin.  If you win the flip, remove this creature from the game and return it to play under its owner''s control at end of turn.  If you lose the flip, sacrifice it.',
NULL, 2, 2, NULL, 'Planar Chaos', 'Uncommon', 157, 'Luca Zontini');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pongify', 'Planar Chaos', 44, 'Near Mint', 3.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('U', 1, 'Instant',
'Destroy target creature.  It can''t be regenerated.  That creature''s controller puts a 3/3 green Ape creature token into play.',
'Some spellcrafting mistakes go on to become spells of their own.', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 44, 'Heather Hudson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Riptide Pilferer', 'Planar Chaos', 60, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1U', 2, 'Creature — Merfolk Rogue',
'Whenever Riptide Pilferer deals combat damage to a player, that player discards a card.
Morph U (You may play this face down as a 2/2 creature for 3.  Turn it face up any time for its morph cost.)',
NULL, 1, 1, NULL, 'Planar Chaos', 'Uncommon', 60, 'Steve Prescott');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Riptide Pilferer', 'Planar Chaos', 60, 'Near Mint', 0.14);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Venarian Glimmer', 'Planar Chaos', 52, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('XU', 1, 'Instant',
'Target player reveals his or her hand.  Choose a nonland card with converted mana cost X or less from it.  That player discards that card.',
'Dream of nothing, and wake to a dream come true.', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 52, 'John Avon');


INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Enslave', 'Planar Chaos', 70, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4BB', 6, 'Enchantment — Aura',
'Enchant creature
You control enchanted creature.
At the beginning of your upkeep, enchanted creature deals 1 damage to its owner.',
NULL, NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 70, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Kor Dirge', 'Planar Chaos', 87, 'Near Mint', 0.12);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2B', 3, 'Instant',
'All damage that would be dealt this turn to target creature you control by a source of your choice is dealt to another target creature instead.',
'Rath''s new evincar eliminated the brutish moggs and took a new slave race, one more reminiscent of her own feline grace', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 87, 'Alex Horley-Orlandelli');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Kor Dirge', 'Planar Chaos', 87, 'Near Mint', 0.12);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Muck Drubb', 'Planar Chaos', 76, 'Near Mint', 0.14);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3BB', 5, 'Creature — Beast',
'Flash (You may play this spell any time you could play an instant.)
When Muck Drubb comes into play, change the target of target spell that targets only a single creature to Muck Drubb.
Madness 2B (If you discard, you may play it for its madness cost instead of putting it into your graveyard.)',
NULL, 3, 3, NULL, 'Planar Chaos', 'Uncommon', 76, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('5BB', 7, 'Creature — Horror',
'When you play Phantasmagorian, any player may discard three cards.  If a player does, counter Phantasmagorian.
Discard three cards:  Return Phantasmagorian from your graveyard to your hand.',
NULL, 6, 6, NULL, 'Planar Chaos', 'Uncommon', 77, 'Steve Ellis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Phantasmagorian', 'Planar Chaos', 77, 'Near Mint', 0.22);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Waning Wurm', 'Planar Chaos', 83, 'Near Mint', 0.21);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3B', 4, 'Creature — Zombie Wurm',
'Vanishing 2 (This permanent comes into play with two time counters on it.  At the beginning of your upkeep, remove a time counter from it.  When the last is removed, sacrifice it.).',
NULL, 7, 6, NULL, 'Planar Chaos', 'Uncommon', 83, 'Alan Pollack');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Harmonize', 'Planar Chaos', 149, 'Near Mint', 0.25);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('2GG', 4, 'Sorcery',
'Draw three cards.',
'"Life''s greatest lessons don''t come from focus or concentration.  They come from breathing and simply noticing."—Seton, centaur druid', NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 149, 'Rob Alexander');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Hunting Wilds', 'Planar Chaos', 130, 'Near Mint', 0.24);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Sorcery',
'Kicker 3G (You may pay an additional 3G as you play this spell.)
Search your library for up to two Forest cards and put them into play tapped.  Then shuffle your library.
If the kicker cost was paid, untap all Forests put into play this way.  They become 3/3 green creatures with haste that are still lands.',
NULL, NULL, NULL, NULL, 'Planar Chaos', 'Uncommon', 130, 'Steve Ellis');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sophic Centaur', 'Planar Chaos', 139, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3G', 4, 'Creature — Centaur Spellshaper',
'2GG, T, Discard a card:  You gain 2 life for each card in your hand.',
'He endures the pain of remembering Krosa as it once was and hopes that a future generation will have need of his memories.', 1, 1, NULL, 'Planar Chaos', 'Uncommon', 139, 'Dan Dos Santos');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Instant',
'Choose one — Prevent all combat damage that would be dealt this turn;  or regenerate target creature;  or counter target spell that targets you.',
NULL, NULL, NULL, NULL, 'Planar Chaos', 'Common', 4, 'John Avon');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Dawn Charm', 'Planar Chaos', 4, 'Near Mint', 0.34);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghost Tactician', 'Planar Chaos', 6, 'Near Mint', 0.04);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('4W', 5, 'Creature Spirit — Spellshaper',
'W, T, Discard a card:  Creatures you control get +1/+0 until end of turn.',
'Its ethereal hand confers a lifetime of experience with combat and steel.', 2, 5, NULL, 'Planar Chaos', 'Common', 6, 'Zoltan Boros & Gabor Szikszai');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghost Tactician', 'Planar Chaos', 6, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Ghost Tactician', 'Planar Chaos', 6, 'Near Mint', 0.04);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Pallid Mycoderm', 'Planar Chaos', 10, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Creature — Fungus',
'At the beginning of your upkeep, put a spore counter on Pallid Mycoderm.
Remove three spore counters from Pallid Mycoderm:  Put a 1/1 green Saproling creature token into play.
Sacrifice a Saproling:  Each Fungus and each Saproling you control gets +1/+1 until end of turn.',
NULL, 2, 4, NULL, 'Planar Chaos', 'Common', 10, 'Jim Nelson');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Revered Dead', 'Planar Chaos', 29, 'Near Mint', 0.09);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Spirit Soldier',
'W:  Regenerate Revered Dead.',
NULL, 1, 1, NULL, 'Planar Chaos', 'Common', 29, 'Ron Spears');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shade of Trokair', 'Planar Chaos', 18, 'Near Mint', 0.05);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('3W', 4, 'Creature — Shade',
'W:  Shade of Trokair gets +1/+1 until end of turn
Suspend 3—W (Rather than play this card from your hand, you may pay R and remove it from the game with three time counters on it.  At the beginning of your upkeep, remove a time counter.  When you remove the last, play it without paying its mana cost.)',
NULL, 1, 2, NULL, 'Planar Chaos', 'Common', 18, 'William O''Connor');

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Shade of Trokair', 'Planar Chaos', 18, 'Near Mint', 0.05);

INSERT INTO card(title, extension, collector_number, shape, worth) VALUES('Sinew Sliver', 'Planar Chaos', 30, 'Near Mint', 0.34);
INSERT INTO info(mana_cost, converted_mana_cost, kind, rules_text, flavor_text, punch, toughness, loyalty, extension, rarity, collector_number, artist) VALUES('1W', 2, 'Creature — Sliver',
'All Slivers get +1/+1.',
'As the muscle cords of the creature twitched, Hanna saw an unsettling unanimity in the others'' ripplling flesh.  She didn''t know what it meant, but she urged Sisay to keep the ship at a safe distance.', 1, 1, NULL, 'Planar Chaos', 'Common', 30, 'Steven Belledin');

SELECT card.item_id AS id, card.title AS "name", info.mana_cost AS "mana cost", info.converted_mana_cost AS "converted mana cost", info.kind AS "type", info.rules_text AS "rules text", info.flavor_text AS "flavor text", info.punch AS "power", info.toughness, info.loyalty, card.extension AS "expansion", info.rarity, card.collector_number AS "collector number", info.artist, card.shape AS "condition", card.worth AS "value"
FROM card
JOIN info
ON card.extension = info.extension AND card.collector_number = info.collector_number
ORDER BY card.item_id DESC;

SELECT card.item_id, card.title, card.extension, card.collector_number, card.shape, card.worth, info.rarity
FROM card
JOIN info
ON card.extension = info.extension AND card.collector_number = info.collector_number
WHERE worth >= 1
ORDER BY card.extension AND card.collector_number;

 

DROP TABLE card;
DROP TABLE info;
DROP TABLE buyers;
DROP TABLE items;
DROP TABLE inventory;
DROP TABLE mtg;
DROP TABLE collection;
SHOW TABLES