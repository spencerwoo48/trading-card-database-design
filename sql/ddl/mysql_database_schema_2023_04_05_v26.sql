CREATE TABLE card (
    card_id INT PRIMARY KEY AUTO_INCREMENT,
   
   



    extension VARCHAR(56),
    
    






    collector_number INT,
    shape VARCHAR(24),
    worth DECIMAL(5, 2)
    
);

CREATE TABLE comprehensive (
    
    title VARCHAR(32),
    mana_cost VARCHAR(8),
    converted_mana_cost INT,
    kind VARCHAR(32),
    extension VARCHAR(56),
    rarity VARCHAR(16),
    rules_text VARCHAR(664),
    flavor_text VARCHAR(200),
    punch INT,
    toughness INT,
    loyalty INT,
    artist VARCHAR(32),
    collector_number INT,
    


    PRIMARY KEY(extension, collector_number)
);

CREATE TABLE chronology (
    
    



    extension VARCHAR(56) PRIMARY KEY,
    
    








    launch DATE
);

ALTER TABLE card
ADD FOREIGN KEY(extension, collector_number)
REFERENCES comprehensive(extension, collector_number)
ON DELETE SET NULL;

ALTER TABLE card
ADD FOREIGN KEY(extension)
REFERENCES chronology(extension)
ON DELETE SET NULL;

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 310, 'Lightly Played', 0.18);
INSERT INTO comprehensive(title, mana_cost, converted_mana_cost, kind, extension, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Arcum''s Weathervane', '2', 2, 'Artifact', 'Ice Age', 'Uncommon',
'2, T:  Target snow land is no longer snow.
2, T:  Target nonsnow basic land becomes snow.',
NULL, NULL, NULL, NULL, 'Tom Wänerstrand', 310);
INSERT INTO chronology(extension, launch) VALUES('Ice Age', '1996-10-06');

SELECT card.card_id AS 'Card ID', comprehensive.title AS 'Name', comprehensive.mana_cost AS 'Mana Cost', comprehensive.converted_mana_cost AS 'Converted Mana Cost', comprehensive.kind AS 'Type',card.extension AS 'Expansion',
comprehensive.rarity AS 'Rarity', comprehensive.rules_text AS 'Rules Text', comprehensive.flavor_text AS 'Flavor Text', comprehensive.punch AS 'Power', comprehensive.toughness AS 'Toughness', comprehensive.loyalty AS 'Loyalty',
comprehensive.artist AS 'Artist', card.collector_number AS 'Collector Number',  card.shape AS 'Condition', card.worth AS 'Value', chronology.launch AS 'Release Date'
FROM card
JOIN comprehensive
ON card.extension = comprehensive.extension AND card.collector_number = comprehensive.collector_number
JOIN chronology
ON card.extension = chronology.extension
ORDER BY chronology.launch, card.extension, card.collector_number;  