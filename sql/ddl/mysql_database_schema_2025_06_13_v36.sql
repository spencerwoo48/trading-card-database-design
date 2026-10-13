CREATE TABLE permanent (
	permanent_id INT AUTO INCREMENT,
	name VARCHAR(),
	--mana_cost VARCHAR(),
	kind INT,
	subkind INT,
	expansion INT,
	rarity INT,
	--description VARCHAR(),
	--power INT,
	--toughness INT,
	collector_number INT,
	artist INT,
	--add_loyalty INT,
	--loyalty_ability VARCHAR(),
	--subtract_loyalty INT,
	--ultimate_ability VARCHAR(),
	--loyalty INT,
	PRIMARY KEY (permanent_id)
);

CREATE TABLE kind (
	kind_id INT AUTO INCREMENT,
	kind VARCHAR(),
	PRIMARY KEY (kind_id),
	FOREIGN KEY (kind_id) REFERENCES permanent(kind)
);

CREATE TABLE subkind (
	subkind_id INT AUTO INCREMENT,
	subkind_fk INT,
	kind VARCHAR(),
	PRIMARY KEY (subkind_id),
	FOREIGN KEY (subkind_fk) REFERENCES permanent(subkind)
);

CREATE TABLE expansion (
	expansion_id INT AUTO INCREMENT,
	expansion VARCHAR(),
	PRIMARY KEY (expansion_id),
	FOREIGN KEY (expansion_id) REFERENCES permanent(expansion)
);

CREATE TABLE rarity (
	rarity_id INT AUTO INCREMENT,
	rarity VARCHAR(),
	PRIMARY KEY (rarity_id),
	FOREIGN KEY (rarity_id) REFERENCES permanent(rarity)
);

CREATE TABLE artist (
	artist_id INT,
	artist VARCHAR(),
	PRIMARY KEY(artist_id),
	FOREIGN KEY(artist_id) REFERENCES permanent(artist)
);

CREATE TABLE land (
	land_id INT,
	description VARCHAR(),
	PRIMARY KEY (land_id),
	FOREIGN KEY (land_id) REFERENCES permanent(permanent_id)
);

CREATE TABLE noncreature (
	noncreature_id INT,
	mana_cost VARCHAR(),
	description VARCHAR(),
	PRIMARY KEY (noncreature_id),
	FOREIGN KEY (noncreature_id) REFERENCES permanent(permanent_id)
);

CREATE TABLE creature (
	creature_id INT,
	mana_cost VARCHAR(),
	description VARCHAR(),
	power INT,
	toughness INT,
	PRIMARY KEY (creature_id),
	FOREIGN KEY (creature_id) REFERENCES permanent(permanent_id)
);

CREATE TABLE planeswalker (
	planeswalker_id INT,
	mana_cost VARCHAR(),
	add_loyalty INT,
	loyalty_ability VARCHAR(),
	subtract_loyalty INT,
	ultimate_ability VARCHAR(),
	loyalty INT,
	PRIMARY KEY (permanent_id),
	FOREIGN KEY (planeswalker_id) REFERENCES permanent(permanent_id)
);

INSERT INTO permanent(permanent_id, name, kind, subkind, expansion, rarity, collector_number, artist) VALUES();
INSERT INTO kind(kind_id, kind) VALUES();
INSERT INTO subkind(subkind_id, subkind_fk, subkind) VALUES();
INSERT INTO expansion(expansion_id, expansion) VALUES();
INSERT INTO rarity(rarity_id, rarity) VALUES();
INSERT INTO land(land_id, description) VALUES();
INSERT INTO noncreature(noncreature_id, mana_cost, description) VALUES();
INSERT INTO creature(creature_id, mana_cost, description, power, toughness) VALUES();
INSERT INTO planeswalker(planeswalker_id, mana_cost, add_loyalty, loyalty_ability, subtract_loyalty, ultimate_ability, loyalty) VALUES();

SELECT permanent.permanent_id, noncreature.mana_cost, creature.mana_cost, planeswalker.mana_cost, permanent.name, permanent.kind, permanent.subkind, permanent.expansion, permanent.rarity, noncreature.description, creature.description, creature.power, creature.toughness, permanent.collector_number, permanent.artist, 
planeswalker.mana_cost, planeswalker.add_loyalty, planeswalker.loyalty_ability, planeswalker.subtract_loyalty, planeswalker.ultimate_ability, planeswalker.loyalty
FROM permanent
JOIN kind
ON permanent.kind = kind.kind_id
JOIN subkind
ON permanent.subkind = subkind.subkind_fk
JOIN expansion
ON permanent.expansion = expansion.expansion_id
JOIN rarity
ON permanent.rarity = rarity.rarity_id
JOIN land
ON permanent.permanent_id = land.land_id
JOIN noncreature
ON permanent.permanent_id = noncreature.noncreature_id
JOIN creature
ON permanent.permanent_id = creature.creature_id
JOIN planeswalker
ON permanent.permanent_id = planeswalker.planeswalker_id