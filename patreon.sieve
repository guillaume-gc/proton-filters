require ["include", "environment", "variables", "relational", "comparator-i;ascii-numeric", "spamtest", "fileinto", "imap4flags"];

if allof (environment :matches "vnd.proton.spam-threshold" "*",
spamtest :value "ge" :comparator "i;ascii-numeric" "${1}")
{
    return;
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["theater", "theatre", "amphitheater", "amphitheatre", "opera", "concert", "auditorium", "stage", "playhouse", "proscenium", "orchestra", "curtain", "backstage"]) {
    fileinto "Patreon:Theater";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["arcanepunk", "magitech", "magitek", "technomancy"]) {
    fileinto "Patreon:Arcanepunk";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["arena", "colosseum", "coliseum", "gladiator", "tournament"]) {
    fileinto "Patreon:Arena";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["ash", "ashen", "cinder", "scorched", "charred", "soot", "ember"]) {
    fileinto "Patreon:Ash";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["asian", "japanese", "chinese", "korean", "pagoda", "torii", "dojo", "onsen", "bamboo", "samurai", "shogun", "ninja", "shinto", "wuxia"]) {
    fileinto "Patreon:Asian";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["tileset", "sprite", "prop"]) {
    fileinto "Patreon:Asset";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["barn", "hayloft", "stable", "farmstead", "granary", "silo"]) {
    fileinto "Patreon:Barn";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["bath", "bathhouse", "sauna", "spa", "onsen"]) {
    fileinto "Patreon:Bath";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["battlefield", "battleground", "warzone", "frontline", "skirmish"]) {
    fileinto "Patreon:Battlefield";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["beach", "shore", "shoreline", "coast", "coastal", "seaside", "tidal", "seashore"]) {
    fileinto "Patreon:Beach";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["bestiary", "compendium"]) {
    fileinto "Patreon:Bestiary";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["flesh", "skeleton", "skeletal", "bone", "organ", "intestine", "ribcage", "sinew", "viscera", "anatomical", "marrow", "corpse"]) {
    fileinto "Patreon:Bio";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["boss", "lair"]) {
    fileinto "Patreon:Boss";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["bridge", "drawbridge", "overpass", "viaduct", "footbridge", "crossing"]) {
    fileinto "Patreon:Bridge";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["camp", "campsite", "campfire", "encampment", "bivouac", "tent", "caravan", "basecamp"]) {
    fileinto "Patreon:Camp";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["casino", "gambling", "poker", "roulette", "betting", "saloon"]) {
    fileinto "Patreon:Casino";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["chase", "pursuit", "getaway"]) {
    fileinto "Patreon:Chase";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["cliff", "cliffside", "precipice", "bluff", "crag", "escarpment", "ledge", "ravine", "gorge", "chasm"]) {
    fileinto "Patreon:Cliff";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["cyberpunk", "neon", "dystopian", "hacker", "cyborg", "megacorp", "cybernetic", "synthwave", "shadowrun"]) {
    fileinto "Patreon:Cyberpunk";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["drow", "underdark", "lolth", "menzoberranzan"]) {
    fileinto "Patreon:Dark Elven";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["desert", "dune", "oasis", "arid", "sandstorm", "wasteland", "badlands", "canyon"]) {
    fileinto "Patreon:Desert";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["druid", "druidic", "henge", "moonwell"]) {
    fileinto "Patreon:Druid";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["dungeon", "labyrinth", "maze", "catacomb", "tomb", "underground"]) {
    fileinto "Patreon:Dungeon";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["dwarf", "dwarven", "dwarves", "dwarfs", "dwarvish", "forge", "smithy", "anvil", "ironforge"]) {
    fileinto "Patreon:Dwarf";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["eldritch", "occult", "cult", "cultist", "ritual", "pentagram", "lovecraft", "aberration", "unholy", "elder"]) {
    fileinto "Patreon:Eldritch";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["elven", "elvish", "elf", "elves", "lothlorien"]) {
    fileinto "Patreon:Elven";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["fey", "feywild", "fairy", "faerie", "pixie", "fae", "seelie", "unseelie", "whimsical"]) {
    fileinto "Patreon:Fey";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["farmland", "farm", "harvest", "crop", "pasture", "vineyard", "orchard", "plantation", "cornfield", "hayfield", "windmill"]) {
    fileinto "Patreon:Field";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["airship", "skyborne", "levitating"]) {
    fileinto "Patreon:Fly";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["forest", "woodland", "woods", "thicket", "grove", "glade", "timberland", "copse"]) {
    fileinto "Patreon:Forest";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["fort", "fortress", "fortification", "stronghold", "bastion", "citadel", "keep", "rampart", "palisade", "outpost", "garrison", "bulwark", "battlement"]) {
    fileinto "Patreon:Fort";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["graveyard", "cemetery", "tombstone", "gravestone", "mausoleum", "crypt", "tomb", "headstone", "necropolis", "ossuary", "sepulcher"]) {
    fileinto "Patreon:Graveyard";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["greenskin", "orc", "goblin", "hobgoblin", "bugbear", "orcish", "goblinoid", "troll", "ogre", "warg", "waaagh"]) {
    fileinto "Patreon:Greenskin";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["haunted", "ghost", "ghostly", "phantom", "specter", "spectral", "poltergeist", "spooky", "eerie", "wraith", "banshee", "apparition"]) {
    fileinto "Patreon:Haunted";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["sinkhole", "pit", "burrow", "crater", "abyss", "crevasse", "hollow", "cenote"]) {
    fileinto "Patreon:Hole";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["house", "cottage", "cabin", "hut", "homestead", "dwelling", "residence", "shack", "hovel", "bungalow", "lodge", "townhouse"]) {
    fileinto "Patreon:House";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["hud", "overlay", "foundry", "module"]) {
    fileinto "Patreon:HUD";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["ice", "icy", "frozen", "glacier", "iceberg", "permafrost", "frost"]) {
    fileinto "Patreon:Ice";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["isle", "island", "archipelago", "atoll", "islet"]) {
    fileinto "Patreon:Isle";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["helmet", "helm", "gauntlet", "glove", "boot", "greave", "amulet", "necklace", "cloak", "cape", "belt", "bracelet", "bracer", "crown", "circlet", "tiara", "shield", "armor", "armour", "robe", "staff", "wand", "sword", "weapon", "potion"]) {
    fileinto "Patreon:Item";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["jail", "prison", "prisoner", "shackle", "stockade", "penitentiary", "cage", "oubliette"]) {
    fileinto "Patreon:Jail";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["jungle", "rainforest", "tropical", "canopy", "vine", "safari", "primal", "overgrown"]) {
    fileinto "Patreon:Jungle";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["lava", "magma", "volcanic", "volcano", "molten", "eruption", "caldera", "obsidian", "igneous", "hellfire"]) {
    fileinto "Patreon:Lava";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["manor", "mansion", "estate", "chateau", "palace", "ballroom", "villa"]) {
    fileinto "Patreon:Manor";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["overland", "hexmap", "kingdom", "realm", "province", "atlas", "cartography", "territory"]) {
    fileinto "Patreon:Map World";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["mega", "megaproject", "multipart"]) {
    fileinto "Patreon:Megaproject";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["meteor", "meteorite", "asteroid", "comet", "starfall", "skyfall"]) {
    fileinto "Patreon:Meteor";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["mist", "misty", "fog", "foggy", "haze", "hazy", "shroud", "murky"]) {
    fileinto "Patreon:Mist";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["modding", "plugin", "addon", "extension"]) {
    fileinto "Patreon:Modding";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["mountain", "peak", "summit", "alpine", "highland", "mountainside", "foothill"]) {
    fileinto "Patreon:Mountain";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["museum", "gallery", "exhibit", "exhibition", "curator"]) {
    fileinto "Patreon:Museum";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["music", "soundtrack", "ost", "ambience", "ambient", "playlist"]) {
    fileinto "Patreon:Music";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["nobility", "noble", "royal", "royalty", "king", "queen", "prince", "princess", "duke", "duchess", "baron", "baroness", "court", "throne", "regent"]) {
    fileinto "Patreon:Nobility";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["plain", "plains", "grassland", "steppe", "prairie", "savanna", "savannah", "flatland", "tundra", "heath", "moor"]) {
    fileinto "Patreon:Plain";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["port", "harbor", "harbour", "dock", "wharf", "pier", "marina", "quay", "jetty", "shipyard", "anchorage", "seaport"]) {
    fileinto "Patreon:Port";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["quarry", "mine", "mining", "excavation", "mineshaft", "ore"]) {
    fileinto "Patreon:Quarry";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["temple", "church", "cathedral", "basilica", "shrine", "sanctuary", "abbey", "monastery", "cloister", "priory", "chapel", "oratory", "holy", "sacred"]) {
    fileinto "Patreon:Religious";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["river", "riverbank", "riverbed", "stream", "creek", "brook", "tributary", "waterfall", "rapids", "ford", "riverside"]) {
    fileinto "Patreon:River";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["road", "trail", "path", "highway", "crossroad", "crossroads", "cobblestone", "waypoint", "milestone"]) {
    fileinto "Patreon:Road";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["room", "chamber", "hall", "quarters", "bedroom", "study", "library"]) {
    fileinto "Patreon:Room";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["ruin", "ruins", "ruined", "crumbling", "abandoned", "derelict", "dilapidated", "remnant"]) {
    fileinto "Patreon:Ruin";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["school", "academy", "university", "college", "classroom", "campus", "dormitory"]) {
    fileinto "Patreon:School";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["hideout", "hideaway", "lair", "smuggler", "safehouse"]) {
    fileinto "Patreon:Secret Base";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["sewer", "sewage", "drain", "drainage", "undercity", "gutter"]) {
    fileinto "Patreon:Sewer";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["ship", "galleon", "frigate", "pirate", "vessel", "warship", "schooner", "brigantine", "longship", "flagship", "shipwreck", "nautical", "seafaring"]) {
    fileinto "Patreon:Ship";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["shop", "market", "bazaar", "merchant", "vendor", "store", "emporium", "marketplace", "blacksmith", "apothecary", "herbalist"]) {
    fileinto "Patreon:Shop";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["siege", "trebuchet", "catapult", "besieged", "breach"]) {
    fileinto "Patreon:Siege";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["snow", "snowy", "snowfall", "blizzard", "snowstorm", "winter", "wintry", "snowdrift"]) {
    fileinto "Patreon:Snow";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["space", "spaceship", "starship", "orbital", "nebula", "galaxy", "cosmos", "sci-fi", "scifi"]) {
    fileinto "Patreon:Space";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["statue", "monument", "monolith", "obelisk", "idol", "effigy", "colossus", "sculpture", "memorial"]) {
    fileinto "Patreon:Statue";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["steampunk", "clockwork", "gear", "cog", "dirigible", "zeppelin", "brass", "victorian", "automaton"]) {
    fileinto "Patreon:Steampunk";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["swamp", "marsh", "bog", "bayou", "wetland", "fen", "mire", "quagmire", "marshland", "mangrove", "boggy"]) {
    fileinto "Patreon:Swamp";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["tavern", "inn", "pub", "alehouse", "taproom", "brewery"]) {
    fileinto "Patreon:Tavern";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["titan", "colossus", "kaiju", "behemoth", "leviathan", "colossal", "gargantuan", "titanic", "golem"]) {
    fileinto "Patreon:Titan";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["token", "portrait"]) {
    fileinto "Patreon:Token";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["tower", "lighthouse", "spire", "turret", "minaret"]) {
    fileinto "Patreon:Tower";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["toxic", "poison", "poisonous", "venomous", "acid", "acidic", "corrosive", "blight", "blighted", "contaminated", "noxious", "miasma", "plague"]) {
    fileinto "Patreon:Toxic";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["treehouse", "tree", "oak", "willow", "banyan", "yggdrasil"]) {
    fileinto "Patreon:Tree";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["underground", "subterranean", "cavern", "cave", "grotto", "underworld", "stalactite", "stalagmite"]) {
    fileinto "Patreon:Underground";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["urban", "city", "town", "street", "alley", "alleyway", "district", "borough", "downtown", "plaza", "slum", "metropolis", "rooftop"]) {
    fileinto "Patreon:Urban";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["underwater", "ocean", "sea", "lake", "pond", "aquatic", "submerged", "coral", "reef", "oceanic", "sunken"]) {
    fileinto "Patreon:Water";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["vehicle", "wagon", "cart", "carriage", "chariot", "sled", "sleigh", "mech", "tank", "locomotive", "train"]) {
    fileinto "Patreon:Vehicule";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["adventure", "campaign", "shot", "quest", "module", "encounter", "storyline", "scenario", "prologue", "epilogue"]) {
    fileinto "Patreon:Adventure";
}

if address :is "From" "oskarpotocki@creator.patreon.com" {
    fileinto "Patreon:Mod";
}

if address :is "From" "mcromusic@creator.patreon.com" {
    fileinto "Patreon:Music";
}

if allof (address :domain :matches "From" "*patreon.com",
header :contains "Subject" ["printing", "factory", "manufacture", "workshop", "foundry", "refinery", "mill", "loom", "kiln", "smelter", "furnace", "assembly", "warehouse", "industrial", "craftsman", "artisan", "press", "tannery", "distillery", "smokehouse"]) {
    fileinto "Patreon:Factory";
}