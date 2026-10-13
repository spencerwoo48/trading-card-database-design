CREATE TABLE noncreatures (
	noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32),
	mana_cost VARCHAR(8),
	converted_mana_cost INT,
	kind VARCHAR(32),
	extension INT,
	rarity INT,
	rules_text VARCHAR(664),
	flavor_text VARCHAR(200),
	
    

	artist INT,
	collector_number INT
	
    
);

CREATE TABLE extensions (
	extensions_id INT PRIMARY KEY AUTO_INCREMENT,
	extension VARCHAR(72)
);

CREATE TABLE rarities (
	rarities_id INT PRIMARY KEY AUTO_INCREMENT,
	rarity VARCHAR(16)
);

CREATE TABLE creatures (
	creatures_id INT PRIMARY KEY AUTO_INCREMENT,
	punch INT,
	toughness INT,
	FOREIGN KEY (creatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE planeswalkers (
	planeswalkers_id INT PRIMARY KEY AUTO_INCREMENT,
	loyalty INT,
	FOREIGN KEY (planeswalkers_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE artists (
	artists_id INT PRIMARY KEY AUTO_INCREMENT,
	artist VARCHAR(32)
);

ALTER TABLE noncreatures
ADD FOREIGN KEY (extension) REFERENCES extensions(extensions_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (rarity) REFERENCES rarities(rarities_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (artist) REFERENCES artists(artists_id);

INSERT INTO extensions(extension) VALUES('Alpha (Limited Edition)');
INSERT INTO extensions(extension) VALUES('Beta (Limited Edition)');
INSERT INTO extensions(extension) VALUES('Unlimited Edition');
INSERT INTO extensions(extension) VALUES('Arabian Nights');
INSERT INTO extensions(extension) VALUES('Antiquities');
INSERT INTO extensions(extension) VALUES('Revised Edition');
INSERT INTO extensions(extension) VALUES('Legends');
INSERT INTO extensions(extension) VALUES('The Dark');
INSERT INTO extensions(extension) VALUES('Fallen Empires');
INSERT INTO extensions(extension) VALUES('Fourth Edition');
INSERT INTO extensions(extension) VALUES('Ice Age');
INSERT INTO extensions(extension) VALUES('Chronicles');
INSERT INTO extensions(extension) VALUES('Renaissance');
INSERT INTO extensions(extension) VALUES('Homelands');
INSERT INTO extensions(extension) VALUES('Alliances');
INSERT INTO extensions(extension) VALUES('Mirage');
INSERT INTO extensions(extension) VALUES('Visions');
INSERT INTO extensions(extension) VALUES('Fifth Edition');
INSERT INTO extensions(extension) VALUES('Weatherlight');
INSERT INTO extensions(extension) VALUES('Tempest');
INSERT INTO extensions(extension) VALUES('Stronghold');
INSERT INTO extensions(extension) VALUES('Exodus');
INSERT INTO extensions(extension) VALUES('Portal Second Age');
INSERT INTO extensions(extension) VALUES('Unglued');
INSERT INTO extensions(extension) VALUES('Urza''s Saga');
INSERT INTO extensions(extension) VALUES('Anthologies');
INSERT INTO extensions(extension) VALUES('Urza''s Legacy');
INSERT INTO extensions(extension) VALUES('Sixth Edition');
INSERT INTO extensions(extension) VALUES('Portal Three Kingdoms');
INSERT INTO extensions(extension) VALUES('Urza''s Destiny');
INSERT INTO extensions(extension) VALUES('Starter 1999');
INSERT INTO extensions(extension) VALUES('Mercadian Masques');
INSERT INTO extensions(extension) VALUES('Battle Royale');	
INSERT INTO extensions(extension) VALUES('Nemesis');
INSERT INTO extensions(extension) VALUES('Starter 2000');
INSERT INTO extensions(extension) VALUES('Prophecy');
INSERT INTO extensions(extension) VALUES('Invasion');
INSERT INTO extensions(extension) VALUES('Beatdown');	
INSERT INTO extensions(extension) VALUES('Planeshift');
INSERT INTO extensions(extension) VALUES('Seventh Edition');
INSERT INTO extensions(extension) VALUES('Apocalypse');
INSERT INTO extensions(extension) VALUES('Odyssey');
INSERT INTO extensions(extension) VALUES('Deckmasters 2001');
INSERT INTO extensions(extension) VALUES('Torment');
INSERT INTO extensions(extension) VALUES('Judgment');
INSERT INTO extensions(extension) VALUES('Onslaught');
INSERT INTO extensions(extension) VALUES('Legions');
INSERT INTO extensions(extension) VALUES('Scourge');
INSERT INTO extensions(extension) VALUES('Eighth Edition');
INSERT INTO extensions(extension) VALUES('Mirrodin');
INSERT INTO extensions(extension) VALUES('Darksteel');
INSERT INTO extensions(extension) VALUES('Fifth Dawn');
INSERT INTO extensions(extension) VALUES('Champions of Kamigawa');
INSERT INTO extensions(extension) VALUES('Unhinged');
INSERT INTO extensions(extension) VALUES('Betrayers of Kamigawa');
INSERT INTO extensions(extension) VALUES('Saviors of Kamigawa');
INSERT INTO extensions(extension) VALUES('Ninth Edition');
INSERT INTO extensions(extension) VALUES('Salvat 2005');
INSERT INTO extensions(extension) VALUES('Ravnica: City of Guilds');
INSERT INTO extensions(extension) VALUES('Guildpact');
INSERT INTO extensions(extension) VALUES('Dissension');
INSERT INTO extensions(extension) VALUES('Coldsnap');
INSERT INTO extensions(extension) VALUES('Time Spiral');
INSERT INTO extensions(extension) VALUES('Planar Chaos');
INSERT INTO extensions(extension) VALUES('Future Sight');
INSERT INTO extensions(extension) VALUES('Tenth Edition');
INSERT INTO extensions(extension) VALUES('Masters Edition');
INSERT INTO extensions(extension) VALUES('Lorwyn');
INSERT INTO extensions(extension) VALUES('Duel Decks: Elves vs. Goblins');
INSERT INTO extensions(extension) VALUES('Morningtide');
INSERT INTO extensions(extension) VALUES('Shadowmoor');
INSERT INTO extensions(extension) VALUES('Eventide');
INSERT INTO extensions(extension) VALUES('From the Vault: Dragons');
INSERT INTO extensions(extension) VALUES('Masters Edition II');
INSERT INTO extensions(extension) VALUES('Shards of Alara');
INSERT INTO extensions(extension) VALUES('Duel Decks: Jace vs. Chandra');
INSERT INTO extensions(extension) VALUES('Conflux');
INSERT INTO extensions(extension) VALUES('Duel Decks: Divine vs. Demonic');
INSERT INTO extensions(extension) VALUES('Alara Reborn');
INSERT INTO extensions(extension) VALUES('Magic 2010');
INSERT INTO extensions(extension) VALUES('Commander Theme Decks');
INSERT INTO extensions(extension) VALUES('From the Vault: Exiled');
INSERT INTO extensions(extension) VALUES('Planechase');
INSERT INTO extensions(extension) VALUES('Masters Edition III');
INSERT INTO extensions(extension) VALUES('Zendikar');
INSERT INTO extensions(extension) VALUES('Duel Decks: Garruk vs. Liliana');
INSERT INTO extensions(extension) VALUES('Premium Deck Series: Slivers');
INSERT INTO extensions(extension) VALUES('Worldwake');
INSERT INTO extensions(extension) VALUES('Duel Decks: Phyrexia vs. The Coalition');
INSERT INTO extensions(extension) VALUES('Rise of the Eldrazi');
INSERT INTO extensions(extension) VALUES('Deck Builder''s Toolkit');
INSERT INTO extensions(extension) VALUES('Duels of the Planeswalkers');
INSERT INTO extensions(extension) VALUES('Archenemy');
INSERT INTO extensions(extension) VALUES('Magic 2011');
INSERT INTO extensions(extension) VALUES('From the Vault: Relics');
INSERT INTO extensions(extension) VALUES('Duel Decks: Elspeth vs. Tezzeret');
INSERT INTO extensions(extension) VALUES('Scars of Mirrodin');
INSERT INTO extensions(extension) VALUES('Magic Online Deck Series');
INSERT INTO extensions(extension) VALUES('Premium Deck Series: Fire & Lightning');
INSERT INTO extensions(extension) VALUES('Momir Basic Event Deck');
INSERT INTO extensions(extension) VALUES('Salvat 2011');
INSERT INTO extensions(extension) VALUES('Masters Edition IV');
INSERT INTO extensions(extension) VALUES('Mirrodin Besieged');
INSERT INTO extensions(extension) VALUES('Deck Builder''s Toolkit 2011');
INSERT INTO extensions(extension) VALUES('Duel Decks: Knights vs. Dragons');
INSERT INTO extensions(extension) VALUES('New Phyrexia');
INSERT INTO extensions(extension) VALUES('Commander');
INSERT INTO extensions(extension) VALUES('Magic 2012');
INSERT INTO extensions(extension) VALUES('From the Vault: Legends');
INSERT INTO extensions(extension) VALUES('Duel Decks: Ajani vs. Nicol Bolas');
INSERT INTO extensions(extension) VALUES('Innistrad');
INSERT INTO extensions(extension) VALUES('Premium Deck Series: Graveborn');
INSERT INTO extensions(extension) VALUES('Dark Ascension');
INSERT INTO extensions(extension) VALUES('Duel Decks: Venser vs. Koth');
INSERT INTO extensions(extension) VALUES('Avacyn Restored');
INSERT INTO extensions(extension) VALUES('Planechase 2012');
INSERT INTO extensions(extension) VALUES('Magic 2013');
INSERT INTO extensions(extension) VALUES('From the Vault: Realms');
INSERT INTO extensions(extension) VALUES('Duel Decks: Izzet vs. Golgari');
INSERT INTO extensions(extension) VALUES('Return to Ravnica');
INSERT INTO extensions(extension) VALUES('Commander''s Arsenal');
INSERT INTO extensions(extension) VALUES('Duel Decks: Mirrodin Pure vs. New Phyrexia');
INSERT INTO extensions(extension) VALUES('Gatecrash');
INSERT INTO extensions(extension) VALUES('Duel Decks: Sorin vs. Tibalt');
INSERT INTO extensions(extension) VALUES('Dragon''s Maze');
INSERT INTO extensions(extension) VALUES('Modern Masters');
INSERT INTO extensions(extension) VALUES('Magic 2014');
INSERT INTO extensions(extension) VALUES('From the Vault: Twenty');
INSERT INTO extensions(extension) VALUES('Duel Decks: Heroes vs. Monsters');
INSERT INTO extensions(extension) VALUES('Theros');
INSERT INTO extensions(extension) VALUES('Commander 2013');
INSERT INTO extensions(extension) VALUES('Born of the Gods');
INSERT INTO extensions(extension) VALUES('Duel Decks: Jace vs. Vraska');
INSERT INTO extensions(extension) VALUES('Journey into Nyx');
INSERT INTO extensions(extension) VALUES('Modern Event Deck');
INSERT INTO extensions(extension) VALUES('Conspiracy');
INSERT INTO extensions(extension) VALUES('Vintage Masters');
INSERT INTO extensions(extension) VALUES('Magic 2015');
INSERT INTO extensions(extension) VALUES('From the Vault: Annihilation');
INSERT INTO extensions(extension) VALUES('Duel Decks: Speed vs. Cunning');
INSERT INTO extensions(extension) VALUES('Khans of Tarkir');
INSERT INTO extensions(extension) VALUES('Commander 2014');
INSERT INTO extensions(extension) VALUES('Duel Decks Anthology');
INSERT INTO extensions(extension) VALUES('Fate Reforged');
INSERT INTO extensions(extension) VALUES('Duel Decks: Elspeth vs. Kiora');
INSERT INTO extensions(extension) VALUES('Dragons of Tarkir');
INSERT INTO extensions(extension) VALUES('Tempest Remastered');
INSERT INTO extensions(extension) VALUES('Modern Masters 2015');
INSERT INTO extensions(extension) VALUES('Magic Origins');
INSERT INTO extensions(extension) VALUES('From the Vault: Angels');
INSERT INTO extensions(extension) VALUES('Duel Decks: Zendikar vs. Eldrazi');
INSERT INTO extensions(extension) VALUES('Battle for Zendikar');--

INSERT INTO extensions(extension) VALUES('Zendikar Expeditions');
INSERT INTO extensions(extension) VALUES('Commander 2015');
INSERT INTO extensions(extension) VALUES('Legendary Cube');
INSERT INTO extensions(extension) VALUES('Oath of the Gatewatch');
INSERT INTO extensions(extension) VALUES('Duel Decks: Blessed vs. Cursed');
INSERT INTO extensions(extension) VALUES('Welcome Deck 2016');
INSERT INTO extensions(extension) VALUES('Shadows over Innistrad');
INSERT INTO extensions(extension) VALUES('Eternal Masters');
INSERT INTO extensions(extension) VALUES('Eldritch Moon');
INSERT INTO extensions(extension) VALUES('From the Vault: Lore');
INSERT INTO extensions(extension) VALUES('Conspiracy: Take the Crown');
INSERT INTO extensions(extension) VALUES('Duel Decks: Nissa vs. Ob Nixilis');
INSERT INTO extensions(extension) VALUES('Kaladesh');--

INSERT INTO extensions(extension) VALUES('Kaladesh Inventions');
INSERT INTO extensions(extension) VALUES('Treasure Chests');
INSERT INTO extensions(extension) VALUES('Commander 2016');
INSERT INTO extensions(extension) VALUES('You Make the Cube');
INSERT INTO extensions(extension) VALUES('Planechase Anthology');
INSERT INTO extensions(extension) VALUES('Aether Revolt');
INSERT INTO extensions(extension) VALUES('Modern Masters 2017');
INSERT INTO extensions(extension) VALUES('Duel Decks: Mind vs. Might');
INSERT INTO extensions(extension) VALUES('Welcome Deck 2017');
INSERT INTO extensions(extension) VALUES('Amonkhet');--

INSERT INTO extensions(extension) VALUES('Amonkhet Invocations');
INSERT INTO extensions(extension) VALUES('Commander Anthology');
INSERT INTO extensions(extension) VALUES('Archenemy: Nicol Bolas');
INSERT INTO extensions(extension) VALUES('Hour of Devastation');
INSERT INTO extensions(extension) VALUES('Commander 2017');
INSERT INTO extensions(extension) VALUES('Ixalan');
INSERT INTO extensions(extension) VALUES('Duel Decks: Merfolk vs. Goblins');
INSERT INTO extensions(extension) VALUES('Iconic Masters');
INSERT INTO extensions(extension) VALUES('Explorers of Ixalan');
INSERT INTO extensions(extension) VALUES('From the Vault: Transform');
INSERT INTO extensions(extension) VALUES('Unstable');
INSERT INTO extensions(extension) VALUES('Rivals of Ixalan');
INSERT INTO extensions(extension) VALUES('Masters 25');
INSERT INTO extensions(extension) VALUES('Duel Decks: Elves vs. Inventors');
INSERT INTO extensions(extension) VALUES('Challenger Decks');
INSERT INTO extensions(extension) VALUES('Dominaria');
INSERT INTO extensions(extension) VALUES('Commander Anthology Volume II');
INSERT INTO extensions(extension) VALUES('Battlebond');	
INSERT INTO extensions(extension) VALUES('Signature Spellbook: Jace');
INSERT INTO extensions(extension) VALUES('Global Series: Jiang Yanggu & Mu Yanling');
INSERT INTO extensions(extension) VALUES('Core Set 2019');
INSERT INTO extensions(extension) VALUES('Commander 2018');
INSERT INTO extensions(extension) VALUES('Guilds of Ravnica Mythic Edition');	
INSERT INTO extensions(extension) VALUES('Guilds of Ravnica');
INSERT INTO extensions(extension) VALUES('Spellslinger Starter Kit');
INSERT INTO extensions(extension) VALUES('Guilds of Ravnica Guild Kits');
INSERT INTO extensions(extension) VALUES('Game Night');
INSERT INTO extensions(extension) VALUES('Ultimate Masters');
INSERT INTO extensions(extension) VALUES('Ravnica Allegiance Mythic Edition');	
INSERT INTO extensions(extension) VALUES('Ravnica Allegiance');
INSERT INTO extensions(extension) VALUES('Ravnica Allegiance Guild Kits');
INSERT INTO extensions(extension) VALUES('Challenger Decks 2019');
INSERT INTO extensions(extension) VALUES('War of the Spark Mythic Edition');	
INSERT INTO extensions(extension) VALUES('War of the Spark');
INSERT INTO extensions(extension) VALUES('Modern Horizons');
INSERT INTO extensions(extension) VALUES('Signature Spellbook: Gideon');
INSERT INTO extensions(extension) VALUES('Core Set 2020');
INSERT INTO extensions(extension) VALUES('Commander 2019');
INSERT INTO extensions(extension) VALUES('Throne of Eldraine');
INSERT INTO extensions(extension) VALUES('Ponies: The Galloping');
INSERT INTO extensions(extension) VALUES('Mystery Booster');
INSERT INTO extensions(extension) VALUES('Challenger Decks 2019 Japan');
INSERT INTO extensions(extension) VALUES('Game Night 2019');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series (December 2019)');
INSERT INTO extensions(extension) VALUES('Theros Beyond Death');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Year of the Rat');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Theros Stargazing');
INSERT INTO extensions(extension) VALUES('Unsanctioned');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: International Women''s Day');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Thalia - Beyond the Helvault');
INSERT INTO extensions(extension) VALUES('Mystery Booster Retail Edition');
INSERT INTO extensions(extension) VALUES('Challenger Decks 2020');
INSERT INTO extensions(extension) VALUES('Ikoria: Lair of Behemoths');
INSERT INTO extensions(extension) VALUES('Commander 2020');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: The Godzilla Lands');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Summer Superdrop');
INSERT INTO extensions(extension) VALUES('Secret Lair: Ultimate Edition');
INSERT INTO extensions(extension) VALUES('Signature Spellbook: Chandra');
INSERT INTO extensions(extension) VALUES('Core Set 2021');
INSERT INTO extensions(extension) VALUES('Jumpstart');
INSERT INTO extensions(extension) VALUES('Double Masters');
INSERT INTO extensions(extension) VALUES('Amonkhet Remastered');
INSERT INTO extensions(extension) VALUES('Arena Beginner Set');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Prime Slime');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Every Dog Has Its Day');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Happy Yargle Day!');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: April Fools');
INSERT INTO extensions(extension) VALUES('Zendikar Rising');
INSERT INTO extensions(extension) VALUES('Zendikar Rising Expeditions');
INSERT INTO extensions(extension) VALUES('Zendikar Rising Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Showcase: Zendikar Revisited');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: The Walking Dead');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Extra Life 2020');
INSERT INTO extensions(extension) VALUES('Kaladesh Remastered');
INSERT INTO extensions(extension) VALUES('Commander Legends');
INSERT INTO extensions(extension) VALUES('Commander Legends Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Secretversary');
INSERT INTO extensions(extension) VALUES('Commander Collection: Green');
INSERT INTO extensions(extension) VALUES('Kaldheim');
INSERT INTO extensions(extension) VALUES('Kaldheim Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Smitten');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Black is Magic');
INSERT INTO extensions(extension) VALUES('Time Spiral Remastered');
INSERT INTO extensions(extension) VALUES('Challenger Decks 2021');
INSERT INTO extensions(extension) VALUES('Strixhaven: School of Mages');
INSERT INTO extensions(extension) VALUES('Mystical Archive');
INSERT INTO extensions(extension) VALUES('Commander 2021');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Dr. Lair''s Secretorium Superdrop');
INSERT INTO extensions(extension) VALUES('Secret Lair: Ultimate Edition 2');
INSERT INTO extensions(extension) VALUES('Modern Horizons 2');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: All-Natural, Totally Refreshing Superdrop');
INSERT INTO extensions(extension) VALUES('Dungeons & Dragons: Adventures in the Forgotten Realms');
INSERT INTO extensions(extension) VALUES('Dungeons & Dragons: Adventures in the Forgotten Realms Commander Decks');
INSERT INTO extensions(extension) VALUES('Arena Starter Kit');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Out of Time Superdrop');
INSERT INTO extensions(extension) VALUES('Jumpstart: Historic Horizons');

INSERT INTO extensions(extension) VALUES('Innistrad: Midnight Hunt');
INSERT INTO extensions(extension) VALUES('Innistrad: Midnight Hunt Commander Decks');
INSERT INTO extensions(extension) VALUES('Pioneer Challenger Decks 2021');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: October Superdrop');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Purrfection');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Extra Life 2021');
INSERT INTO extensions(extension) VALUES('Innistrad: Crimson Vow');
INSERT INTO extensions(extension) VALUES('Innistrad: Crimson Vow Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: MSCHF');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Secretversary 2021');
INSERT INTO extensions(extension) VALUES('Alchemy: Innistrad');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: The Astrology Lands');
INSERT INTO extensions(extension) VALUES('Commander Collection: Black');
INSERT INTO extensions(extension) VALUES('Innistrad: Double Feature');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: February Superdrop 2022');
INSERT INTO extensions(extension) VALUES('Kamigawa: Neon Dynasty');
INSERT INTO extensions(extension) VALUES('Kamigawa: Neon Dynasty Commander Decks');
INSERT INTO extensions(extension) VALUES('Alchemy: Kamigawa');
INSERT INTO extensions(extension) VALUES('Challenger Decks 2022');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: April Superdrop 2022');
INSERT INTO extensions(extension) VALUES('Streets of New Capenna');
INSERT INTO extensions(extension) VALUES('Streets of New Capenna Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Pride Across the Multiverse');
INSERT INTO extensions(extension) VALUES('Alchemy: New Capenna');
INSERT INTO extensions(extension) VALUES('2022 Starter Kit');
INSERT INTO extensions(extension) VALUES('Commander Legends: Battle for Baldur''s Gate');
INSERT INTO extensions(extension) VALUES('Commander Legends: Battle for Baldur''s Gate Commander Decks');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Here Be Dragons');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: June Superdrop 2022');
INSERT INTO extensions(extension) VALUES('Alchemy Horizons: Baldur''s Gate');
INSERT INTO extensions(extension) VALUES('Double Masters 2022');
INSERT INTO extensions(extension) VALUES('Secret Lair Drop Series: Fortnite');
INSERT INTO extensions(extension) VALUES('Dominaria United');
INSERT INTO extensions(extension) VALUES('Dominaria United Commander Decks');
INSERT INTO extensions(extension) VALUES('Unfinity');
INSERT INTO extensions(extension) VALUES('Warhammer 40,000 Commander Decks');
INSERT INTO extensions(extension) VALUES('Game Night Free-for-All');
INSERT INTO extensions(extension) VALUES('Pioneer Challenger Decks 2022');
INSERT INTO extensions(extension) VALUES('The Brothers'' War');
INSERT INTO extensions(extension) VALUES('The Brothers'' War Commander Decks');
INSERT INTO extensions(extension) VALUES('Jumpstart 2022');
INSERT INTO extensions(extension) VALUES('Dominaria Remastered');
INSERT INTO extensions(extension) VALUES('Phyrexia: All Will Be One');
INSERT INTO extensions(extension) VALUES('Phyrexia: All Will Be One Commander Decks');
INSERT INTO extensions(extension) VALUES('The Lord of the Rings: Tales of Middle-Earth');
INSERT INTO extensions(extension) VALUES('The Lord of the Rings: Tales of Middle-Earth Commander Decks');
INSERT INTO extensions(extension) VALUES('March of the Machine');
INSERT INTO extensions(extension) VALUES('March of the Machine/Commander decks');
INSERT INTO extensions(extension) VALUES('March of the Machine: The Aftermath');
INSERT INTO extensions(extension) VALUES('Wilds of Eldraine');
INSERT INTO extensions(extension) VALUES('The Lost Caverns of Ixalan');
INSERT INTO extensions(extension) VALUES('Doctor Who Commander Decks');

CREATE TABLE shapes(
	shapes_id INT PRIMARY KEY AUTO_INCREMENT,
	shape VARCHAR(24)
);

CREATE TABLE collections (
	collections_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shape INT,
	worth DECIMAL(5, 2),
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);


INSERT INTO rarities(rarity) VALUES('Common');
INSERT INTO rarities(rarity) VALUES('Uncommon');
INSERT INTO rarities(rarity) VALUES('Rare');
INSERT INTO rarities(rarity) VALUES('Timeshifted Rare');
INSERT INTO rarities(rarity) VALUES('Mythic Rare');

INSERT INTO shapes(shape) VALUES('Near Mint');
INSERT INTO shapes(shape) VALUES('Lightly Played');
INSERT INTO shapes(shape) VALUES('Moderately Played');
INSERT INTO shapes(shape) VALUES('Heavily Played');
INSERT INTO shapes(shape) VALUES('Damaged');
INSERT INTO shapes(shape) VALUES('Foil Near Mint');
INSERT INTO shapes(shape) VALUES('Foil Lightly Played');
INSERT INTO shapes(shape) VALUES('Foil Moderately Played');
INSERT INTO shapes(shape) VALUES('Foil Heavily Played');
INSERT INTO shapes(shape) VALUES('Foil Damaged');



INSERT INTO artists(artist) VALUES('Tom Wänerstrand');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, kind, extension, rarity, rules_text, flavor_text, artist, collector_number) VALUES('Arcum''s Weathervane', '2', 2, 'Artifact', 11, 2, '2, TAP:  Target snow land is no longer snow.
2, TAP:  Target nonsnow basic land becomes snow.', NULL, 1, 310); 
INSERT INTO collections(noncreatures_id, shape, worth) VALUES(1, 2, 0.25);

INSERT INTO artists(artist) VALUES('Jeff A. Menges');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, kind, extension, rarity, rules_text, flavor_text, artist, collector_number) VALUES('Iceberg', 'XUU', 2, 'Enchantment', 11, 2, 'Iceberg comes into play with X ice counters on it.
3:  Put an ice counter on Iceberg.
Remove an ice counter from Iceberg: Add 1 to your mana pool.', NULL, 2, 73); 
INSERT INTO collections(noncreatures_id, shape, worth) VALUES(2, 3, 0.49);


SHOW TABLES;
DROP TABLE collections;
DROP TABLE planeswalkers;
DROP TABLE creatures;
DROP TABLE noncreatures;
DROP TABLE artists;
DROP TABLE extensions;
DROP TABLE flavors;
DROP TABLE rarities;
DROP TABLE rules;
DROP TABLE shapes;

SELECT noncreatures.noncreatures_id AS 'noncreatures id', noncreatures.title AS 'name', noncreatures.mana_cost AS 'mana cost', noncreatures.converted_mana_cost AS 'converted mana cost', noncreatures.kind AS 'type', noncreatures.extension AS 'extension', noncreatures.rarity AS 'rarity', noncreatures.rules_text AS 'rules text', noncreatures.flavor_text AS 'flavor_text', creatures.punch AS 'power', creatures.toughness AS 'toughness', planeswalkers.loyalty AS 'loyalty', noncreatures.artist AS 'artist', noncreatures.collector_number AS 'collector number'
FROM noncreatures
JOIN creatures
ON noncreatures.noncreatures_id = creatures.creatures_id
JOIN planeswalkers
ON noncreatures.noncreatures_id = planeswalkers.planeswalkers_id
JOIN extensions
ON noncreatures.extension = extensions.extensions_id
JOIN rarities
ON noncreatures.rarity = rarities.rarities_id
JOIN artists
on noncreatures.artist = artists.artists_id;

ALTER TABLE collections
MODIFY COLUMN worth DECIMAL(5, 2);


SELECT collections.collections_id, shapes.shape, collections.worth, noncreatures.title, extensions.extension, rarities.rarity, artists.artist
FROM collections
JOIN shapes
ON collections.shape = shapes.shapes_id
JOIN noncreatures
ON collections.noncreatures_id = noncreatures.noncreatures_id
JOIN extensions
ON noncreatures.extension = extensions.extensions_id
JOIN rarities
ON noncreatures.rarity = rarities.rarities_id
JOIN artists
ON noncreatures.artist = artists.artists_id;

SELECT *
FROM noncreatures;