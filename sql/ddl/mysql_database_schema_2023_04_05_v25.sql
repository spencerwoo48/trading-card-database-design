CREATE TABLE card (
    item_id INT PRIMARY KEY AUTO_INCREMENT,




    extension VARCHAR(378),






    
    collector_number INT,
    shape VARCHAR(24),
    worth DECIMAL(5, 2)
);

CREATE TABLE comprehensive (
    extension VARCHAR(378),

    title VARCHAR(32),
    mana_cost VARCHAR(8),
    converted_mana_cost INT,
    kind VARCHAR(248),
    
    rarity VARCHAR(16),
    rules_text VARCHAR(776),
    flavor_text VARCHAR(248),
    punch INT,
    toughness INT,
    loyalty INT,
    artist VARCHAR(32),
    collector_number INT,


    PRIMARY KEY(extension, collector_number)
);

CREATE TABLE chronology (
    extension VARCHAR(378) PRIMARY KEY,
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

INSERT INTO chronology(extension, launch) VALUES('Ice Age', '1995-06-10');
INSERT INTO chronology(extension, launch) VALUES('Alliances', '1996-06-10');
INSERT INTO chronology(extension, launch) VALUES('Stronghold', '1996-06-10');
INSERT INTO chronology(extension, launch) VALUES('Exodus', '1998-06-15');
INSERT INTO chronology(extension, launch) VALUES('Urza''s Saga', '1998-10-12');
INSERT INTO chronology(extension, launch) VALUES('Urza''s Legacy', '1999-02-15');
INSERT INTO chronology(extension, launch) VALUES('Sixth Edition', '1999-04-28');
INSERT INTO chronology(extension, launch) VALUES('Mercadian Masques', '1999-10-04');
INSERT INTO chronology(extension, launch) VALUES('Nemesis', '2000-02-14');
INSERT INTO chronology(extension, launch) VALUES('Prophecy', '2000-06-05');
INSERT INTO chronology(extension, launch) VALUES('Invasion', '2000-10-02');
INSERT INTO chronology(extension, launch) VALUES('Planeshift', '2001-02-05');
INSERT INTO chronology(extension, launch) VALUES('Seventh Edition', '2001-04-11');

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 310, 'Near Mint', 0.24);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Ice Age', 'Arcum''s Weathervane', '2', 2, 'Artifact', 'Uncommon',
'2, T:  Target snow land is no longer snow.
2, T:  Target nonsnow basic land becomes snow.',
NULL, NULL, NULL, NULL, 'Tom Wänerstrand', 310);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 73, 'Near Mint', 0.37);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Ice Age', 'Iceberg', 'XUU', 2, 'Enchantment', 'Uncommon',
'Iceberg comes into play with X ice counters on it.
3:  Put an ice counter on Iceberg.
Remvove an ice counter from Iceberg:  Add 1 to your mana pool.',
NULL, NULL, NULL, NULL, 'Jeff A. Menges', 73);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 69, 'Near Mint', 0.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Ice Age', 'Essence Flare', 'U', 1, 'Enchantment — Aura', 'Common',
'Enchant creature
Enchanted creature gets +2/+0.
At the beginning of the upkeep of enchanted creature''s controller, put a -0/-1 counter on that creature.',
'Never underestimate the power of the soul unleashed', NULL, NULL, NULL, 'Richard Kane Ferguson', 69);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 84, 'Lightly Played', 0.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Ice Age', 'Mistfolk', 'UU', 2, 'Creature — Illusion', 'Common',
'U:  Counter target spell that targets Mistfolk.',
'"Although my official log will state there is no evidence pointing to the existence of the mistfolk, my certainty is lessened by the cursed consistency of the expedition''s eyewitness accounts."—Disa the Restless,journal entry', NULL, NULL, NULL, 'Quinton Hoover', 84);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Ice Age', 100, 'Lightly Played', 0.18);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Ice Age', 'Snow Devil', '1U', 2, 'Enchantment — Aura', 'Common',
'Enchant creature
Enchanted creature has flying.
Enchanted creature has first strike as long as it''s blocking and you control a snow land',
'"Give me wings to fly and speed to strike.  In return, the glory I earn shall be yours."—Steinar Icefist, Balduvian shaman', NULL, NULL, NULL, 'Ken Meyer, Jr.', 100);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Alliances', 57, 'Near Mint', 0.27);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Alliances', 'Phantasmal Fiend', '3B', 4, 'Creature — Illusion', 'Common',
'B:  Phantasmal Fiend gets +1/-1 until end of turn.
1U:  Search Phantasmal Fiend''s power and toughness until end of turn',
NULL, 1, 5, NULL, 'Scott Kirschner', 57);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 18, 'Near Mint', 0.07);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Visions', 'Resistance Fighter', 'W', 1, 'Summon Soldier', 'Common',
'Sacrifice Resistance Fighter:  Target creature deals no combat damage this turn.',
'"My Soldiers fought without hesitation, died without doubt."—Sidar Jabari', 1, 1, NULL, 'Cecil Fernando', 18);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 79, 'Near Mint', 1.73);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Visions', 'Fireblast', '4RR', 6, 'Instant', 'Common',
'You may sacrifice two mountains instead of paying FIreblast''s casting cost.
Fireblast deals 4 damage to target creature or player.',
'Embermages aren''t well known for their diplomatic skills.', NULL, NULL, NULL, 'Michael Danza', 79);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 112, 'Lightly Played', 1.35);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Visions', 'Lichenthrope', '3GG', 5, 'Summon Lichenthrope', 'Rare',
'For each 1 damage dealt to Lichenthrope, put a -1/-1 counter on it instead.
During your upkeep, remove one of those -1/-1 counters from Lichenthrope',
NULL, NULL, NULL, NULL, 'Robb Eggleton', 112);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 112, 'Lightly Played', 1.35);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 112, 'Lightly Played', 1.35);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 112, 'Near Mint', 1.35);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 117, 'Moderately Played', 0.70);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Visions', 'Quirion Ranger', 'G', 1, 'Summon Elf', 'Common',
'Return a forest you control to owner''s hand:  Untap target creature.  Use this ability only once each turn.',
'"Respect the earth, for it will one day be your shield and another day your blanket."—Liefellen, Quirion exarch', 1, 1, NULL, 'Tom Kyffin', 117);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 117, 'Lightly Played', 0.70);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Visions', 121, 'Moderately Played', 0.21);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Visions', 'Stampeding Wildebeests', '2GG', 4, 'Summon Wildebeests', 'Uncommon',
'Trample
During your upkeep, return a green creature you control to owner''s hand.',
'Prayers for rain are answered with the thunder of hooves.', 5, 4, NULL, 'Randy Gallegos', 121);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Stronghold', 4, 'Near Mint', 0.24);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Stronghold', 'Contemplation', '1UU', 3, 'Enchantment', 'Uncommon',
'Whenever you successfully cast a spell, gain 1 life.',
'"How fascinating it is to watch the machinations of one''s own mind play themselves out."—Volrath', NULL, NULL, NULL, 'Brom', 4);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Exodus', 21, 'Lightly Played', 1.53);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Exodus', 'Soul Warden', 'W', 1, 'Summon Cleric', 'Uncommon',
'Whenever any other creature comes into play, gain 1 life.',
'Count carefully the souls and see that none are lost.—Vec teaching', 1, 1, NULL, 'Randy Gallegos', 21);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Exodus', 21, 'Lightly Played', 1.53);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Exodus', 21, 'Lightly Played', 1.53);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Exodus', 21, 'Lightly Played', 1.53);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 293, 'Moderately Played', 0.21);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Dragon Blood', '3', 3, 'Artifact', 'Uncommon',
'3, T:  Put a +1/+1 counter on target creature.',
'Fire in the blood, fire in the belly.', NULL, NULL, NULL, 'Greg Simanson', 293);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 52, 'Moderately Played', 0.16);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Songstitcher', 'W', 1, 'Summon Cleric', 'Uncommon',
'1W:  Target attacking creature with flying deals no combat damage this turn.',
'The true names of birds are songs woven into their souls.', 1, 1, NULL, 'Berry', 52);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 56, 'Moderately Played', 0.22);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Waylay', '2W', 3, 'Instant', 'Uncommon',
'Put three Knight tokens into play.  Treat these tokens as 2/2 white creatures.  Remove them from the game at end of turn.',
'"You reek of corruption," spat the knight.  "Why are you even here?"', NULL, NULL, NULL, 'Greg Staples', 56);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 125, 'Moderately Played', 0.17);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Crazed Skirge', '3B', 4, 'Summon Imp', 'Uncommon',
'Flying
Crazed Skirge is unaffected by summoning sickness.',
'They are Phyrexia''s couriers; the messages they carry are inscribed on their slick hides.', 2, 2, NULL, 'Ron Spencer', 125);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 224, 'Moderately Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Viashino Runner', '3R', 4, 'Summon Viashino', 'Common',
'Viashino Runner cannot be blocked by only one creature.',
'"It moved this way, an'' that way, an'' then before I could stick it, it jumped over my head an'' was gone."—Jula, goblin raider', 3, 2, NULL, 'Steve White', 224);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 224, 'Moderately Played', 0.10);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 224, 'Moderately Played', 0.10);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 224, 'Lightly Played', 0.10);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 279, 'Moderately Played', 0.14);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Saga', 'Treetop Rangers', '2G', 3, 'Summon Elves', 'Common',
'Treetop Rangers cannot be blocked except by creatures with flying.',
'"If you can''t catch them, cut the trees down from beneath them.  Force them to fight on our terms."—Mishra', 2, 2, NULL, 'Daren Bader', 279);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 279, 'Moderately Played', 0.14);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 279, 'Lightly Played', 0.14);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Saga', 279, 'Lightly Played', 0.14);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Legacy', 92, 'Near Mint', 0.17);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Urza''s Legacy', 'Sluggishness', '1R', 2, 'Enchant Creature', 'Common',
'Enchanted creature cannot block.
When Sluggishness is put into a graveyard from play, return Sluggishness to owner''s hand.',
'Vark decided to lie down and think of a good excuse to quit working', NULL, NULL, NULL, 'Pete Venters', 92);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Legacy', 92, 'Near Mint', 0.17);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Urza''s Legacy', 92, 'Near Mint', 0.17);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 297, 'Moderately Played', 0.14);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Mana Prism', '3', 3, 'Artifact', 'Uncommon',
'T:  Ad one colorless mana to your mana pool.
1, T:  Add one mana of a color of your choice to your mana pool.',
NULL, NULL, NULL, NULL, 'Margaret Organ-Kean', 297);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 303, 'Moderately Played', 0.29);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Obsianus Golem', '6', 6, 'Artifact Creature — Golem', 'Uncommon',
NULL,
'"The foot stone is connected to the ankle bone, the ankle stone is connected to the leg bone...."—"Song of the Artificer"', 4, 6, NULL, 'Jesper Myrfors', 303);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 309, 'Moderately Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Rod of Ruin', '4', 4, 'Artifact', 'Uncommon',
'3, T:  Rod of Ruin deals 1 damage to target creature or player.',
NULL, NULL, NULL, NULL, 'Christopher Rush', 309);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 133, 'Moderately Played', 0.14);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Gravebane Zombie', '3B', 4, 'Creature — Zombie', 'Uncommon',
'When Gravebane Zombie would be put into a graveyard from play, instead put Gravebane Zombie on top of its owner''s library.',
NULL, 3, 2, NULL, 'Gary Leach', 133);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 137, 'Lightly Played', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Hidden Horror', '1BB', 3, 'Creature — Horror', 'Uncommon',
'When Hidden Horror comes into play, choose and discard a creature card from your hand.  If you don''t, sacrifice Hidden Horror',
NULL, 4, 4, NULL, 'Clint Langley', 137);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 144, 'Lightly Played', 0.24);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Mischievous Poltergeist', '2B', 3, 'Creature — Ghost', 'Uncommon',
'Flying
Pay 1 life:  Regenerate Mischievous Poltergeist.',
'"The past is a ghost that haunts you from the moment it exists until the moment you don''t."—Gerrard of the Weatherlight', 1, 1, NULL, 'Di''Terlizzi', 144);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 216, 'Lightly Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Wall of Fire', '1RR', 3, 'Creature — Wall', 'Uncommon',
'(Walls can''t attack.)
R:  Wall of Fire gets +1/+0 until end of turn.',
'"Struggle, and you will only fan the flames."—Talibah, embermage', 0, 5, NULL, 'Richard Thomas', 216);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 220, 'Moderately Played', 0.13);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Creeping Mold', '2GG', 4, 'Sorcery', 'Uncommon',
'Destroy target artifact, land, or enchantment.',
'"Mold could catch you."—Suq''Ata insult', NULL, NULL, NULL, 'David Seeley', 220);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 5, 'Moderately Played', 0.18);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Armored Pegasus', '1W', 2, 'Creature — Pegasus', 'Common',
'Flying',
'"Asked how it survived a run-in with a bog imp, the pegasus just shook its mane and burped"', 1, 2, NULL, 'Andrew Robinson', 5);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 3, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Ardent Militia', '4W', 5, 'Creature — Soldier', 'Uncommon',
'Attacking doesn''t cause Ardent Militia to tap',
'"Some fight for honor and some for gold, but the militia fight for hearth and home."', 2, 5, NULL, 'Zina Saunders', 3);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 6, 'Heavily Played', 0.22);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Castle', '3W', 4, 'Enchantment', 'Uncommon',
'Untapped creatures you control get +0/+2.',
'"Hang out our banners on the outward walls; /The cry is still, ''They come''; our castle''s strength /Will laugh a siege to scorn."—William Shakespeare, Macbeth', NULL, NULL, NULL, 'Dameon Willich', 6);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 12, 'Moderately Played', 0.13);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Circle of Protection:  White', '1W', 2, 'Enchantment', 'Common',
'1:  The next time a white source of your choice would deal damage to you this turn, prevent that damage.',
NULL, NULL, NULL, NULL, 'Gerry Grace', 12);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 15, 'Moderately Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'D''Avenant Archer', '2W', 3, 'Creature — Soldier', 'Common',
'T:  D''Avenant Archer deals 1 damage to target attacking or blocking creature.',
'Avenant''s archers are also trained as poets, so that each arrow is guided by a fragment of verse.', 1, 2, NULL, 'Douglas Shuler', 15);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 16, 'Damaged', 0.14);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Disenchant', '1W', 2, 'Instant', 'Common',
'Destroy target artifact or enchantment.',
NULL, NULL, NULL, NULL, 'Brian Snoddy', 16);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 16, 'Moderately Played', 0.14);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 16, 'Lightly Played', 0.14);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 22, 'Lightly Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Healing Salve', 'W', 1, 'Instant', 'Common',
'Choose One — Target player gains 3 life; or prevent the next 3 damage to target creature or player this turn.',
NULL, NULL, NULL, NULL, 'Dan Frazier', 22);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 22, 'Lightly Played', 0.04);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 24, 'Moderately Played', 0.05);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Hero''s Resolve', '1W', 2, 'Enchant Creature', 'Common',
'Enchanted creature gets +1/+5.',
NULL, NULL, NULL, NULL, 'Pete Venters', 24);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 31, 'Lightly Played', 0.11);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Mesa Falcon', '1W', 2, 'Creature — Bird', 'Common',
'Flying
1W:  Mesa Falcon gets +0/+1 until end of turn.',
'"The faith of Serra is borne on wings of hope."—Gulsen, abbey matron', 1, 1, NULL, 'Mark Poole', 31);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 40, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Samite Healer', '1W', 2, 'Creature — Cleric', 'Common',
'T:  Prevent the next 1 damage to target creature or player this turn.',
'Healers ultimately acquire the divine gifts of spiritual and physical wholeness.  The most devout are also granted the ability to pass physical wholeness on to others.', 1, 1, NULL, 'Tom Wänerstrand', 40);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 50, 'Lightly Played', 0.02);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Venerable Monk', '2W', 3, 'Creature — Cleric', 'Common',
'When Venerable Monk comes into play, you gain 2 life.',
'His presence brings not only a strong arm but also renewed hope', 2, 2, NULL, 'D.  Alexander Gregory', 50);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 53, 'Moderately Played', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Warrior''s Honor', '2W', 3, 'Instant', 'Common',
'Creatures you control get +1/+1 until end of turn.',
NULL, NULL, NULL, NULL, 'D.  Alexander Gregory', 53);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 88, 'Lightly Played', 0.13);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Prodigal Sorcerer', '2B', 3, 'Creature — Wizard', 'Common',
'T:  Prodigal Sorcerer deals 1 damage to target creature or player.',
'Occasionally members of the Institute of Arcane Study acquire a taste for worldly pleasures.  Seldom do they have trouble finding employment', 1, 1, NULL, 'Douglas Shuler', 88);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 102, 'Moderately Played', 0.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Tidal Surge', '1U', 2, 'Sorcery', 'Common',
'Tap up to three target creatures without flying',
'"It is nature that gives us our boundaries and nature that enforces them."—Eladamri, Lord of Leaves', NULL, NULL, NULL, 'Doug Chaffee', 102);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 106, 'Moderately Played', 0.12);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Wind Drake', '2U', 3, 'Creature — Drake', 'Common',
'Flying',
'"No bird soars too high, if he soars with his own wings."—William Blake, The Marriage of Heaven and Hell', 2, 2, NULL, 'Zina Saunders', 106);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 115, 'Lightly Played', 0.24);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Blood Pet', 'B', 1, 'Creature — Thrull', 'Common',
'Sacrifice Blood Pet:  Add B to your mana pool.',
'"You are wrong," Volrath said.  "I do not hate the living.  They often prove quite useful to me."  And then he laughed.', 1, 1, NULL, 'Brom', 115);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 123, 'Moderately Played', 0.09);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Drudge Skeletons', '1B', 2, 'Creature — Skeleton', 'Common',
'B:  Regenerate Drudge Skeletons.',
'"The dead make good soldiers.  They can''t disobey orders, they never surrender, and they don''t stop fighting when a random body part falls off."—Nevinyrral, Necromancer''s Handbook', 1, 1, NULL, 'Ian Miller', 123);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 125, 'Lightly Played', 0.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Enfeeblement', 'BB', 2, 'Enchant Creature', 'Common',
'Enchanted creature gets -2/-2',
'"If it is weak, either kill it or ignore it.  Anything else honors it."—Kaervek', NULL, NULL, NULL, 'John Bolton', 125);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 164, 'Near Mint', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Anaba Bodyguard', '3R', 4, 'Creature — Minotaur', 'Common',
'First Strike',
'"Not all minotaurs are tribal.  Some are freelance."—Eron the Relentless', 2, 3, NULL, 'Anson Maddocks', 164);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 178, 'Near Mint', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Fit of Rage', '1R', 2, 'Sorcery', 'Common',
'Target creature gets +3/+3 and gains first strike until end of turn.',
'"Anger is fleeting; remorse is eternal."—Karn, silver golem', NULL, NULL, NULL, 'Douglas Shuler', 178);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 193, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Lightning Blast', '3R', 4, 'Instant', 'Common',
'Lightning Blast deals 4 damage to target creature or player.',
'"Those who fear the darkness have never seen what the light can do."—Selenia, dark angel', NULL, NULL, NULL, 'Richard Thomas', 193);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 199, 'Moderately Played', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Pyrotechnics', '4R', 5, 'Sorcery', 'Common',
'Pyrotechnics deals 4 damage divided any way you choose among any number of target creatures and/or players.',
'"Hi!ni!ya!  Behold the man of flint, that''s me!/Four lightnings zigzag from me, strike and return."—Navajo war chant', NULL, NULL, NULL, 'Anson Maddocks', 199);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 203, 'Moderately Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Sabretooth Tiger', '2R', 3, 'Creature — Tiger', 'Common',
'First strike',
'"I fear anything with teeth measured in handspans!"—Norin the Wary"', 2, 1, NULL, 'Melissa A.  Benson', 203);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 206, 'Moderately Played', 0.19);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Shock', 'R', 1, 'Instant', 'Common',
'Shock deals 2 damage to target creature or player.',
'Lightning tethers souls to the world.—Kor saying', NULL, NULL, NULL, 'Randy Gallegos', 206);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 211, 'Moderately Played', 0.05);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Tremor', 'R', 1, 'Sorcery', 'Common',
'Tremor deals 1 damage to each creature without flying',
'"Where do you run when the earth becomes your enemy?"—Naimag, Femeref philosopher', NULL, NULL, NULL, 'Pete Venters', 211);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 234, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Giant Spider', '3G', 4, 'Creature — Spider', 'Common',
'Giant Spider can block as though it had flying.',
'It''s not far into the trap, as the crow flies.', 2, 4, NULL, 'Randy Gallegos', 234);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 233, 'Moderately Played', 0.07);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Giant Growth', 'G', 1, 'Instant', 'Common',
'Target creature gets +3/+3 until end of turn.',
NULL, NULL, NULL, NULL, 'Di''Terlizzi', 233);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 239, 'Moderately Played', 0.26);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Llanowar Elves', 'G', 1, 'Creature — Elf', 'Common',
'T:  Add G to your mana pool.',
'One bone broken for every twig snapped underfoot.—Llanowar penalty for trespassing.', 1, 1, NULL, 'Anson Maddocks', 239);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 243, 'Moderately Played', 0.09);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Panther Warriors', '4G', 5, 'Creature — Cat Warrior', 'Common',
NULL,
'The dogs of war are nothing compared to the cats.', 6, 3, NULL, 'Eric Peterson', 243);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 243, 'Moderately Played', 0.09);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 246, 'Lightly Played', 0.26);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Rampant Growth', '1G', 2, 'Sorcery', 'Common',
'Search your library for a basic land card and put that card into play tapped.  Then shuffle your library.',
'Rath forces plants from its surface as one presses whey from cheese.', NULL, NULL, NULL, 'Tom Kyffin', 246);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 251, 'Moderately Played', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Scaled Wurm', '7G', 8, 'Creature — Wurm', 'Common',
NULL,
'"Flourishing during the Ice Age, these wurms were the bane of all Kjeldorans.  Their great size and ferocity made them the subject of countless nightmares—Kjeldor:  Ice Civilization"', 7, 6, NULL, 'Daniel Gelon', 251);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Sixth Edition', 257, 'Moderately Played', 0.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Sixth Edition', 'Trained Armodon', '1GG', 3, 'Creature — Elephant', 'Common',
NULL,
'These are its last days.  Better to grow broad and heavy.  Better that the enemy is crushed beneath its carcass.', 3, 3, NULL, 'Gary Leach', 257);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 317, 'Moderately Played', 0.29);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Fountain of Cho', NULL, NULL, 'Land', 'Uncommon',
'Fountain of Cho comes into play tapped.
T:  Put a storage counter on Fountain of Cho.
T:  Remove any number of storage counters from Fountain of Cho:  Add one white mana to your mana pool for each storage counter removed this way.',
NULL, NULL, NULL, NULL, 'Scott Hampton', 317);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 317, 'Moderately Played', 0.29);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 317, 'Moderately Played', 0.29);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 317, 'Moderately Played', 0.29);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 65, 'Moderately Played', 0.21);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Chameleon Spirit', 0, 0, 'Creature — Illusion', 'Uncommon',
'As Chameleon Spirit comes into play, choose a color.
Chameleon Spirit''s power and toughness are each equal to the number of permanents of the chosen color your opponents control.',
NULL, 0, 0, NULL, 'Bradley Williams', 65);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 222, 'Damaged', 0.32);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Uphill Battle', '2R', 3, 'Enchantment', 'Uncommon',
'Creatures your opponents play come into play tapped.',
'Cho-Manno knew he had no choice but to ally with Gerrard.  If that''s what it took to free his people, he''d pay the price.', NULL, NULL, NULL, 'Pete Venters', 222);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 20, 'Heavily Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Fresh Volunteers', '1W', 2, 'Creature — Rebel', 'Common',
NULL,
'Every Cho-Arrim villager is a potential warrior; when they are called, they abandon their peaceful way of life and take up arms to defend it.', 2, 2, NULL, 'Jeff Miracola', 20);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 75, 'Heavily Played', 1.08);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Diplomatic Immunity', '1U', 2, 'Enchant Creature', 'Common',
'Enchanted creature can''t be the target of spells or abilities.
Diplomatic Immunity can''t be the target of spells or abilities.',
NULL, NULL, NULL, NULL, 'Terese Nielsen', 75);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 117, 'Moderately Played', 0.11);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Bog Smugglers', '1BB', 3, 'Creature — Mercenary', 'Common',
'Swampwalk (This creature is unblockable as long as defending player controls a swamp.)',
'They slide over the bog like oil across glass.', 2, 2, NULL, 'Mike Ploog', 117);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 131, 'Lightly Played', 0.10);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Deepwood Ghoul', '2B', 3, 'Creature — Zombie', 'Common',
'Pay 2 life:  Regenerate Deepwood Ghoul.',
'They feed on the living to stay undead.', 2, 1, NULL, 'Alan Pollack', 131);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 190, 'Moderately Played', 0.13);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Flaming Sword', '1R', 2, 'Enchant Creature', 'Common',
'You may play Flaming Sword any time you could play an instant.',
'It''s not Talruum crystal, but I must admit—it gets the job done.', NULL, NULL, NULL, 'Randy Gallegos', 190);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Mercadian Masques', 265, 'Heavily Played', 0.06);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Mercadian Masques', 'Rushwood Herbalist', '2G', 3, 'Creature — Spellshaper', 'Common',
'G, T, Discard a card from your hand:  Regenerate target creature.',
'When generals gather their armies, healers gather their hearts.', 2, 2, NULL, 'Terese Nielsen', 265);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Nemesis', 6, 'Near Mint', 0.16);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Nemesis', 'Defiant Falcon', '1W', 2, 'Creature — Rebel Bird', 'Common',
'Flying
4, T:  Search your library for a Rebel card with converted mana cost 3 or less and put that card into play.  Then shuffle your library.',
NULL, 1, 1, NULL, 'Heather Hudson', 6);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Nemesis', 6, 'Near Mint', 0.16);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Nemesis', 6, 'Near Mint', 0.16);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Nemesis', 6, 'Near Mint', 0.16);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Prophecy', 18, 'Near Mint', 0.23);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Prophecy', 'Reveille Squad', '2WW', 4, 'Creature — Rebel', 'Uncommon',
'Whenever you''re attacked, if Reveille Squad is untapped, you may untap all creatures you control.',
'"To arms!  To arms!  The Lion roars!"', 3, 3, NULL, 'Greg & Tim Hildebrand', 18);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Prophecy', 18, 'Near Mint', 0.23);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Invasion', 74, 'Lightly Played', 0.19);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Invasion', 'Sky Weaver', '1U', 2, 'Creature — Wizard', 'Uncommon',
'2:  Target white or black creature gains flying until end of turn.',
'"Let my wisdom give you wings."', 2, 1, NULL, 'Christopher Moeller', 74);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Invasion', 203, 'Moderately Played', 0.70);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Invasion', 'Quirion Elves', '1G', 2, 'Creature — Elf', 'Common',
'As Quirion Elves comes into play, choose a color.
T:  Add G to your mana pool.
T:  Add one mana of the chosen color to your mana pool.',
NULL, 1, 1, NULL, 'Douglas Shuler', 203);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Invasion', 224, 'Heavily Played', 0.11);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Invasion', 'Wandering Stream', '2G', 3, 'Sorcery', 'Common',
'You gain 2 life for each basic land type among lands you control',
NULL, NULL, NULL, NULL, 'Quinton Hoover', 224);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 132, 'Lightly Played', 0.23);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Planeshift', 'Mana Cylix', '1', 1, 'Artifact', 'Uncommon',
'1, T:  Add one mana of any color to your mana pool.',
'Overflowing with visions of the possible future, it lends power to those in the present.', NULL, NULL, NULL, 'Donato Giancola', 132);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 55, 'Lightly Played', 0.16);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Planeshift', 'Slay', '2B', 3, 'Instant', 'Uncommon',
'Destroy target green creature.  It can''t be regenerated.
Draw a card.',
'The elves had the edge in guile, skill, and valor.  But in the end, only sheer numbers mattered.', NULL, NULL, NULL, 'Ben Thompson', 55);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 97, 'Lightly Played', 0.23);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Planeshift', 'Cavern Harpy', 'UB', 2, 'Creature — Beast', 'Common',
'Flying
When Cavern Harpy comes into play, return a blue or black creature you control to its owner''s hand.
Pay 1 life:  Return Cavern Harpy to its owner''s hand.',
NULL, 2, 1, NULL, 'Daren Bader', 97);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 97, 'Lightly Played', 0.23);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 110, 'Lightly Played', 0.15);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Planeshift', 'Horned Kavu', 'RG', 2, 'Creature — Kavu', 'Common',
'When Horned Kavu comes into play, return a red or green creature you control to its owner''s hand.',
'"That didn''t happen naturally," said Multani.  "Rath''s overlay is interfering with the Aether itself."', 3, 4, NULL, 'Michael Sutfin', 110);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 110, 'Moderately Played', 0.15);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Planeshift', 125, 'Lightly Played', 0.16);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Planeshift', 'Silver Drake', '1WU', 3, 'Creature — Drake', 'Common',
'Flying
When Silver Drake comes into play, return a white or blue creature you control to its owner''s hand.',
NULL, 3, 3, NULL, 'Alan Pollack', 125);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Seventh Edition', 317, 'Moderately Played', 0.15);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Seventh Edition', 'Soul Net', '1', 1, 'Artifact', 'Uncommon',
'Whenever a creature is put into a graveyard from play, you may pay 1.  If you do, you gain 1 life.',
NULL, NULL, NULL, NULL, 'Ron Spencer', 317);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Seventh Edition', 270, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Seventh Edition', 'Spined Wurm', '4G', 5, 'Creature — Wurm', 'Common',
NULL,
'"I wouldn''t stand in front of that wurm, son.  ''Course, I wouldn''t stand behind it neither.  In fact, standing anywhere near that wurm''s not much of a plan.  Running, now that''s a plan!"', 5, 4, NULL, 'Carl Critchlow', 270);

INSERT INTO card(extension, collector_number, shape, worth) VALUES('Seventh Edition', 284, 'Moderately Played', 0.04);
INSERT INTO comprehensive(extension, title, mana_cost, converted_mana_cost, kind, rarity, rules_text, flavor_text, punch, toughness, loyalty, artist, collector_number) VALUES('Seventh Edition', 'Wood Elves', '2G', 3, 'Creature — Elf', 'Common',
'When Wood Elves comes into play, search your library for a forest card and put that card into play.  THen shuffle your library.',
'Every branch a crossroads, every vine a swift steed', 1, 1, NULL, 'Christopher Moeller', 284);



SELECT card.item_id AS 'Item ID', card.extension AS 'Expansion', card.collector_number AS 'Collector Number', card.shape AS 'Condition', card.worth AS 'Value', comprehensive.title AS 'Name', comprehensive.mana_cost AS 'Mana Cost', comprehensive.converted_mana_cost AS 'Converted Mana Cost', comprehensive.kind AS 'Type', comprehensive.rarity AS 'Rarity', comprehensive.rules_text AS 'Rules Text', comprehensive.flavor_text AS 'Rules Text', comprehensive.punch AS 'Power', comprehensive.toughness AS 'Toughness', comprehensive.loyalty AS 'Loyalty', comprehensive.artist AS 'Artist'
FROM card
JOIN chronology
ON card.extension = chronology.extension
JOIN comprehensive
ON card.extension = comprehensive.extension AND card.collector_number = comprehensive.collector_number
ORDER BY chronology.launch, card.extension, card.collector_number;

DROP TABLE card;
DROP TABLE comprehensive;
DROP TABLE chronology;