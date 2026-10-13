CREATE TABLE permanent (
	permanent_id INT PRIMARY KEY AUTO INCREMENT,
	name VARCHAR(),
	--mana_cost VARCHAR(),
	kind INT,
	subkind INT,
	expansion INT,
	rarity INT,
	--description VARCHAR(),
	--add_loyalty INT,
	--loyalty_ability INT,
	--subtract_loyalty INT,
	--ultimate_ability INT,
	collector_number INT,
	--power INT,
	--toughness INT,
	--loyalty INT,
	artist VARCHAR()
);

CREATE TABLE kind (
	kind_id INT PRIMARY KEY AUTO INCREMENT,
	kind VARCHAR(),
	FOREIGN KEY (kind_id) REFERENCES permanent(kind)
);

CREATE TABLE subkind (
	subkind_id INT PRIMARY KEY AUTO INCREMENT,
	subkind VARCHAR(),
	FOREIGN KEY (subkind_id) REFERENCES permanent(subkind)
);

CREATE TABLE expansion (
	expansion_id INT PRIMARY KEY AUTO INCREMENT,
	expansion VARCHAR(),
	FOREIGN KEY (expansion_id) REFERENCES permanent(expansion)
);

CREATE TABLE rarity (
	rarity_id INT PRIMARY KEY AUTO INCREMENT,
	rarity VARCHAR(),
	FOREIGN KEY (rarity_id) REFERENCES permanent(rarity)
);

CREATE TABLE artist (
	artist_id INT PRIMARY KEY AUTO INCREMENT,
	artist VARCHAR(),
	FOREIGN KEY (artist_id) REFERENCES permanent(artist)
);

CREATE TABLE creature (
	creature_id INT PRIMARY KEY AUTO INCREMENT,
	mana_cost VARCHAR(),
	description VARCHAR(),
	power INT,
	toughness INT,
	FOREIGN KEY (creature_id) REFERENCES permanent(permanent_id)
);

CREATE TABLE planeswalker (
	planeswalker_id INT PRIMARY KEY AUTO INCREMENT,
	mana_cost VARCHAR(),
	add_loyalty INT,
	loyalty_ability VARCHAR(),
	subtract_loyalty INT,
	ultimate_ability VARCHAR(),
	loyalty INT
);

SELECT permanent.id, permanent.name, permanent.kind, permanent.expansion, permanent.rarity, permanent.collector_number, permanent.artist
FROM permanent
JOIN kind
ON permanent.kind = kind.kind_id
JOIN subkind
ON permanent.subkind = subkind.subkind_id
JOIN expansion
ON permanent.expansion = expansion.expansion_id
JOIN rarity
ON permanent.rarity = rarity.rarity_id
JOIN artist
ON permanent.artist = artist.artist_id
JOIN creature
ON permanent.id = creature.creature_id
JOIN planeswalker
ON permanent.id = planeswalker.planeswalker_id