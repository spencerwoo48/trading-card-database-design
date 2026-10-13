	CREATE TABLE noncreatures (
	noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32) UNIQUE,
	mana_cost VARCHAR(8),
	converted_mana_cost INT,
	kind VARCHAR(32),
	extension INT,
	rarity INT,
	rules_text VARCHAR(664),
	flavor_text VARCHAR(200),
	--punch INT,
	--toughness INT,
	--loyalty INT,
	artist INT,
	collector_number INT,
	--shape INT,
	--worth DECIMAL(5, 2)
);

CREATE TABLE extensions (
	extensions_id INT PRIMARY KEY AUTO_INCREMENT,
	extension VARCHAR(72) UNIQUE
);

CREATE TABLE rarities (
	rarities_id INT PRIMARY KEY AUTO_INCREMENT,
	rarity VARCHAR(16) UNIQUE
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
	artist VARCHAR(32) UNIQUE
);

ALTER TABLE noncreatures
ADD FOREIGN KEY (extension) REFERENCES extensions(extensions_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (rarity) REFERENCES rarities(rarities_id);

ALTER TABLE noncreatures
ADD FOREIGN KEY (artist) REFERENCES artists(artists_id);

CREATE TABLE shapes(
	shapes_id INT PRIMARY KEY AUTO_INCREMENT,
	shape VARCHAR(24)
);

CREATE TABLE collections (
	collections_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shapes INT,
	worth DECIMAL(5, 2)
	FOREIGN KEY (noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);