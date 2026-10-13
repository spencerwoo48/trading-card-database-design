CREATE TABLE noncreatures(
	noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32) UNIQUE,
	mana_cost VARCHAR(8),
	converted_mana_cost INT,
	extension INT,
	rarity INT,
	artist INT,
	collector_number INT	
	);
CREATE TABLE kinds(
	kinds_id INT PRIMARY KEY AUTO_INCREMENT,
	kind VARCHAR(16) UNIQUE
	);
CREATE TABLE noncreatureskinds(
	noncreatures_id INT,
	kinds_id INT,
	PRIMARY KEY (noncreatures_id, kinds_id),
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY (kinds_id) REFERENCES kinds(kinds_id)
	);
CREATE TABLE extensions(
	extensions_id INT PRIMARY KEY AUTO_INCREMENT,
	extension VARCHAR(72) UNIQUE
	);
CREATE TABLE rarities(
	rarities_id INT PRIMARY KEY AUTO_INCREMENT,
	rarity VARCHAR(16) UNIQUE
	);
CREATE TABLE rules_texts(
	noncreatures_id INT PRIMARY KEY,
	rules_text VARCHAR(664),
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
	);
CREATE TABLE flavor_texts(
	noncreatures_id INT PRIMARY KEY,
	flavor_text VARCHAR(232),
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
	);
CREATE TABLE creatures(
	noncreatures_id INT PRIMARY KEY,
	punch INT,
	toughness INT,
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
	);
CREATE TABLE planeswalkers(
	noncreatures_id INT PRIMARY KEY,
	loyalty INT,
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
	);
CREATE TABLE artists(
	artists_id INT PRIMARY KEY AUTO_INCREMENT,
	artist VARCHAR(32) UNIQUE
	);

ALTER TABLE noncreatures
ADD FOREIGN KEY (extension)
REFERENCES extensions(extensions_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (rarity)
REFERENCES rarities(rarities_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (artist)
REFERENCES artists(artists_id);

CREATE TABLE collections (
	collections_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shape INT,
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
	);
CREATE TABLE shapes (
	shapes_id INT PRIMARY KEY AUTO_INCREMENT,
	shape VARCHAR(24) UNIQUE
	);

ALTER TABLE collections
ADD FOREIGN KEY (shape)
REFERENCES shapes(shapes_id);

SHOW TABLES;
DROP TABLE noncreatureskinds;
DROP TABLE creatures;
DROP TABLE planeswalkers;
DROP TABLE collections;
DROP TABLE rules_texts;
DROP TABLE flavor_texts;
DROP TABLE noncreatures;
DROP TABLE kinds;
DROP TABLE extensions;
DROP TABLE rarities;
DROP TABLE artists;
DROP TABLE shapes;

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
--supertypes
INSERT INTO kinds(kind) VALUES('Basic');
INSERT INTO kinds(kind) VALUES('Legendary');
INSERT INTO kinds(kind) VALUES('Ongoing');
INSERT INTO kinds(kind) VALUES('Snow');
INSERT INTO kinds(kind) VALUES('World');
INSERT INTO kinds(kind) VALUES('Elite');
INSERT INTO kinds(kind) VALUES('Host');
--card types
INSERT INTO kinds(kind) VALUES('Land');
INSERT INTO kinds(kind) VALUES('Creature');
INSERT INTO kinds(kind) VALUES('Artifact');
INSERT INTO kinds(kind) VALUES('Enchantment');
INSERT INTO kinds(kind) VALUES('Planeswalker');
INSERT INTO kinds(kind) VALUES('Instant');
INSERT INTO kinds(kind) VALUES('Sorcery');
--basic land types
INSERT INTO kinds(kind) VALUES('Plains');
INSERT INTO kinds(kind) VALUES('Island');
INSERT INTO kinds(kind) VALUES('Swamp');
INSERT INTO kinds(kind) VALUES('Mountain');
INSERT INTO kinds(kind) VALUES('Forest');
--other land types
INSERT INTO kinds(kind) VALUES('Desert');
INSERT INTO kinds(kind) VALUES('Gate');
INSERT INTO kinds(kind) VALUES('Lair');
INSERT INTO kinds(kind) VALUES('Locus');
INSERT INTO kinds(kind) VALUES('Urza''s');
INSERT INTO kinds(kind) VALUES('Mine');
INSERT INTO kinds(kind) VALUES('Power-Plant');
INSERT INTO kinds(kind) VALUES('Tower');
--creature types
INSERT INTO kinds(kind) VALUES('Advisor');
INSERT INTO kinds(kind) VALUES('Aetherborn');
INSERT INTO kinds(kind) VALUES('Ally');
INSERT INTO kinds(kind) VALUES('Angel');
INSERT INTO kinds(kind) VALUES('Antelope');
INSERT INTO kinds(kind) VALUES('Ape');
INSERT INTO kinds(kind) VALUES('Archer');
INSERT INTO kinds(kind) VALUES('Archon');
INSERT INTO kinds(kind) VALUES('Army');
INSERT INTO kinds(kind) VALUES('Artificer');
INSERT INTO kinds(kind) VALUES('Assassin');
INSERT INTO kinds(kind) VALUES('Assembly-Worker');
INSERT INTO kinds(kind) VALUES('Atog');
INSERT INTO kinds(kind) VALUES('Aurochs');
INSERT INTO kinds(kind) VALUES('Avatar');
INSERT INTO kinds(kind) VALUES('Azra');
INSERT INTO kinds(kind) VALUES('Badger');
INSERT INTO kinds(kind) VALUES('Barbarian');
INSERT INTO kinds(kind) VALUES('Bard');
INSERT INTO kinds(kind) VALUES('Basilisk');
INSERT INTO kinds(kind) VALUES('Bat');
INSERT INTO kinds(kind) VALUES('Bear');
INSERT INTO kinds(kind) VALUES('Beast');
INSERT INTO kinds(kind) VALUES('Beeble');
INSERT INTO kinds(kind) VALUES('Beholder');
INSERT INTO kinds(kind) VALUES('Berserker');
INSERT INTO kinds(kind) VALUES('Bird');
INSERT INTO kinds(kind) VALUES('Blinkmoth');
INSERT INTO kinds(kind) VALUES('Boar');
INSERT INTO kinds(kind) VALUES('Bringer');
INSERT INTO kinds(kind) VALUES('Brushwagg');
INSERT INTO kinds(kind) VALUES('Camarid');
INSERT INTO kinds(kind) VALUES('Camel');
INSERT INTO kinds(kind) VALUES('Caribou');
INSERT INTO kinds(kind) VALUES('Carrier');
INSERT INTO kinds(kind) VALUES('Cat');
INSERT INTO kinds(kind) VALUES('Centaur');
INSERT INTO kinds(kind) VALUES('Cephalid');
INSERT INTO kinds(kind) VALUES('Chimera');
INSERT INTO kinds(kind) VALUES('Citizen');
INSERT INTO kinds(kind) VALUES('Cleric');
INSERT INTO kinds(kind) VALUES('Cockatrice');
INSERT INTO kinds(kind) VALUES('Construct');
INSERT INTO kinds(kind) VALUES('Coward');
INSERT INTO kinds(kind) VALUES('Crab');
INSERT INTO kinds(kind) VALUES('Crocodile');
INSERT INTO kinds(kind) VALUES('Cyclops');
INSERT INTO kinds(kind) VALUES('Dauthi');
INSERT INTO kinds(kind) VALUES('Demigod');
INSERT INTO kinds(kind) VALUES('Demon');
INSERT INTO kinds(kind) VALUES('Deserter');
INSERT INTO kinds(kind) VALUES('Devil');
INSERT INTO kinds(kind) VALUES('Dinosaur');
INSERT INTO kinds(kind) VALUES('Djinn');
INSERT INTO kinds(kind) VALUES('Dog');
INSERT INTO kinds(kind) VALUES('Dragon');
INSERT INTO kinds(kind) VALUES('Drake');
INSERT INTO kinds(kind) VALUES('Dreadnought');
INSERT INTO kinds(kind) VALUES('Drone');
INSERT INTO kinds(kind) VALUES('Druid');
INSERT INTO kinds(kind) VALUES('Dryad');
INSERT INTO kinds(kind) VALUES('Dwarf');
INSERT INTO kinds(kind) VALUES('Efreet');
INSERT INTO kinds(kind) VALUES('Egg');
INSERT INTO kinds(kind) VALUES('Elder');
INSERT INTO kinds(kind) VALUES('Eldrazi');
INSERT INTO kinds(kind) VALUES('Elemental');
INSERT INTO kinds(kind) VALUES('Elephant');
INSERT INTO kinds(kind) VALUES('Elf');
INSERT INTO kinds(kind) VALUES('Elk');
INSERT INTO kinds(kind) VALUES('Eye');
INSERT INTO kinds(kind) VALUES('Faerie');
INSERT INTO kinds(kind) VALUES('Ferret');
INSERT INTO kinds(kind) VALUES('Fish');
INSERT INTO kinds(kind) VALUES('Flagbearer');
INSERT INTO kinds(kind) VALUES('Fox');
INSERT INTO kinds(kind) VALUES('Fractal');
INSERT INTO kinds(kind) VALUES('Frog');
INSERT INTO kinds(kind) VALUES('Fungus');
INSERT INTO kinds(kind) VALUES('Gargoyle');
INSERT INTO kinds(kind) VALUES('Germ');
INSERT INTO kinds(kind) VALUES('Giant');
INSERT INTO kinds(kind) VALUES('Gith');
INSERT INTO kinds(kind) VALUES('Gnoll');
INSERT INTO kinds(kind) VALUES('Gnome');
INSERT INTO kinds(kind) VALUES('Goat');
INSERT INTO kinds(kind) VALUES('Goblin');
INSERT INTO kinds(kind) VALUES('God');
INSERT INTO kinds(kind) VALUES('Golem');
INSERT INTO kinds(kind) VALUES('Gorgon');
INSERT INTO kinds(kind) VALUES('Graveborn');
INSERT INTO kinds(kind) VALUES('Gremlin');
INSERT INTO kinds(kind) VALUES('Griffin');
INSERT INTO kinds(kind) VALUES('Hag');
INSERT INTO kinds(kind) VALUES('Halfling');
INSERT INTO kinds(kind) VALUES('Hamster');
INSERT INTO kinds(kind) VALUES('Harpy');
INSERT INTO kinds(kind) VALUES('Hellion');
INSERT INTO kinds(kind) VALUES('Hippo');
INSERT INTO kinds(kind) VALUES('Hippogriff');
INSERT INTO kinds(kind) VALUES('Homarid');
INSERT INTO kinds(kind) VALUES('Homunculus');
INSERT INTO kinds(kind) VALUES('Horror');
INSERT INTO kinds(kind) VALUES('Horse');
INSERT INTO kinds(kind) VALUES('Human');
INSERT INTO kinds(kind) VALUES('Hydra');
INSERT INTO kinds(kind) VALUES('Hyena');
INSERT INTO kinds(kind) VALUES('Illusion');
INSERT INTO kinds(kind) VALUES('Imp');
INSERT INTO kinds(kind) VALUES('Incarnation');
INSERT INTO kinds(kind) VALUES('Inkling');
INSERT INTO kinds(kind) VALUES('Insect');
INSERT INTO kinds(kind) VALUES('Jackal');
INSERT INTO kinds(kind) VALUES('Jellyfish');
INSERT INTO kinds(kind) VALUES('Juggernaut');
INSERT INTO kinds(kind) VALUES('Kavu');
INSERT INTO kinds(kind) VALUES('Kirin');
INSERT INTO kinds(kind) VALUES('Kithkin');
INSERT INTO kinds(kind) VALUES('Knight');
INSERT INTO kinds(kind) VALUES('Kobold');
INSERT INTO kinds(kind) VALUES('Kor');
INSERT INTO kinds(kind) VALUES('Kraken');
INSERT INTO kinds(kind) VALUES('Lamia');
INSERT INTO kinds(kind) VALUES('Lammasu');
INSERT INTO kinds(kind) VALUES('Leech');
INSERT INTO kinds(kind) VALUES('Leviathan');
INSERT INTO kinds(kind) VALUES('Lhurgoyf');
INSERT INTO kinds(kind) VALUES('Licid');
INSERT INTO kinds(kind) VALUES('Lizard');
INSERT INTO kinds(kind) VALUES('Manticore');
INSERT INTO kinds(kind) VALUES('Masticore');
INSERT INTO kinds(kind) VALUES('Mercenary');
INSERT INTO kinds(kind) VALUES('Merfolk');
INSERT INTO kinds(kind) VALUES('Metathran');
INSERT INTO kinds(kind) VALUES('Minion');
INSERT INTO kinds(kind) VALUES('Minotaur');
INSERT INTO kinds(kind) VALUES('Mole');
INSERT INTO kinds(kind) VALUES('Monger');
INSERT INTO kinds(kind) VALUES('Mongoose');
INSERT INTO kinds(kind) VALUES('Monk');
INSERT INTO kinds(kind) VALUES('Monkey');
INSERT INTO kinds(kind) VALUES('Moonfolk');
INSERT INTO kinds(kind) VALUES('Mouse');
INSERT INTO kinds(kind) VALUES('Mutant');
INSERT INTO kinds(kind) VALUES('Myr');
INSERT INTO kinds(kind) VALUES('Mystic');
INSERT INTO kinds(kind) VALUES('Naga');
INSERT INTO kinds(kind) VALUES('Nautilus');
INSERT INTO kinds(kind) VALUES('Nephilim');
INSERT INTO kinds(kind) VALUES('Nightmare');
INSERT INTO kinds(kind) VALUES('Nightstalker');
INSERT INTO kinds(kind) VALUES('Ninja');
INSERT INTO kinds(kind) VALUES('Noble');
INSERT INTO kinds(kind) VALUES('Noggle');
INSERT INTO kinds(kind) VALUES('Nomad');
INSERT INTO kinds(kind) VALUES('Nymph');
INSERT INTO kinds(kind) VALUES('Octopus');
INSERT INTO kinds(kind) VALUES('Ogre');
INSERT INTO kinds(kind) VALUES('Ooze');
INSERT INTO kinds(kind) VALUES('Orb');
INSERT INTO kinds(kind) VALUES('Orc');
INSERT INTO kinds(kind) VALUES('Orgg');
INSERT INTO kinds(kind) VALUES('Otter');
INSERT INTO kinds(kind) VALUES('Ouphe');
INSERT INTO kinds(kind) VALUES('Ox');
INSERT INTO kinds(kind) VALUES('Oyster');
INSERT INTO kinds(kind) VALUES('Pangolin');
INSERT INTO kinds(kind) VALUES('Peasant');
INSERT INTO kinds(kind) VALUES('Pegasus');
INSERT INTO kinds(kind) VALUES('Pentavite');
INSERT INTO kinds(kind) VALUES('Pest');
INSERT INTO kinds(kind) VALUES('Phelddagrif');
INSERT INTO kinds(kind) VALUES('Phoenix');
INSERT INTO kinds(kind) VALUES('Phyrexian');
INSERT INTO kinds(kind) VALUES('Pilot');
INSERT INTO kinds(kind) VALUES('Pincher');
INSERT INTO kinds(kind) VALUES('Pirate');
INSERT INTO kinds(kind) VALUES('Plant');
INSERT INTO kinds(kind) VALUES('Praetor');
INSERT INTO kinds(kind) VALUES('Prism');
INSERT INTO kinds(kind) VALUES('Processor');
INSERT INTO kinds(kind) VALUES('Raccoon');
INSERT INTO kinds(kind) VALUES('Rabbit');
INSERT INTO kinds(kind) VALUES('Ranger');
INSERT INTO kinds(kind) VALUES('Rat');
INSERT INTO kinds(kind) VALUES('Rebel');
INSERT INTO kinds(kind) VALUES('Reflection');
INSERT INTO kinds(kind) VALUES('Rhino');
INSERT INTO kinds(kind) VALUES('Rigger');
INSERT INTO kinds(kind) VALUES('Rogue');
INSERT INTO kinds(kind) VALUES('Sable');
INSERT INTO kinds(kind) VALUES('Salamander');
INSERT INTO kinds(kind) VALUES('Samurai');
INSERT INTO kinds(kind) VALUES('Sand');
INSERT INTO kinds(kind) VALUES('Saproling');
INSERT INTO kinds(kind) VALUES('Satyr');
INSERT INTO kinds(kind) VALUES('Scarecrow');
INSERT INTO kinds(kind) VALUES('Scion');
INSERT INTO kinds(kind) VALUES('Scorpion');
INSERT INTO kinds(kind) VALUES('Scout');
INSERT INTO kinds(kind) VALUES('Sculpture');
INSERT INTO kinds(kind) VALUES('Serf');
INSERT INTO kinds(kind) VALUES('Serpent');
INSERT INTO kinds(kind) VALUES('Servo');
INSERT INTO kinds(kind) VALUES('Shade');
INSERT INTO kinds(kind) VALUES('Shaman');
INSERT INTO kinds(kind) VALUES('Shapeshifter');
INSERT INTO kinds(kind) VALUES('Shark');
INSERT INTO kinds(kind) VALUES('Sheep');
INSERT INTO kinds(kind) VALUES('Siren');
INSERT INTO kinds(kind) VALUES('Skeleton');
INSERT INTO kinds(kind) VALUES('Slith');
INSERT INTO kinds(kind) VALUES('Sliver');
INSERT INTO kinds(kind) VALUES('Slug');
INSERT INTO kinds(kind) VALUES('Snake');
INSERT INTO kinds(kind) VALUES('Soldier');
INSERT INTO kinds(kind) VALUES('Soltari');
INSERT INTO kinds(kind) VALUES('Spawn');
INSERT INTO kinds(kind) VALUES('Specter');
INSERT INTO kinds(kind) VALUES('Spellshaper');
INSERT INTO kinds(kind) VALUES('Sphinx');
INSERT INTO kinds(kind) VALUES('Spider');
INSERT INTO kinds(kind) VALUES('Spike');
INSERT INTO kinds(kind) VALUES('Spirit');
INSERT INTO kinds(kind) VALUES('Splinter');
INSERT INTO kinds(kind) VALUES('Sponge');
INSERT INTO kinds(kind) VALUES('Squid');
INSERT INTO kinds(kind) VALUES('Squirrel');
INSERT INTO kinds(kind) VALUES('Starfish');
INSERT INTO kinds(kind) VALUES('Surrakar');
INSERT INTO kinds(kind) VALUES('Survivor');
INSERT INTO kinds(kind) VALUES('Tentacle');
INSERT INTO kinds(kind) VALUES('Tetravite');
INSERT INTO kinds(kind) VALUES('Thalakos');
INSERT INTO kinds(kind) VALUES('Thopter');
INSERT INTO kinds(kind) VALUES('Thrull');
INSERT INTO kinds(kind) VALUES('Tiefling');
INSERT INTO kinds(kind) VALUES('Treefolk');
INSERT INTO kinds(kind) VALUES('Trilobite');
INSERT INTO kinds(kind) VALUES('Triskelavite');
INSERT INTO kinds(kind) VALUES('Troll');
INSERT INTO kinds(kind) VALUES('Turtle');
INSERT INTO kinds(kind) VALUES('Unicorn');
INSERT INTO kinds(kind) VALUES('Vampire');
INSERT INTO kinds(kind) VALUES('Vedalken');
INSERT INTO kinds(kind) VALUES('Viashino');
INSERT INTO kinds(kind) VALUES('Volver');
INSERT INTO kinds(kind) VALUES('Wall');
INSERT INTO kinds(kind) VALUES('Walrus');
INSERT INTO kinds(kind) VALUES('Warlock');
INSERT INTO kinds(kind) VALUES('Warrior');
INSERT INTO kinds(kind) VALUES('Weird†');
INSERT INTO kinds(kind) VALUES('Werewolf');
INSERT INTO kinds(kind) VALUES('Whale');
INSERT INTO kinds(kind) VALUES('Wizard');
INSERT INTO kinds(kind) VALUES('Wolf');
INSERT INTO kinds(kind) VALUES('Wolverine');
INSERT INTO kinds(kind) VALUES('Wombat');
INSERT INTO kinds(kind) VALUES('Worm');
INSERT INTO kinds(kind) VALUES('Wraith');
INSERT INTO kinds(kind) VALUES('Wurm');
INSERT INTO kinds(kind) VALUES('Yeti');
INSERT INTO kinds(kind) VALUES('Zombie');
INSERT INTO kinds(kind) VALUES('Zubera');
--artifact types
INSERT INTO kinds(kind) VALUES('Blood');
INSERT INTO kinds(kind) VALUES('Clue');
INSERT INTO kinds(kind) VALUES('Contraption');
INSERT INTO kinds(kind) VALUES('Equipment');
INSERT INTO kinds(kind) VALUES('Food');
INSERT INTO kinds(kind) VALUES('Fortification');
INSERT INTO kinds(kind) VALUES('Gold');
INSERT INTO kinds(kind) VALUES('Key');
INSERT INTO kinds(kind) VALUES('Powerstone');
INSERT INTO kinds(kind) VALUES('Treasure');
INSERT INTO kinds(kind) VALUES('Vehicle');
--enchantment types
INSERT INTO kinds(kind) VALUES('Aura');
INSERT INTO kinds(kind) VALUES('Cartouche');
INSERT INTO kinds(kind) VALUES('Curse');
INSERT INTO kinds(kind) VALUES('Rune');
INSERT INTO kinds(kind) VALUES('Background');
INSERT INTO kinds(kind) VALUES('Class');
INSERT INTO kinds(kind) VALUES('Saga');
INSERT INTO kinds(kind) VALUES('Shard');
INSERT INTO kinds(kind) VALUES('Shrine');
--planeswalker types
INSERT INTO kinds(kind) VALUES('Ajani');
INSERT INTO kinds(kind) VALUES('Aminatou');
INSERT INTO kinds(kind) VALUES('Angrath');
INSERT INTO kinds(kind) VALUES('Arlinn');
INSERT INTO kinds(kind) VALUES('Ashiok');
INSERT INTO kinds(kind) VALUES('Bahamut');
INSERT INTO kinds(kind) VALUES('Basri');
INSERT INTO kinds(kind) VALUES('Bolas');
INSERT INTO kinds(kind) VALUES('Calix');
INSERT INTO kinds(kind) VALUES('Chandra');
INSERT INTO kinds(kind) VALUES('Dack');
INSERT INTO kinds(kind) VALUES('Dakkon');
INSERT INTO kinds(kind) VALUES('Daretti');
INSERT INTO kinds(kind) VALUES('Davriel');
INSERT INTO kinds(kind) VALUES('Dihada');
INSERT INTO kinds(kind) VALUES('Domri');
INSERT INTO kinds(kind) VALUES('Dovin');
INSERT INTO kinds(kind) VALUES('Ellywick');
INSERT INTO kinds(kind) VALUES('Elminster');
INSERT INTO kinds(kind) VALUES('Elspeth');
INSERT INTO kinds(kind) VALUES('Estrid');
INSERT INTO kinds(kind) VALUES('Freyalise');
INSERT INTO kinds(kind) VALUES('Garruk');
INSERT INTO kinds(kind) VALUES('Gideon');
INSERT INTO kinds(kind) VALUES('Grist');
INSERT INTO kinds(kind) VALUES('Huatli');
INSERT INTO kinds(kind) VALUES('Jace');
INSERT INTO kinds(kind) VALUES('Jaya');
INSERT INTO kinds(kind) VALUES('Jeska');
INSERT INTO kinds(kind) VALUES('Kaito');
INSERT INTO kinds(kind) VALUES('Karn');
INSERT INTO kinds(kind) VALUES('Kasmina');
INSERT INTO kinds(kind) VALUES('Kaya');
INSERT INTO kinds(kind) VALUES('Kiora');
INSERT INTO kinds(kind) VALUES('Koth');
INSERT INTO kinds(kind) VALUES('Liliana');
INSERT INTO kinds(kind) VALUES('Lolth');
INSERT INTO kinds(kind) VALUES('Lukka');
INSERT INTO kinds(kind) VALUES('Minsc');
INSERT INTO kinds(kind) VALUES('Mordenkainen');
INSERT INTO kinds(kind) VALUES('Nahiri');
INSERT INTO kinds(kind) VALUES('Narset');
INSERT INTO kinds(kind) VALUES('Niko');
INSERT INTO kinds(kind) VALUES('Nissa');
INSERT INTO kinds(kind) VALUES('Nixilis');
INSERT INTO kinds(kind) VALUES('Oko');
INSERT INTO kinds(kind) VALUES('Ral');
INSERT INTO kinds(kind) VALUES('Rowan');
INSERT INTO kinds(kind) VALUES('Saheeli');
INSERT INTO kinds(kind) VALUES('Samut');
INSERT INTO kinds(kind) VALUES('Sarkhan');
INSERT INTO kinds(kind) VALUES('Serra');
INSERT INTO kinds(kind) VALUES('Sorin');
INSERT INTO kinds(kind) VALUES('Szat');
INSERT INTO kinds(kind) VALUES('Tamiyo');
INSERT INTO kinds(kind) VALUES('Tasha');
INSERT INTO kinds(kind) VALUES('Teferi');
INSERT INTO kinds(kind) VALUES('Teyo');
INSERT INTO kinds(kind) VALUES('Tezzeret');
INSERT INTO kinds(kind) VALUES('Tibalt');
INSERT INTO kinds(kind) VALUES('Tyvar');
INSERT INTO kinds(kind) VALUES('Ugin');
INSERT INTO kinds(kind) VALUES('Venser');
INSERT INTO kinds(kind) VALUES('Vivien');
INSERT INTO kinds(kind) VALUES('Vraska');
INSERT INTO kinds(kind) VALUES('Will');
INSERT INTO kinds(kind) VALUES('Windgrace');
INSERT INTO kinds(kind) VALUES('Wrenn');
INSERT INTO kinds(kind) VALUES('Xenagos');
INSERT INTO kinds(kind) VALUES('Yanggu');
INSERT INTO kinds(kind) VALUES('Yanling');
INSERT INTO kinds(kind) VALUES('Zariel');
--spell types
INSERT INTO kinds(kind) VALUES('Adventure');
INSERT INTO kinds(kind) VALUES('Arcane');
INSERT INTO kinds(kind) VALUES('Lesson');
INSERT INTO kinds(kind) VALUES('Trap');

INSERT INTO artists(artist) VALUES('Tom Wänerstrand');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Arcum''s Weathervane', '2', 2, 11, 2, 1, 310);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(1, '2, TAP:  Target snow land is no longer snow.
	2, TAP:  Target nonsnow basic land becomes snow.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(1, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(1, 2);

INSERT INTO artists(artist) VALUES('Jeff A. Menges');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Iceberg', 'XUU', 3, 11, 2, 2, 73);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(2, 'Iceberg comes into play with X ice counters on it.
	3:  Put an ice counter on Iceberg.
	Remove an ice counter from Iceberg:  Add 1 to your mana pool.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(2, 11);
INSERT INTO collections(noncreatures_id, shape) VALUES(2, 3);

INSERT INTO artists(artist) VALUES('Richard Kane Ferguson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Essence Flare', 'U', 1, 11, 1, 3, 69);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(3, 'Enchant creature
	Enchanted creature gets +2/+0.
	At the beginning of the upkeep of enchanted creature''s controller, put a -0/-1 counter on that creature.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(3, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(3, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(3, 2);

INSERT INTO artists(artist) VALUES('Quinton Hoover');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Mistfolk', 'UU', 2, 11, 1, 4, 84);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(4, 'U:  Counter target spell that targets Mistfolk.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(4, '"Although my official log will state there is no evidence pointing to the existence of the mistfolk, my certainty is lessened by the cursed consistency of the expedition''s eyewitness accounts."—Disa the Restless, journal entry');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(4, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(4, 135);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(4, 1, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(4, 2);

INSERT INTO artists(artist) VALUES('Ken Meyer, Jr.');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Snow Devil', '1U', 2, 11, 1, 5, 100);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(5, 'Enchant creature
	Enchanted creature has flying.
	Enchanted creature has first strike as long as it''s blocking and you control a snow land.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(5, 'Give me wings to fly and speed to strike.  In return, the glory I earn shall be yours."—Steinar Icefist, Balduvian shaman');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(5, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(5, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(5, 3);

INSERT INTO artists(artist) VALUES('Scott Kirschner');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Phantasmal Fiend', '3B', 4, 15, 1, 6, 57);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(6, 'B:  Phantasmal Fiend gets +1/+1 until end of turn.
	1U:  Switch Phantasmal Fiend''s power and toughness until end of turn');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(6, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(6, 135);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(6, 1, 5);
INSERT INTO collections(noncreatures_id, shape) VALUES(6, 3);

INSERT INTO artists(artist) VALUES('Cecil Fernando');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Resistance Fighter', 'W', 1, 17, 1, 7, 18);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(7, 'Sacrifice Resistance Fighter:  Target creature deals no combat damage this turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(7, '"My soldiers fought without hesitation, died without doubt."—Sidar Jabari');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(7, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(7, 243);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(7, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(7, 2);

INSERT INTO artists(artist) VALUES('Michael Danza');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Fireblast', '4RR', 6, 17, 1, 8, 79);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(8, 'You may sacrifice two mountains instead of paying Fireblast''s casting cost.
	Fireblast deals 4 damage to target creature or player.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(8, 'Embermages aren''t well known for their diplomatic skills.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(8, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(8, 3);

INSERT INTO artists(artist) VALUES('Bob Eggleton');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Lichenthrope', '3GG', 5, 17, 3, 9, 112);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(9, 'For each 1 damage dealt to Lichenthrope, put a -1/-1 counter on it instead.
	During your upkeep, remove one of these -1/-1 counters from Lichentrhope');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(9, 9);
INSERT INTO kinds(kind) VALUES('Lichenthrope');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(9, 388);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(9, 5, 5);
INSERT INTO collections(noncreatures_id, shape) VALUES(9, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(9, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(9, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(9, 2);

INSERT INTO artists(artist) VALUES('Tom Kyffin');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Quirion Ranger', 'G', 1, 17, 1, 10, 117);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(10, 'Return a forest you control to owner''s hand:  Untap target creature.  Use this ability only once each turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(10, '"Respect the earth, for it will one day be your shield and another day your blanket."—Liefellen, Quirion exarch');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(10, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(10, 96);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(10, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(10, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(10, 2);

INSERT INTO artists(artist) VALUES('Randy Gallegos');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Stampeding Wildebeests', '2GG', 4, 17, 2, 11, 121);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(11, 'Trample
	During your upkeep, return a green creature you control to owner''s hand.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(11, 'Prayers for rain are answered with the thunder of hooves.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(11, 9);
--INSERT INTO kinds(kind) VALUES('Wildebeests');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(11, 32);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(11, 50);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(11, 5, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(11, 3);

INSERT INTO artists(artist) VALUES('Brom');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Contemplation', '1WW', 3, 21, 2, 12, 4);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(12, 'Whenever you successfully cast a spell, gain 1 life.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(12, '"How fascinating it is to watch the machinations of one''s own mind play themselves out."—Volrath');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(12, 11);
INSERT INTO collections(noncreatures_id, shape) VALUES(12, 1);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Soul Warden', 'W', 1, 22, 1, 11, 21);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(13, 'Whenever any other creature comes into play, gain 1 life.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(13, 'Count carefully the souls and see that none are lost.—Vec teaching');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(13, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(13, 68);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(13, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(13, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(13, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(13, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(13, 1);

INSERT INTO artists(artist) VALUES('Greg Simanson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Dragon Blood', '3', 3, 25, 2, 13, 293);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(14, '3, TAP:  Put a +1/+1 counter on target creature.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(14, 'Fire in the blood, fire in the belly');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(14, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(14, 5);

INSERT INTO artists(artist) VALUES('Berry');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Songstitcher', 'W', 1, 25, 2, 14, 52);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(15, '1W:  Target attacking creature with flying deals no combat damage this turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(15, 'The true names of birds are songs woven into their souls.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(15, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(15, 68);
INSERT INTO collections(noncreatures_id, shape) VALUES(15, 4);

INSERT INTO artists(artist) VALUES('Greg Staples');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Waylay', '2W', 3, 25, 2, 15, 56);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(16, 'Put three Knight tokens into play.
	Treat these tokens as 2/2 white creatures.  Remove them from the game at end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(16, '"You reek of corruption," spat the knight.  "Why are you even here?"');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(16, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(16, 4);

INSERT INTO artists(artist) VALUES('Ron Spencer');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Crazed Skirge', '3B', 4, 25, 2, 16, 125);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(17, 'Flying
	Crazed Skirge is unaffected by summoning sickness.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(17, 'They are Phyrexia''s couriers;  the messages they carry are inscribed on their slick hides.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(17, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(17, 136);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(17, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(17, 3);

INSERT INTO artists(artist) VALUES('Steve White');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Viashino Runner', '3R', 4, 25, 1, 17, 224);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(18, 'Viashino Runner cannot be blocked by only one creature');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(18, '"It moved this way, an'' that way, an'' then before I could stick it, it jumped over my head an'' was gone"—Jula, goblin raider');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(18, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(18, 273);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(18, 3, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(18, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(18, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(18, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(18, 2);

INSERT INTO artists(artist) VALUES('Daren Bader');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Treetop Ranger', '2G', 3, 25, 1, 18, 279);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(19, 'Treetop Rangers cannot be blocked except by creatures with flying.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(19, '"If you can''t catch them, cut the trees down from beneath them.  Force them to fight on our terms."—Mishra');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(19, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(19, 96);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(19, 211);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(19, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(19, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(19, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(19, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(19, 2);

INSERT INTO artists(artist) VALUES('Pete Venters');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Sluggishness', '1R', 2, 27, 1, 19, 92);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(20, 'Enchanted creature cannot block.
	When Sluggishness is put into a graveyard from play, return Sluggishness to owner''s hand.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(20, 'Vark decided to lie down and think of a good excuse to quit working.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(20, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(20, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(20, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(20, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(20, 3);

INSERT INTO artists(artist) VALUES('Margaret Organ-Kean');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Mana Prism', '3', 3, 28, 2, 20, 297);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(21, 'TAP:  Add one colorless mana to your mana pool.
	1, TAP:  Add one mana of a color of your choice to your mana pool.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(21, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(21, 3);

INSERT INTO artists(artist) VALUES('Jesper Myrfors');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Obsianus Golem', '6', 6, 28, 2, 21, 303);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(22, '"The foot stone is connected to the ankle stone, the ankle stone is connected to the leg stone...."—"Song of the Artificer"');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(22, 10);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(22, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(22, 116);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(22, 4, 6);
INSERT INTO collections(noncreatures_id, shape) VALUES(22, 3);

INSERT INTO artists(artist) VALUES('Christopher Rush');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Rod of Ruin', '4', 4, 28, 2, 22, 309);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(23, '3, TAP:  Rod of Ruin deals 1 damage to target creature or player.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(23, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(23, 3);

INSERT INTO artists(artist) VALUES('Gary Leach');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Gravebane Zombie', '3B', 4, 28, 2, 23, 133);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(24, 'When Gravebane Zombie would be put into a graveyard from play, instead put Gravebane Zombie on top of its owner''s library.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(24, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(24, 290);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(24, 3, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(24, 2);

INSERT INTO artists(artist) VALUES('Clint Langley');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Hidden Horror', '1BB', 3, 28, 2, 24, 137);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(25, 'When Hidden Horror comes into play, choose and discard a creature card from your hand.  If you don''t, sacrifice Hidden Horror.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(25, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(25, 130);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(25, 4, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(25, 2);

INSERT INTO artists(artist) VALUES('Di''Terlizzi');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Mischievous Poltergeist', '2B', 3, 28, 2, 25, 144);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(26, 'Flying
	Pay 1 life:  Regenerate Mischievous Poltergeist.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(26, '"The past is a ghost that haunts you from the moment it exists until the moment you don''t"—Gerrard of the Weatherlight');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(26, 9);
--INSERT INTO kinds(kind) VALUES('Ghost');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(26, 251);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(26, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(26, 3);

INSERT INTO artists(artist) VALUES('Richard Thomas');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Wall of Fire', '1RR', 3, 28, 2, 26, 216);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(27, '(Walls can''t attack)
	R:  Wall of Fire gets +1/+0 until end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(27, '"Struggle, and you will only fan the flames."—Talibah, embermage');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(27, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(27, 275);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(27, 0, 5);
INSERT INTO collections(noncreatures_id, shape) VALUES(27, 3);

INSERT INTO artists(artist) VALUES('David Seeley');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Creeping Mold', '2GG', 4, 28, 2, 27, 220);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(28, 'Destroy target artifact, land, or enchantment.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(28, '"Mold could catch you."—Suq''Ata insult');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(28, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(28, 3);

INSERT INTO artists(artist) VALUES('Andrew Robinson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Armored Pegasus', '1W', 2, 28, 1, 28, 5);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(29, 'Flying');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(29, 'Asked how it survived a run-in with a bog imp, the pegasus just shook its mane and burped.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(29, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(29, 196);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(29, 1, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(29, 3);

INSERT INTO artists(artist) VALUES('Zina Saunders');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Ardent Militia', '4W', 5, 28, 2, 29, 3);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(30, 'Attacking doesn''t cause Ardent Militia to tap.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(30, 'Some fight for honor and some for gold, but the militia fight for hearth and home.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(30, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(30, 243);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(30, 2, 5);
INSERT INTO collections(noncreatures_id, shape) VALUES(30, 3);

INSERT INTO artists(artist) VALUES('Dameon Willich');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Castle', '3W', 4, 28, 2, 30, 6);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(31, 'Untapped creatures you control get +0/+2');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(31, '"Hang out our banners on the outward walls");  /The cry is still, ''They come'';  our castle''s strength/Will laugh a siege to scorn."—William Shakespeare, Macbeth');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(31, 11);
INSERT INTO collections(noncreatures_id, shape) VALUES(31, 4);

INSERT INTO artists(artist) VALUES('Gerry Grace');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Circle of Protection:  White', '1W', 2, 28, 1, 31, 12);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(32, '1:  The next time a white source of your choice would deal damage to you this turn, prevent that damage.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(32, 11);
INSERT INTO collections(noncreatures_id, shape) VALUES(32, 2);

INSERT INTO artists(artist) VALUES('Douglas Shuler');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('D''Avenant Archer', '2W', 3, 28, 1, 32, 15);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(33, 'TAP:  D''Avenant Archer deals 1 damage to target attacking or blocking creature.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(33, 'Avenant''s archers are also trained as poets, so that each arrow is guided by a fragment of verse.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(33, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(33, 243);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(33, 1, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(33, 3);

INSERT INTO artists(artist) VALUES('Brian Snoddy');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Disenchant', '1W', 2, 28, 1, 33, 16);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(34, 'Destroy target artifact or enchantment');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(34, 11);
INSERT INTO collections(noncreatures_id, shape) VALUES(34, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(34, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(34, 2);

INSERT INTO artists(artist) VALUES('Dan Frazier');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Healing Salve', 'W', 1, 28, 1, 34, 22);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(35, 'Choose one — Target player gains 3 life;  or prevent the next 3 damage to target creature or player this turn.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(35, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(35, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(35, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Hero''s Resolve', '1W', 2, 28, 1, 19, 24);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(36, 'Enchanted Creature gets +1/+5');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(36, '"Destiny, chance, fate, fortune—they''re all just ways of claiming your successes without claiming your failures."—Gerrard of the Weatherlight');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(36, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(36, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(36, 3);

INSERT INTO artists(artist) VALUES('Mark Poole');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Mesa Falcon', '1W', 2, 28, 1, 35, 31);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(37, 'Flying
	1W:  Mesa Falcon gets +0/+1 until end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(37, '"The faith of Serra is borne on wings of hope."—Gulsen, abbey matron');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(37, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(37, 54);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(37, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(37, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Samite Healer', '1W', 2, 28, 1, 1, 40);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(38, 'TAP:  Prevent the next 1 damage to target creature or player this turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(38, '"Healers ultimately acquire the divine gifts of spiritual and physical wholeness.  The most devout are also granted the ability to pass physical wholeness on to others."');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(38, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(38, 68);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(38, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(38, 3);

INSERT INTO artists(artist) VALUES('D. Alexander Gregory');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Venerable Monk', '2W', 3, 28, 1, 36, 50);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(39, 'When Venerable Monk comes into play, you gain 2 life.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(39, 'His presence brings not only a strong arm but also renewed hope.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(39, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(39, 68);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(39, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(39, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Warrior''s Honor', '2W', 3, 28, 1, 36, 53);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(40, 'Creatures you control get +1/+1 until end of turn.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(40, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(40, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Prodigal Sorcerer', '2U', 3, 28, 1, 32, 88);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(41, 'TAP: Prodigal Sorcerer deals 1 damage to target creature or player.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(41, 'Occasionally members of the Institute of Arcane Study acquire a taste for worldy pleasures. Seldom do they have trouble finding employment.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(41, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(41, 282);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(41, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(41, 2);

INSERT INTO artists(artist) VALUES('Doug Chaffee');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Tidal Surge', '1U', 2, 28, 1, 37, 102);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(42, 'Tap up to three target creatures without flying.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(42, '"It is nature that gives us our boundaries and nature that enforces them."—Eladamri, Lord of Leaves');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(42, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(42, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Wind Drake', '2U', 3, 28, 1, 29, 106);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(43, 'Flying');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(43, '"No bird soars too high, if he soars with his own wings."—William Blake, The Marriage of Heaven and Hell');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(43, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(43, 84);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(43, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(43, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Blood Pet', 'B', 1, 28, 1, 12, 115);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(44, 'Sacrifice Blood Pet: Add B to your mana pool.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(44, '"You are wrong," Volrath said. "I do not hate the living. They often prove quite useful to me." And then he laughed.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(44, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(44, 263);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(44, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(44, 3);

INSERT INTO artists(artist) VALUES('Ian Miller');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Drudge Skeletons', '1B', 2, 28, 1, 38, 123);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(45, 'B: Regenerate Drudge Skeletons.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(45, '"The dead make good soldiers. They can''t disobey orders, they never surrender, and they don''t stop fighting when a random body part falls off."—Nevinyrral, Necromancer''s Handbook.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(45, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(45, 238);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(45, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(45, 4);

INSERT INTO artists(artist) VALUES('John Bolton');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Enfeeblement', 'BB', 2, 28, 1, 39, 125);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(46, 'Enchanted creature gets -2/-2');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(46, '"If it is weak, either kill it or ignore it. Anything else honors it."—Kaervek');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(46, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(46, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(46, 3);

INSERT INTO artists(artist) VALUES('Anson Maddocks');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Anaba Bodyguard', '3R', 4, 28, 1, 40, 164);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(47, 'First Strike');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(47, '"Not all minotaurs are tribal. Some are freelance."—Eron the Relentless.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(47, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(47, 163);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(47, 2, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(47, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Fit of Rage', '1R', 2, 28, 1, 32, 178);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(48, 'Target creature gets +3/+3 and gains first strike until end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(48, '"Anger is fleeting; remorse is eternal."—Karn, silver golem');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(48, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(48, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Lightning Blast', '3R', 4, 28, 1, 26, 193);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(49, 'Lightning blast deals 4 damage to target creature or player.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(49, '"Those who fear the darkness have never seen what the light can do."—Selenia, dark angel');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(49, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(49, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Pyrotechnics', '4R', 5, 28, 1, 40, 199);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(50, 'Pyrotechnics deals 4 damage divided any way you choose among any number of target creatures and/or players.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(50, '"Hi!ni!ya! Behold the man of flint, that''s me!/Four lightnings zigzag from me, strike and return."—Navajo war chant');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(50, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(50, 3);

INSERT INTO artists(artist) VALUES('Melissa A. Benson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Sabretooth Tiger', '2R', 3, 28, 1, 41, 203);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(51, 'First Strike');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(51, '"I fear anything with teeth measured in handspans."—Norin the Wary.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(51, 9);
--INSERT INTO kinds(kind) VALUES('Tiger');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(51, 63);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(51, 2, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(51, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Shock', 'R', 1, 28, 1, 11, 206);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(52, 'Shock deals 2 damage to target creature or player');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(52, 'Lightning tethers souls to the world.—Kor saying.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(52, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(52, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Tremor', 'R', 1, 28, 1, 19, 211);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(53, 'Tremor deals 1 damage to each creature without flying');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(53, '"Where do you run when the earth becomes your enemy?"—Naimag, Femeref philosopher');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(53, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(53, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Giant Spider', '3G', 4, 28, 1, 11, 234);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(54, 'Giant Spider can block as though it had flying.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(54, 'It''s not far into the trap, as the crow flies.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(54, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(54, 249);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(54, 2, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(54, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Giant Growth', 'G', 1, 28, 1, 25, 233);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(55, 'Target creature gets +3/+3 until end of turn.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(55, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(55, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Llanowar Elves', 'G', 1, 28, 1, 40, 239);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(56, 'TAP: Add G to your mana pool.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(56, 'One bone broken for every twig snapped underfoot.—Llanowar penalty for trespassing');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(56, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(56, 96);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(56, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(56, 3);

INSERT INTO artists(artist) VALUES('Eric Peterson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Panther Warriors', '4G', 5, 28, 1, 42, 243);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(57, 'The dogs of war are nothing compared to the cats.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(57, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(57, 63);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(57, 278);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(57, 6, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(57, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(57, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Rampant Growth', '1G', 2, 28, 1, 10, 246);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(58, 'Search your library for a basic land card and put that card into play tapped. Then shuffle your library.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(58, 'Rath forces plants from its surface as one presses whey from cheese');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(58, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(58, 2);

INSERT INTO artists(artist) VALUES('Daniel Gelon');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Scaled Wurm', '7G', 8, 28, 1, 43, 251);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(59, '"Flourishing during the Ice Age, these wurms were the bane of all Kjeldorans. Their great size and ferocity made them the subject of countless nightmares—they embodied the worst of the Ice Age."
—Kjeldor: Ice Civilization');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(59, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(59, 288);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(59, 7, 6);
INSERT INTO collections(noncreatures_id, shape) VALUES(59, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Trained Armodon', '1GG', 3, 28, 1, 23, 257);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(60, 'These are its last days. Better to grow broad and heavy. Better that the enemy is crushed beneath its carcass.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(60, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(60, 95);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(60, 3, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(60, 2);

INSERT INTO artists(artist) VALUES('Jeff Miracola');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Fresh Volunteers', '1W', 2, 32, 1, 44, 20);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(61, 'Every Cho-Arrim villager is a potential warrior; when they are called, they abandon their peaceful way of life and take up arms to defend it.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(61, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(61, 213);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(61, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(61, 4);

INSERT INTO artists(artist) VALUES('Bradley Williams');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Chameleon Spirit', '3U', 4, 32, 2, 45, 65);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(62, 'Every Cho-Arrim villager is a potential warrior; when they are called, they abandon their peaceful way of life and take up arms to defend it.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(62, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(62, 135);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(62, 0, 0);
INSERT INTO collections(noncreatures_id, shape) VALUES(62, 3);

INSERT INTO artists(artist) VALUES('Terese Nielsen');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Diplomatic Immunity', '1U', 2, 32, 1, 46, 75);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(63, 'Enchanted creature can''t be the target of spells or abilities.player
	Diplomatic Immunity can''t be the target of spells or abilities.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(63, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(63, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(63, 3);

INSERT INTO artists(artist) VALUES('Mike Ploog');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Bog Smugglers', '1BB', 3, 32, 1, 47, 117);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(64, 'Swampwalk (This creature is unblockable as long as defending player controls a swamp.)');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(64, 'They slide over the bog like oil across glass.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(64, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(64, 132);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(64, 159);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(64, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(64, 3);

INSERT INTO artists(artist) VALUES('Alan Pollack');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Deepwood Ghoul', '2B', 3, 32, 1, 48, 131);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(65, 'Pay 2 life: Regenerate Deepwood Ghoul.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(65, 'They feed on the living to stay undead.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(65, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(65, 290);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(65, 2, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(65, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Flaming Sword', '1R', 2, 32, 1, 11, 190);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(66, 'You may play Flaming Sword any time you could play an instant.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(66, '"It''s not Talruum crystal, but I must admit it gets the job done."—Tahngarth');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(66, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(66, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(66, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Uphill Battle', '2R', 3, 32, 2, 19, 222);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(67, 'Creatures your opponents play come into play tapped.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(67, 'Cho-Manno knew he had no choice but to ally with Gerrard. If that''s what it took to free his people, he''d pay the price.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(67, 11);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(67, 303);
INSERT INTO collections(noncreatures_id, shape) VALUES(67, 5);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Rushwood Herbalist', '2G', 3, 32, 1, 46, 265);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(68, 'G, TAP, Discard a card from your hand: Regenerate target creature.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(68, 'When generals gather their armies, healers gather their herbs.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(68, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(68, 32);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(68, 247);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(68, 2, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(68, 3);

INSERT INTO artists(artist) VALUES('Scott Hampton');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Fountain of Cho', NULL, NULL, 32, 2, 49, 317);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(69, 'Fountain of Cho comes into play tapped.
	TAP: Put a storage counter on Fountain of Cho.
	TAP, Remove any number of storage counters from Fountain of Cho: Add one white mana to your mana pool for each storage counter removed this way.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(69, 'When generals gather their armies, healers gather their herbs.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(69, 8);
INSERT INTO collections(noncreatures_id, shape) VALUES(69, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(69, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(69, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(69, 3);

INSERT INTO artists(artist) VALUES('Heather Hudson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Defiant Falcon', '1W', 2, 34, 1, 50, 6);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(70, 'Flying
	4, TAP: Search your library for a Rebel card with converted mana cost 3 or less and put that card into play. Then shuffle your library.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(70, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(70, 213);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(70, 54);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(70, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(70, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(70, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(70, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(70, 1);

INSERT INTO artists(artist) VALUES('Greg & Tim Hildebrandt');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Reveille Squad', '2WW', 4, 36, 2, 51, 18);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(71, 'Whenever you''re attacked, if Reveille Squad is untapped, you may untap all creatures you control.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(71, '"To arms! To arms! The Lion roars"');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(71, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(71, 132);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(71, 213);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(71, 3, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(71, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(71, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(71, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(71, 5);

INSERT INTO artists(artist) VALUES('Roger Raupp');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Sword Dancer', '1W', 2, 36, 2, 52, 25);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(72, 'WW: Target attacking creature gets -1/-0 until end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(72, 'Most soldiers think of the sword as a weapon. In the hands of Zho monks, swords are also the strongest of shields.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(72, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(72, 132);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(72, 213);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(72, 1, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(72, 6);

INSERT INTO artists(artist) VALUES('Christopher Moeller');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Sky Weaver', '1U', 2, 37, 2, 53, 74);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(73, '2: Target white or black creature gains flying until end of turn.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(73, '"Let my wisdom give you wings."');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(73, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(73, 161);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(73, 282);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(73, 2, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(73, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Quirion Elves', '1G', 2, 37, 1, 32, 203);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(74, 'As Quirion Elves comes into play, choose a color.
	TAP: Add G to your mana pool.
	TAP: Add one mana of the chosen color to your mana pool.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(74, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(74, 96);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(74, 87);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(74, 1, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(74, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Wandering Stream', '2G', 3, 37, 1, 4, 224);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(75, 'You gain 2 life for each basic land type among lands you control.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(75, '"Dominaria touches us all."—Molimo, maro-sorcerer');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(75, 14);
INSERT INTO collections(noncreatures_id, shape) VALUES(75, 3);

INSERT INTO artists(artist) VALUES('Donato Giancola');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Mana Cylix', '1', 1, 39, 2, 54, 132);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(76, '1, TAP: Add one mana of any color to your mana pool.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(76, 'Overflowing with visions of the possible future, it lends power to those in the present.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(76, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(76, 2);

INSERT INTO artists(artist) VALUES('Ben Thompson');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Slay', '2B', 3, 39, 2, 55, 55);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(77, 'Destroy target green creature. It can''t be regenerated.
	Draw a card.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(77, 'The elves had the edge in guile, skill, and valor. But in the end, only sheer numbers mattered.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(77, 13);
INSERT INTO collections(noncreatures_id, shape) VALUES(77, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Cavern Harpy', 'UB', 2, 39, 1, 18, 97);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(78, 'Flying
	When Cavern Harpy comes into play, return a blue or black creature you control to its owner''s hand.
	Pay 1 life: Return Cavern Harpy to its owner''s hand.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(78, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(78, 124);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(78, 50);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(78, 2, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(78, 1);
INSERT INTO collections(noncreatures_id, shape) VALUES(78, 1);

INSERT INTO artists(artist) VALUES('Michael Sutfin');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Horned Kavu', 'RG', 2, 36, 1, 56, 110);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(79, 'When Horned Kavu comes into play, return a red or green creature you control to its owner''s hand.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(79, '"That didn''t happen naturally," said Multani. "Rath''s overlay is interfering with the Aether itself."');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(79, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(79, 143);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(79, 3, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(79, 2);
INSERT INTO collections(noncreatures_id, shape) VALUES(79, 2);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Silver Drake', '1WU', 3, 36, 1, 48, 125);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(80, 'Flying
	When Silver Drake comes into play, return a white or blue creature you control to its owner''s hand.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(80, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(80, 84);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(80, 3, 3);
INSERT INTO collections(noncreatures_id, shape) VALUES(80, 1);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Soul Net', '1', 1, 40, 2, 13, 317);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(81, 'Whenever a creature is put into a graveyard from play, you may pay 1. If you do, you gain 1 life.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(81, 10);
INSERT INTO collections(noncreatures_id, shape) VALUES(81, 2);

INSERT INTO artists(artist) VALUES('Carl Critchlow');
INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Spined Wurm', '4G', 5, 40, 1, 57, 270);
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(82, '"I wouldn''t stand in front of that wurm, son. ''Course, I wouldn''t stand behind it neither. In fact, standing anywhere near that wurm''s not much of a plan. Running, now that''s a plan"
—Wandering mage');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(82, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(82, 288);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(82, 5, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(82, 3);

INSERT INTO noncreatures(title, mana_cost, converted_mana_cost, extension, rarity, artist, collector_number) VALUES('Wood Elves', '2G', 3, 40, 1, 53, 284);
INSERT INTO rules_texts(noncreatures_id, rules_text) VALUES(83, 'When Wood Elves enters the battlefield, search your library for a Forest card, put that card onto the battlefield, then shuffle.');
INSERT INTO flavor_texts(noncreatures_id, flavor_text) VALUES(83, 'Every branch a crossroads, every vine a swift steed.');
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(83, 9);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(83, 96);
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES(83, 227);
INSERT INTO creatures(noncreatures_id, punch, toughness) VALUES(83, 5, 4);
INSERT INTO collections(noncreatures_id, shape) VALUES(83, 3);

SELECT collections_id, noncreatures.title AS 'Name', noncreatures.mana_cost, noncreatures.converted_mana_cost, kinds.kind AS 'Type', extensions.extension AS 'Expansion', rarities.rarity, rules_texts.rules_text, flavor_texts.flavor_text,  creatures.punch AS 'Power', creatures.toughness, artists.artist, noncreatures.collector_number
FROM collections
JOIN noncreatures
ON collections.noncreatures_id = noncreatures.noncreatures_id
JOIN noncreatureskinds
ON noncreatures.noncreatures_id = noncreatureskinds.noncreatures_id
JOIN kinds
ON noncreatureskinds.kinds_id = kinds.kinds_id
JOIN extensions 
ON noncreatures.extension = extensions.extensions_id
JOIN rarities
ON noncreatures.rarity = rarities.rarities_id
LEFT JOIN rules_texts
ON noncreatures.noncreatures_id = rules_texts.noncreatures_id
LEFT JOIN flavor_texts
ON noncreatures.noncreatures_id = flavor_texts.noncreatures_id
LEFT JOIN creatures
ON noncreatures.noncreatures_id = creatures.noncreatures_id
JOIN artists
ON noncreatures.artist = artists.artists_id
ORDER BY collections.collections_id DESC;

SELECT * FROM kinds
WHERE kind = '';

SELECT * FROM artists
ORDER BY artists_id DESC;

SELECT * FROM artists
WHERE artist = 'Christopher Moeller';

SELECT * FROM extensions
ORDER BY extensions_id;

SELECT * FROM extensions
WHERE extension = 'Portal';

SELECT collections_id, noncreatures.title AS 'Name', noncreatures.mana_cost, noncreatures.converted_mana_cost, extensions.extension AS 'Expansion', rarities.rarity, rules_texts.rules_text, flavor_texts.flavor_text,  creatures.punch AS 'Power', creatures.toughness, artists.artist, noncreatures.collector_number, shapes.shape
FROM collections
JOIN noncreatures
ON collections.noncreatures_id = noncreatures.noncreatures_id
JOIN extensions
ON noncreatures.extension = extensions.extensions_id
JOIN rarities
ON noncreatures.rarity = rarities.rarities_id
LEFT JOIN rules_texts
ON noncreatures.noncreatures_id = rules_texts.noncreatures_id
LEFT JOIN flavor_texts
ON noncreatures.noncreatures_id = flavor_texts.noncreatures_id
LEFT JOIN creatures
ON noncreatures.noncreatures_id = creatures.noncreatures_id
JOIN artists
ON noncreatures.artist = artists.artists_id
JOIN shapes
ON collections.shape = shapes.shapes_id
ORDER BY collections.collections_id DESC;
--ORDER BY extensions.extensions_id, noncreatures.collector_number;

UPDATE noncreatures
SET extension = 39
WHERE noncreatures_id = 80;

SELECT * FROM noncreatures;