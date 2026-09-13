extends Control

var Foil: bool
var Slot: int
var Num: int
var Packs = 0
var Money = 0
var Max_num: int
var Rarity: String
var Card: String
var Set = {
	
}

var Slots = {
	1: "Card_1",
	2: "Card_2",
	3: "Card_3",
	4: "Card_4",
	5: "Card_4",
	6: "Card_4",
	7: "Card_4",
	8: "Card_4",
	9: "Card_4",
	10: "Card_4",
	11: "Card_4",
	12: "Card_4",
	13: "Card_4",
	14: "Card_4"
}

var List = {
	"Cards" = {
	1: "Cavalier of Dawn", 2: "Thoughtcast", 3: "Whir of Invention",
	4: "Bone Miser", 5: "Lord of the Undead", 6: "Chandra's Ignition",
	7: "Galvanic Blast", 8: "Pathbreaker Ibex", 9: "Chrome Mox",
	10: "Skysovereign, Consul FLagship"
	}
}

var Set_aetherdrift = {
		"Mythic": {
			1: "The Last Ride", 2: "Hazoret, Godseeker", 3: "Ketramose, the New Dawn",
			4: "Mimeoplasm, Revered One", 5: "Thunderous Velocipede", 6: "Brightglass Gearhulk",
			7: "Chandra, Spark Hunter", 8: "Mu Yanling, Wind Rider", 9: "Oildeep Gearhulk",
			10: "the Aetherspark", 11: "Coalstoke Gearhulk", 12: "Loot, the Pathfinder",
			13: "Riptide Gearhulk", 14: "Sab-Sunen, Luxa Embodied", 15: "Salvation Engine",
			16: "The Speed Demon", 17: "March of the World Ooze", 18: "Pyrewood Gearhulk",
			19: "Radiant Lotus", 20: "Valor's Flagship"
			},
		"Rare": {
			1: "Bleachbone Verge", 2: "Marketback Walker" , 3: "Muraganda Raceway" ,
			4: "Riverpyre Verge" , 5: "Sunbillow Verge" , 6: "Wastewood Verge" ,
			7: "Willowrush Verge" , 8: "Basri, Tomorrow's Champion" , 9: "Burnout Bashtronaut" ,
			10: "District Mascot" , 11: "Gas Guzzler" , 12: "Mindspring Merfolk" ,
			13: "Voyager Glidecar" , 14: "Bloodghast" , 15: "Bulwark Ox" ,
			16: "Draconautics Engineer" , 17: "Kolodin, Trimuph Caster" , 18: "Mandicant Core, Guidelight" ,
			19: "Quag Feast" , 20: "Redshift, Rocketeer Engineer" , 21: "Riverchurn Monument" ,
			22: "Sita Varma, Masked Racer" , 23: "Skyseer's Chariot" , 24: "Vnwxt, Verbose Host" ,
			25: "Webstrike Elite" , 26: "Winter. Cursed Rider" , 27: "Zahur, Glory's Past" ,
			28: "Afterburner Expert" , 29: "count on Luck" , 30: "Fearless Swashbuckler" ,
			31: "Gastal Thrillroller" , 32: "Howlsquad Heavy" , 33: "Lifecraft Engine" ,
			34: "Lumbering Worldwagon" , 35: "Monument to Endurance" , 36: "Perilous Snare" ,
			37: "Regal Imperiosaur" , 38: "Repurposing Bay" , 39: "Thopter Fabricator" ,
			40: "Unstoppable Plan" , 41: "Boommobile" , 42: "Captain Howler, Sea Scourge" ,
			43: "Caradora, Heart of Alacria" , 44: "Cryptcaller Chariot" , 45: "Cursecloth Wrappings" ,
			46: "Debris Beetle" , 47: "Far Fortune, End Boss" , 48: "Gonti,Night Minister" ,
			49: "Oviya, Automech Artisan" , 50: "Waxen Shapethief" , 51: "Agonasaur Rex" ,
			52: "Daretti, Rocketeer Engineer" , 53: "Explosive Getaway" , 54: "Guardian Sunmare" ,
			55: "Possession Engine" , 56: "Spectacular Pileup" , 57: "Aatchik, Emerald Radian" ,
			58: "Full Throttle" , 59: "Samut, the Driving Force" , 60: "Demonic Junker" ,
			},
		"Uncommon": {
			1: "Amonket Raceway", 2: "Country Roads" , 3: "Foul Roads" ,
			4: "Reef Roads" , 5: "Rocky Roads" , 6: "Wild Roads" ,
			7: "Defend the Rider" , 8: "Greasewrench Goblin" , 9: "Hellish sideswipe" ,
			10: "Intimidation Tactics" , 11: "Locust Spray" , 12: "Marauding Mako" ,
			13: "Molt Tender" , 14: "Nesting Bot" , 15: "Plow Through" ,
			16: "Point the Way" , 17: "Road Rage" , 18: "Spell Pierce" ,
			19: "Broodheart Engine" , 20: "Caelorna, Coral Tyrant" , 21: "Canyon Vaulter" ,
			22: "Cloudspire Coordinator" , 23: "Diversion Unit" , 24: "Dredger's Insight" ,
			25: "Dune Drifter" , 26: "Gallant Strike" , 27: "Gastal Thrillseeker" ,
			28: "Gloryheath Lynx" , 29: "Greenbait Guardian" , 30: "Lagorin, Soul of Alacria" ,
			31: "Momentum Breaker" , 32: "Pit Automaton" , 33: "Rangers' Refueler" ,
			34: "Rocketeer Boostbuggy" , 35: "Scrounging Skyray" , 36: "Skycrash" ,
			37: "Skyserpent Seeker" , 38: "Slick Imitator" , 39: "Sundial, Dawn Tyrant" ,
			40: "Tyrox, Saurid Tyrant" , 41: "Wretched Doll" , 42: "Adrenaline Jockey" ,
			43: "Aether Syphon" , 44: "Air Response Unit" , 45: "Boom Scholar" ,
			46: "Boosted Sloop" , 47: "Broadside Barrage" , 48: "Carrion Cruiser" ,
			49: "Cloudspire Captain" , 50: "Elvish Refueler" , 51: "Embalmed Ascendant" ,
			52: "Fuel to the Flames" , 53: "Gastal Rider" , 54: "Haunted Hellride" ,
			55: "Hour of Victory" , 56: "Kalakscion, Hunger Tyrant" , 57: "Marshals' Pathcruiser" ,
			58: "Outpace Oblivion" , 59: "Pacesetter Paragon" , 60: "Rangers' Aetherhive" , 
			61: "Rise from the Wreck", 62: "Roadside Assistance" , 63: "Roadside Blowout" ,
			64: "Rover Blades" , 65: "Stock Up" , 66: "Transit Mage" ,
			67: "Veteran Beastrider" , 68: "Alacrian Armory" , 69: "Ancient Vendetta" ,
			70: "Apocalypse Runner" , 71: "Cloudspire Skycycle" , 72: "Endrider Spikespitter" ,
			73: "Fang Guardian" , 74: "Fang-Druid Summoner" , 75: "Guidlight Synergist" ,
			76: "Ooze Patrol" , 77: "Pride of the Road" , 78: "Racer's Scoreboard" ,
			79: "Reckless Velocitaur" , 80: "Sabotage Strategist" , 81: "Tune Up" ,
			82: "Wickerfolk Indomitable" , 83: "Back On Track" , 84: "Earthrumbler" ,
			85: "Haunt the Network" , 86: "Memory Guardian" , 87: "Risen Necroregent" ,
			88: "Spikeshell Harrier" , 89: "Spire Mechcycle" , 90: "Terrian, World Tyrant" ,
			91: "Trade the Helm" , 92: "Unswerving Sloth" , 93: "Autarch Mammoth" ,
			94: "Detention Chariot" , 95: "Dracosaur Auxillary" , 96: "Guidlight Pathmaker" ,
			97: "Thundering Broodwagon" , 98: "Push the Limit" , 99: "Shefat Archfiend" ,
			100: "Voyage Home"
			},
		"Common": {
			1: "Avishkar Raceway", 2: "Bloodfell Caves" , 3: "Blossoming Sands" ,
			4: "Dismal Backwater" , 5: "Forest" , 6: "Island" ,
			7: "Jungle Hollow" , 8: "Mountain" , 9: "Night Market" ,
			10: "Plains" , 11: "Rugged Highlands" , 12: "Scoured Barrens" ,
			13: "Swamp" , 14: "Swiftwater Cliffs" , 15: "Thornwood Falls" ,
			16: "Tranquil Cove" , 17: "Wind-Scarred Crag" , 18: "Bounce Off" ,
			19: "Brightfield Glider" , 20: "Dynamite Diver" , 21: "Engine Rat" ,
			22: "Grim Bauble" , 23: "Lightshield Parry" , 24: "Lightwheel Enhancements" ,
			25: "Pedal to the Metal" , 26: "Scrap Compactor" , 27: "Stampeding Scurryfoot" ,
			28: "Beastrider Vanguard" , 29: "Burner Rocket" , 30: "Collision Course" ,
			31: "Deathless Pilot" , 32: "Endrider Catalyst" , 33: "Gilded Ghoda" ,
			34: "Guidelight Matrix" , 35: "Guidelight Optimizer" , 36: "Interface Ace" ,
			37: "Jibbirik Omnivore" , 38: "Kickoff Celebrations" , 39: "Leonin Surveyor" ,
			40: "Lightning Strike" , 41: "Maximum Overdrive" , 42: "Midnight Mangler" ,
			43: "Prowcatcher Specialist" , 44: "Run Over" , 45: "Silken Strength" ,
			46: "Skystreak Engineer" , 47: "Spectral Interference" , 48: "Spotcycle Scouter" ,
			49: "Stall Out" , 50: "Ticket Tortoise" , 51: "Venomsac Lagac" ,
			52: "Walking Sarcophagus" , 53: "Wreckage Wickerfolk" , 54: "Aetherjacket" ,
			55: "Bestow Greatness" , 56: "Broken Wings" , 57: "Camera Launcher" ,
			58: "Daring Mechanic" , 59: "Flood the Engine" , 60: "Gastal Blockbuster" ,
			61: "Glitch Ghost Surveyor", 62: "Goblin Surveyor" , 63: "Grim Javelineer" ,
			64: "Keen Buchaneer" , 65: "Lotusguard Disciple" , 66: "Loxodon Surveyor" ,
			67: "Magmakin Surveyor" , 68: "Mutant Surveyor" , 69: "Pothole Mole" ,
			70: "Risky Shortcut" , 71: "Spin Out" , 72: "Starting Column" ,
			73: "Veloheart Bike" , 74: "Voyager Quickwelder" , 75: "Brightfield Mustang" ,
			76: "Clamorous Ironclad" , 77: "Crash and Burn" , 78: "Hazard of the Dunes" ,
			79: "Howler's Heavy" , 80: "Nimble Thopterist" , 81: "Pactdoll Terror" ,
			82: "Ripclaw Wrangler" , 83: "Swiftwing Assailant" , 84: "Trip Up" ,
			85: "Wreck Remover" , 86: "Alacrian Jaguar" , 87: "Broadcast Rambler" ,
			88: "Hulldrifter" , 89: "Rider's End" , 90: "Skybox Ferry" ,
			91: "Streaking Oilgorger" , 92: "Syphon Fuel" , 93: "Thunderhead Gunner" ,
			94: "Chitin Gravestalker" , 95: "Migrating Ketradon" , 96: "Gearseeker Serpent" ,
			}
			}

func _ready() -> void:
	Set = Set_aetherdrift
	$Pop_1.visible = false

func _on_button_pressed() -> void:
	Gen_pack()
	Increase_money_spent()
	Update_paste_text()

func Update_paste_text():
	$Pop_1/TextEdit.text ="You can copy and paste this into Manabox, Archidekt, Etc.:
	1 "+Slots[1]+"
	1 "+Slots[2]+"
	1 "+Slots[3]+"
	1 "+Slots[4]+"
	1 "+Slots[5]+"
	1 "+Slots[6]+"
	1 "+Slots[7]+"
	1 "+Slots[8]+"
	1 "+Slots[9]+"
	1 "+Slots[10]+"
	1 "+Slots[11]+"
	1 "+Slots[12]+"
	1 "+Slots[13]+"
	1 "+Slots[14]

func Increase_money_spent():
	Money = Money + 4.57
	$Money_tracker/Label.text = "$" + str(Money)
	Packs = Packs + 1
	$Pack_tracker/Label.text = str(Packs)

func Gen_pack():
	Set_slot_1()
	Set_slot_2()
	Set_slot_3()
	Set_slot_4()
	Set_slot_5()
	Set_slot_6()
	Set_slot_7()
	Set_slot_8()
	Set_slot_9()
	Set_slot_10()
	Set_slot_11()
	Set_slot_12()
	Set_slot_13()
	Set_slot_14()
	Set_slot_labels()

func Set_slot_labels():
	$Slot_1_label.text = Slots[1]
	$Slot_1_label2.text = Slots[2]
	$Slot_1_label3.text = Slots[3]
	$Slot_1_label4.text = Slots[4]
	$Slot_1_label5.text = Slots[5]
	$Slot_1_label6.text = Slots[6]
	$Slot_1_label7.text = Slots[7]
	$Slot_1_label8.text = Slots[8]
	$Slot_1_label9.text = Slots[9]
	$Slot_1_label10.text = Slots[10]
	$Slot_1_label11.text = Slots[11]
	$Slot_1_label12.text = Slots[12]
	$Slot_1_label13.text = Slots[13]
	$Slot_1_label14.text = Slots[14]

func Gen_num():
	Num = randi_range(1,Max_num)

func Gen_mythic():
	Max_num = 20
	Gen_num()
	Card = Set ["Mythic"][Num]

func Gen_rare():
	Max_num = 60
	Gen_num()
	Card = Set ["Rare"][Num]

func Gen_uncommon():
	Max_num = 100
	Gen_num()
	Card = Set ["Uncommon"][Num]

func Gen_common():
	Max_num = 96
	Gen_num()
	Card = Set ["Common"][Num]

func M_or_r():
	Max_num = 4
	Gen_num()
	if Num == 4:
		Rarity = "Mythic"
	else:
		Rarity = "Rare"

func Gen_rarity():
	Max_num = 276
	Gen_num()
	if Num <= 20:
		Rarity = "Mythic"
	elif Num >= 21 and Num <= 80:
		Rarity = "Rare"
	elif Num >= 81 and Num <= 180:
		Rarity = "Uncommon"
	elif Num >= 181:
		Rarity = "Common"

func Gen_land():
	Max_num = 5
	Gen_num()
	if Num == 1:
		Card = "Plains"
	elif Num == 2:
		Card = "Island"
	elif Num == 3:
		Card = "Swamp"
	elif Num == 4:
		Card = "Mountain"
	elif Num == 5:
		Card = "Forest"

func C_or_l():
	Max_num = 200
	Gen_num()
	if Num <= 175:
		Gen_common()
	else:
		Gen_list()

func Gen_list():
	Max_num = 10
	Gen_num()
	Card = List ["Cards"][Num]

func Set_slot_1():
	Gen_common()
	Slots[1] = Card

func Set_slot_2():
	Gen_common()
	Slots[2] = Card

func Set_slot_3():
	Gen_common()
	Slots[3] = Card

func Set_slot_4():
	Gen_common()
	Slots[4] = Card

func Set_slot_5():
	Gen_common()
	Slots[5] = Card

func Set_slot_6():
	Gen_common()
	Slots[6] = Card

func Set_slot_7():
	C_or_l()
	Slots[7] = Card

func Set_slot_8():
	Gen_uncommon()
	Slots[8] = Card

func Set_slot_9():
	Gen_uncommon()
	Slots[9] = Card

func Set_slot_10():
	Gen_uncommon()
	Slots[10] = Card

func Set_slot_11():
	Gen_land()
	Slots[11] = Card

func Set_slot_12():
	Gen_rarity()
	if Rarity == "Mythic":
		Gen_mythic()
	elif Rarity == "Rare":
		Gen_rare()
	elif Rarity == "Uncommon":
		Gen_uncommon()
	elif Rarity == "Common":
		Gen_common()
	Slots[12] = Card

func Set_slot_13():
	Gen_rarity()
	if Rarity == "Mythic":
		Gen_mythic()
	elif Rarity == "Rare":
		Gen_rare()
	elif Rarity == "Uncommon":
		Gen_uncommon()
	elif Rarity == "Common":
		Gen_common()
	Slots[13] = Card

func Set_slot_14():
	M_or_r()
	if Rarity == "Mythic":
		Gen_mythic()
	elif Rarity == "Rare":
		Gen_rare()
	Slots[14] = Card

func _on_button_2_pressed() -> void:
	Money = 0
	Packs = 0
	$Money_tracker/Label.text = "$" + str(Money)
	$Pack_tracker/Label.text = str(Packs)

func _on_pop_button_pressed() -> void:
	if $Pop_1.visible == true:
		$Pop_1.visible = false
	else:
		$Pop_1.visible = true
