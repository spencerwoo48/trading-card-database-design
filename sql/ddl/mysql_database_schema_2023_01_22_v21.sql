CREATE TABLE noncreatures (
	noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32),
--	mana_cost VARCHAR(16),
--	converted_mana_cost INT,
--	kind VARCHAR(16),
	extension INT,
	rarity INT,
--	rules_text VARCHAR(664),
--	flavor_text VARCHAR(240),
--	punch INT,
--	toughness INT,
--	loyalty INT,
--	artist VARCHAR(32),
	collector_number INT,
--	shape VARCHAR(24),
--	worth DECIMAL(5, 2),
--	quantity INT
);

--CREATE TABLE mana_costs (
--	mana_costs_id INT PRIMARY KEY AUTO_INCREMENT,
--	mana_cost VARCHAR(32),
--	converted_mana_cost INT
--);

--CREATE TABLE noncreaturesmana_costs (
--	noncreaturesmana_costs_id INT PRIMARY KEY,
--	noncreatures_id INT,
--	mana_costs_id INT,
--	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
--	FOREIGN KEY(mana_costs_id) REFERENCES mana_costs(mana_costs_id)
--);

CREATE TABLE mana_costs (
	mana_costs_id INT PRIMARY KEY,
	mana_cost VARCHAR(32),
	converted_mana_cost INT,
	FOREIGN KEY(mana_costs_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE kinds (
	kinds_id INT PRIMARY KEY AUTO_INCREMENT,
	kind VARCHAR(16) UNIQUE
);

CREATE TABLE noncreatureskinds (
	noncreatureskinds_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	kinds_id INT,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(kinds_id) REFERENCES kinds(kinds_id)
);

CREATE TABLE extensions (
	extensions_id INT PRIMARY KEY AUTO_INCREMENT,
	extension VARCHAR(72) UNIQUE
);

ALTER TABLE noncreatures
ADD FOREIGN KEY(extension)
REFERENCES extensions(extensions_id);

CREATE TABLE rarities (
	rarities_id INT PRIMARY KEY AUTO_INCREMENT,
	rarity VARCHAR(16) UNIQUE
);

ALTER TABLE noncreatures
ADD FOREIGN KEY(rarity)
REFERENCES rarities(rarities_id);

CREATE TABLE rules_texts (
	rules_texts_id INT PRIMARY KEY,
	rules_text VARCHAR(664),
	FOREIGN KEY(rules_texts_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE flavor_texts (
	flavor_texts_id INT PRIMARY KEY,
	flavor_text VARCHAR(240),
	FOREIGN KEY(flavor_texts_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE creatures (
	creatures_id INT PRIMARY KEY,
	punch INT,
	toughness INT,
	FOREIGN KEY(creatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE planeswalkers (
	planeswalkers_id INT PRIMARY KEY,
	loyalty INT,
	FOREIGN KEY(planeswalkers_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE artists (
	artists_id INT PRIMARY KEY AUTO_INCREMENT,
	artist VARCHAR(32) UNIQUE
);

CREATE TABLE noncreaturesartists (
	noncreaturesartists_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	artists_id INT,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(artists_id) REFERENCES artists(artists_id)
);

CREATE TABLE shapes (
	shapes_id INT PRIMARY KEY AUTO_INCREMENT,
	shape VARCHAR(24) UNIQUE
);

CREATE TABLE noncreaturesshapesworths (
	noncreaturesshapesworths_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shapes_id INT,
	worth DECIMAL(5, 2),
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(shapes_id) REFERENCES shapes(shapes_id)
);

CREATE TABLE noncreaturesshapesquantities (
	noncreaturesshapesquantities INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shapes_id INT,
	quantity INT,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(shapes_id) REFERENCES shapes(shapes_id)
);

INSERT INTO noncreatures(title, extension, rarity, collector_number) VALUES();
INSERT INTO mana_costs(mana_costs_id, mana_cost, converted_mana_cost) VALUES();
--INSERT INTO kinds(kind) VALUES();
INSERT INTO noncreatureskinds(noncreatures_id, kinds_id) VALUES();
--INSERT INTO extensions(extension) VALUES();
--INSERT INTO rarities(rarity) VALUES();
INSERT INTO rules_texts(rules_texts_id, rules_text) VALUES();
INSERT INTO flavor_texts(flavor_texts_id, flavor_text) VALUES();
INSERT INTO creatures(creatures_id, punch, toughness) VALUES();
INSERT INTO planeswalkers(planeswalkers_id, loyalty) VALUES();
INSERT INTO artists(artist) VALUES();
INSERT INTO noncreaturesartists(noncreatures_id, artists_id) VALUES();
--INSERT INTO shapes(shape) VALUES();
INSERT INTO noncreaturesshapesworths(noncreatures_id, shapes_id, worth) VALUES();
INSERT INTO noncreaturesshapesquantities(noncreatures_id, shapes_id, quantity) VALUES();