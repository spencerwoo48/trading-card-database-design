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
CREATE TABLE noncreaturesmana_costs(
	noncreatures_id INT PRIMARY KEY,
	mana_cost VARCHAR(8),
	converted_mana_cost INT
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