CREATE TABLE noncreatures (
	noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32) NOT NULL,
--	mana_cost VARCHAR(16),
--	changed_mana_cost INT,
--	kind VARCHAR(16),
	expansion INT NOT NULL,
	rarity INT NOT NULL,
--	ruling_text VARCHAR(664),
--	flavor_text VARCHAR(240),
--	punch INT,
--	toughness INT,
--	loyalty INT,
--	artist VARCHAR(32),
	gatherer_digit INT NOT NULL,
--	shape VARCHAR(24),
--	worth DECIMAL(5, 2),
--	quantity INT,
	UNIQUE(title, expansion)
);

CREATE TABLE mana_costs (
	mana_costs_id INT PRIMARY KEY AUTO_INCREMENT,
	mana_cost VARCHAR(16) UNIQUE NOT NULL,
	changed_mana_cost INT NOT NULL
);

CREATE TABLE noncreaturesmana_costs (
	noncreaturesmana_costs_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT UNIQUE NOT NULL,
	mana_costs_id INT NOT NULL,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(mana_costs_id) REFERENCES mana_costs(mana_costs_id)
);

CREATE TABLE kinds (
	kinds_id INT PRIMARY KEY AUTO_INCREMENT,
	kind VARCHAR(16) UNIQUE NOT NULL
);

CREATE TABLE noncreatureskinds (
	noncreatureskinds_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT NOT NULL,
	kinds_id INT NOT NULL,
	UNIQUE(noncreatures_id, kinds_id),
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(kinds_id) REFERENCES kinds(kinds_id)
);

CREATE TABLE expansions (
	expansions_id INT PRIMARY KEY AUTO_INCREMENT,
	expansion VARCHAR(72) UNIQUE NOT NULL
);

ALTER TABLE noncreatures
ADD FOREIGN KEY(expansion)
REFERENCES expansions(expansions_id);

CREATE TABLE rarities (
	rarities_id INT PRIMARY KEY AUTO_INCREMENT,
	rarity VARCHAR(16) UNIQUE NOT NULL
);

ALTER TABLE noncreatures
ADD FOREIGN KEY(rarity)
REFERENCES rarities(rarities_id);

CREATE TABLE ruling_texts (
	ruling_texts_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT UNIQUE NOT NULL,
	ruling_text VARCHAR(664) NOT NULL,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE flavor_texts (
	flavor_texts_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT UNIQUE NOT NULL,
	flavor_text VARCHAR(240) NOT NULL,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE creatures (
	creatures_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT UNIQUE NOT NULL,
	punch INT NOT NULL,
	toughness INT NOT NULL,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE planeswalkers (
	planeswalkers_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT UNIQUE NOT NULL,
	loyalty INT NOT NULL,
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id)
);

CREATE TABLE artists (
	artists_id INT PRIMARY KEY AUTO_INCREMENT,
	artist VARCHAR(32) UNIQUE NOT NULL
);

CREATE TABLE noncreaturesartists (
	noncreaturesartists_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT NOT NULL,
	artists_id INT NOT NULL,
	UNIQUE(noncreatures_id, artists_id),
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(artists_id) REFERENCES artists(artists_id)
);

CREATE TABLE shapes (
	shapes_id INT PRIMARY KEY AUTO_INCREMENT,
	shape VARCHAR(24) UNIQUE NOT NULL
);

CREATE TABLE noncreaturesshapesworth (
	noncreaturesshapesworth_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT NOT NULL,
	shapes_id INT NOT NULL,
	worth DECIMAL(5, 2) NOT NULL,
	UNIQUE(noncreatures_id, shapes_id),
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(shapes_id) REFERENCES shapes(shapes_id)
);

CREATE TABLE noncreaturesshapesquantity (
	noncreaturesshapesquantity_id INT PRIMARY KEY AUTO_INCREMENT,
	noncreatures_id INT,
	shapes_id INT NOT NULL,
	quantity INT NOT NULL,
	UNIQUE(noncreatures_id, shapes_id),
	FOREIGN KEY(noncreatures_id) REFERENCES noncreatures(noncreatures_id),
	FOREIGN KEY(shapes_id) REFERENCES shapes(shapes_id)
);

CREATE TABLE tr_noncreatures (
	tr_noncreatures_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32),
	expansion INT,
	already INT,
	attempt DATETIME
);

DELIMITER $$
CREATE TRIGGER TR_noncreatures_BI BEFORE INSERT ON noncreatures
FOR EACH ROW
BEGIN
	IF EXISTS(SELECT noncreatures.title, noncreatures.expansion FROM noncreatures WHERE noncreatures.title = NEW.title AND noncreatures.expansion = NEW.expansion) THEN
		INSERT INTO tr_noncreatures(title, expansion, attempt) VALUES(NEW.title, NEW.expansion, NOW());
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A duplicate noncreature was found, insert was halted to protect data integrity.';
	END IF;
END$$
DELIMITER ;