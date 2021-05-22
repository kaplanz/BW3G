map: MACRO
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: from constants/landmark_constants.asm
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	dw MapGroup_Dungeons    ;  3
	dw MapGroup_CableClub   ; 20
	dw MapGroup_Humilau		; 27
	dw MapGroup_Lacunosa    ; 28
	dw MapGroup_Undella     ; 29
	dw MapGroup_Lentimas    ; 30
	dw MapGroup_Nimbasa     
	dw MapGroup_Desert
	dw MapGroup_Castelia
	dw MapGroup_Aspertia
	dw MapGroup_Floccesy
	dw MapGroup_Virbank
	dw MapGroup_Nacrene
	dw MapGroup_Striaton
	dw MapGroup_Accumula
	dw MapGroup_P2
	dw MapGroup_Pwt
	dw MapGroup_Driftveil
	dw MapGroup_Mistralton
	dw MapGroup_Opelucid
	dw MapGroup_Icirrus
	dw MapGroup_PkmnLeague  ; XX

MapGroup_Dungeons:
	map GiantChasm1F, TILESET_CAVE, CAVE, GIANT_CHASM, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map GiantChasmRooms, TILESET_CAVE, CAVE, GIANT_CHASM, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map GiantChasmB1F, TILESET_JOHTO_EAST, ROUTE, GIANT_CHASM, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map ReversalMountain1F, TILESET_CAVE, CAVE, REVERSAL_MOUNTAIN, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map ReversalMountainB1F, TILESET_CAVE, CAVE, REVERSAL_MOUNTAIN, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map StrangeHouse1F, TILESET_TRADITIONAL_HOUSE, CAVE, STRANGE_HOUSE, MUSIC_STRANGE_HOUSE, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map StrangeHouseB1F, TILESET_TRADITIONAL_HOUSE, CAVE, STRANGE_HOUSE, MUSIC_STRANGE_HOUSE, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map StrangeHouseRooms, TILESET_TRADITIONAL_HOUSE, CAVE, STRANGE_HOUSE, MUSIC_STRANGE_HOUSE, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map LostlornForest, TILESET_FOREST, CAVE, LOSTLORN_FOREST, MUSIC_FOREST, TRUE, PALETTE_NITE, FISHGROUP_POND
	map RelicCastle1F, TILESET_JOHTO_DESERT, CAVE, RELIC_CASTLE, MUSIC_DESERT_RESORT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RelicCastleB1F, TILESET_JOHTO_DESERT, CAVE, RELIC_CASTLE, MUSIC_DESERT_RESORT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RelicCastleB2F, TILESET_JOHTO_DESERT, CAVE, RELIC_CASTLE, MUSIC_DESERT_RESORT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RelicCastleB3F, TILESET_JOHTO_DESERT, CAVE, RELIC_CASTLE, MUSIC_DESERT_RESORT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RelicCastleB4F, TILESET_JOHTO_DESERT, CAVE, RELIC_CASTLE, MUSIC_DESERT_RESORT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaParkCoasterRoom, TILESET_GAME_CORNER, DUNGEON, NIMBASA_PARK, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map NimbasaParkRunway, TILESET_GAME_CORNER, DUNGEON, NIMBASA_PARK, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map NimbasaParkBasement, TILESET_FACILITY, DUNGEON, NIMBASA_PARK, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map VirbankComplexElevator, TILESET_MART, INDOOR, VIRBANK_COMPLEX, MUSIC_P2_LAB, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankComplexB1F, TILESET_FACILITY, DUNGEON, VIRBANK_COMPLEX, MUSIC_P2_LAB, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankComplexB2F, TILESET_FACILITY, DUNGEON, VIRBANK_COMPLEX, MUSIC_P2_LAB, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PinwheelForest, TILESET_FOREST, DUNGEON, PINWHEEL_FOREST, MUSIC_FOREST, TRUE, PALETTE_NITE, FISHGROUP_POND
	map WellspringCave1F, TILESET_CAVE, CAVE, WELLSPRING_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map WellspringCaveB1F, TILESET_CAVE, CAVE, WELLSPRING_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map P2LabEntrance, TILESET_FACILITY, DUNGEON, P2_LAB, MUSIC_P2_LAB, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map P2Lab, TILESET_FACILITY, CAVE, P2_LAB, MUSIC_P2_LAB, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map SeasideCave1F, TILESET_CAVE, CAVE, SEASIDE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map SeasideCaveB1F, TILESET_CAVE, CAVE, SEASIDE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map CasteliaSewers, TILESET_UNDERGROUND, CAVE, CASTELIA_SEWERS, MUSIC_SEWERS, TRUE, PALETTE_NITE, FISHGROUP_POND
	map CasteliaSewersRooms, TILESET_UNDERGROUND, CAVE, CASTELIA_SEWERS, MUSIC_SEWERS, TRUE, PALETTE_NITE, FISHGROUP_POND
	map RelicPassageFront, TILESET_CAVE, CAVE, RELIC_PASSAGE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map RelicPassageBack, TILESET_CAVE, CAVE, RELIC_PASSAGE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map ChargestoneCave1F, TILESET_CAVE, CAVE, CHARGESTONE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map ChargestoneCaveB1F, TILESET_CAVE, CAVE, CHARGESTONE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map ChargestoneCaveB2F, TILESET_CAVE, CAVE, CHARGESTONE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_POND
	map CelestialTower1F, TILESET_TRADITIONAL_HOUSE, DUNGEON, CELESTIAL_TOWER, MUSIC_UNOVA_TOWER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map CelestialTower, TILESET_TRADITIONAL_HOUSE, DUNGEON, CELESTIAL_TOWER, MUSIC_UNOVA_TOWER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map CelestialTowerRoof, TILESET_TRADITIONAL_HOUSE, ROUTE, CELESTIAL_TOWER, MUSIC_UNOVA_TOWER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map SeasideCaveB2F, TILESET_ICE_PATH, CAVE, SEASIDE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_DAY, FISHGROUP_DRATINI
	map SeasideCaveChamber, TILESET_CAVE, CAVE, SEASIDE_CAVE, MUSIC_UNOVA_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	
MapGroup_CableClub:
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, SPECIAL_MAP, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileTradeRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileBattleRoom, TILESET_MANSION, INDOOR, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Humilau:
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map HumilauCity, TILESET_JOHTO_BEACH, TOWN, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map HumilauMart, TILESET_MART, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map HumilauPokecenter1F, TILESET_POKECENTER, INDOOR, HUMILAU_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MarlonsHouse, TILESET_PLAYERS_HOUSE, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersNeighborsHouse, TILESET_HOUSE, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map HumilauTradeHouse, TILESET_HOUSE, INDOOR, HUMILAU_CITY, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map HumilauGym, TILESET_PORT, INDOOR, HUMILAU_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map R22, TILESET_JOHTO_BEACH, ROUTE, R_22, MUSIC_R_22, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt21, TILESET_JOHTO_BEACH, ROUTE, R_21, MUSIC_R_4, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	
MapGroup_Lacunosa:
	map Rt13, TILESET_JOHTO_BEACH, ROUTE, R_13, MUSIC_R_14, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LacunosaTown, TILESET_JOHTO_BEACH, TOWN, LACUNOSA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LacunosaMart, TILESET_MART, INDOOR, LACUNOSA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LacunosaPokecenter1F, TILESET_POKECENTER, INDOOR, LACUNOSA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt12, TILESET_JOHTO_BEACH, ROUTE, R_12, MUSIC_R_22, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LacunosaHouse, TILESET_HOUSE, INDOOR, LACUNOSA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LacunosaHouse2, TILESET_HOUSE, INDOOR, LACUNOSA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt12VillageBridgeGate, TILESET_GATE, GATE, R_12, MUSIC_R_22, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Undella:
	map Rt13UndellaGate, TILESET_GATE, GATE, UNDELLA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map UndellaTown, TILESET_JOHTO_BEACH, TOWN, UNDELLA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map UndellaPokecenter1F, TILESET_POKECENTER, INDOOR, UNDELLA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map UndellaOldRodHouse, TILESET_HOUSE, INDOOR, UNDELLA_TOWN, MUSIC_LACUNOSA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MarineTubeEntrance, TILESET_ELITE_FOUR_ROOM, INDOOR, MARINE_TUBE, MUSIC_HUMILAU_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MarineTube, TILESET_PORT, INDOOR, MARINE_TUBE, MUSIC_HUMILAU_CITY, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map Rt14, TILESET_JOHTO_BEACH, ROUTE, R_14, MUSIC_R_14, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Lentimas:
	map LentimasOutskirts, TILESET_DESERT, ROUTE, LENTIMAS_OUTSKIRTS, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LentimasTown, TILESET_DESERT, TOWN, LENTIMAS_TOWN, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map LentimasMart, TILESET_MART, INDOOR, LENTIMAS_TOWN, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LentimasPokecenter1F, TILESET_POKECENTER, INDOOR, LENTIMAS_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LentimasHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LENTIMAS_TOWN, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LentimasGym, TILESET_TRADITIONAL_HOUSE, INDOOR, LENTIMAS_TOWN, MUSIC_GYM, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map LentimasLostlornGate, TILESET_GATE, GATE, LENTIMAS_OUTSKIRTS, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LentimasAirport, TILESET_TRADITIONAL_HOUSE, INDOOR, LENTIMAS_TOWN, MUSIC_LENTIMAS_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Nimbasa:
	map NimbasaCity, TILESET_NIMBASA, TOWN, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt16, TILESET_NIMBASA, ROUTE, R_16, MUSIC_R_14, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt16LostlornGate, TILESET_GATE, GATE, R_16, MUSIC_R_14, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt16NimbasaGate, TILESET_GATE, GATE, R_16, MUSIC_R_14, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaMart, TILESET_MART, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaVitaminMart, TILESET_MART, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaBallMart, TILESET_MART, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaPokecenter1F, TILESET_POKECENTER, INDOOR, NIMBASA_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaHouse, TILESET_HOUSE, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaNameRater, TILESET_HOUSE, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt5, TILESET_NIMBASA, ROUTE, R_5, MUSIC_R_14, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt5NimbasaGate, TILESET_GATE, GATE, R_5, MUSIC_R_14, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt5BridgeGate, TILESET_GATE, GATE, R_5, MUSIC_R_14, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt5Truck, TILESET_HOUSE, INDOOR, R_5, MUSIC_R_14, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt4NimbasaGate, TILESET_GATE, GATE, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaSubway, TILESET_TRAIN_STATION, INDOOR, NIMBASA_CITY, MUSIC_NIMBASA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NimbasaParkOutside, TILESET_PARK, ROUTE, NIMBASA_PARK, MUSIC_NIMBASA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Desert:
	map Rt4, TILESET_JOHTO_DESERT, ROUTE, R_4, MUSIC_R_4, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Rt4House, TILESET_HOUSE, INDOOR, R_4, MUSIC_R_4, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DesertResort, TILESET_JOHTO_DESERT, ROUTE, DESERT_RESORT, MUSIC_DESERT_RESORT, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt4DesertGate, TILESET_GATE, GATE, R_4, MUSIC_R_4, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt4CasteliaGate, TILESET_GATE, GATE, R_4, MUSIC_R_4, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Castelia:
	map CasteliaCityNorth, TILESET_CASTELIA, TOWN, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map CasteliaCityStreets, TILESET_CASTELIA, TOWN, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map CasteliaCitySouth, TILESET_CASTELIA, TOWN, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map CasteliaPokecenter1F, TILESET_POKECENTER, INDOOR, CASTELIA_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaDeptStore1F, TILESET_MART, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaDeptStore2F, TILESET_MART, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaDeptStore3F, TILESET_MART, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaDeptStore4F, TILESET_MART, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaDeptStoreElevator, TILESET_MART, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaBikeShop, TILESET_CHAMPIONS_ROOM, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaMassage, TILESET_GAME_CORNER, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaGameFreak, TILESET_MANSION, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaBridgeGate, TILESET_GATE, GATE, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleCompany1F, TILESET_RADIO_TOWER, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleCompany2F, TILESET_RADIO_TOWER, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map CasteliaGym, TILESET_FACILITY, INDOOR, CASTELIA_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaPort, TILESET_PORT, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map FerryLeft, TILESET_PORT, INDOOR, CASTELIA_CITY, MUSIC_MAGNET_TRAIN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PinwheelBridgeGate, TILESET_GATE, GATE, SKYARROW_BRIDGE, MUSIC_SKYARROW, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SkyarrowBridge, TILESET_BRIDGE, ROUTE, SKYARROW_BRIDGE, MUSIC_SKYARROW, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map CasteliaTradeHouse1, TILESET_HOUSE, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CasteliaTradeHouse2, TILESET_HOUSE, INDOOR, CASTELIA_CITY, MUSIC_CASTELIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Aspertia:
	map AspertiaCity, TILESET_JOHTO_WEST, TOWN, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map AspertiaSubway, TILESET_TRAIN_STATION, INDOOR, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AspertiaMart, TILESET_MART, INDOOR, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AspertiaPokecenter1F, TILESET_POKECENTER, INDOOR, ASPERTIA_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AspertiaMomHouse, TILESET_HOUSE, INDOOR, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AspertiaMoveDeleterHouse, TILESET_HOUSE, INDOOR, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AspertiaGym, TILESET_CHAMPIONS_ROOM, INDOOR, ASPERTIA_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt19AspertiaGate, TILESET_GATE, GATE, ASPERTIA_CITY, MUSIC_ASPERTIA_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Floccesy:
	map FloccesyTown, TILESET_JOHTO_WEST, TOWN, FLOCCESY_TOWN, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map FloccesyPokecenter1F, TILESET_POKECENTER, INDOOR, FLOCCESY_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt19, TILESET_JOHTO_WEST, ROUTE, R_19, MUSIC_R_4, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Rt20, TILESET_JOHTO_WEST, ROUTE, R_20, MUSIC_R_4, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map FloccesyRanch, TILESET_JOHTO_WEST, ROUTE, FLOCCESY_RANCH, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map FloccesyRanchBarn, TILESET_TRADITIONAL_HOUSE, INDOOR, FLOCCESY_RANCH, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map FloccesyRanchHouse, TILESET_HOUSE, INDOOR, FLOCCESY_RANCH, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map FloccesyTownHouse, TILESET_HOUSE, INDOOR, FLOCCESY_TOWN, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map FloccesyTradeHouse, TILESET_HOUSE, INDOOR, FLOCCESY_TOWN, MUSIC_FLOCCESY_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Virbank:
	map VirbankCity, TILESET_VIRBANK, TOWN, VIRBANK_CITY, MUSIC_VIRBANK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map VirbankPokecenter1F, TILESET_POKECENTER, INDOOR, VIRBANK_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankHouse, TILESET_HOUSE, INDOOR, VIRBANK_CITY, MUSIC_VIRBANK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GameCorner, TILESET_GAME_CORNER, INDOOR, VIRBANK_CITY, MUSIC_GAME_CORNER_NEW, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt20VirbankGate, TILESET_GATE, GATE, VIRBANK_CITY, MUSIC_VIRBANK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankMart, TILESET_MART, INDOOR, VIRBANK_CITY, MUSIC_VIRBANK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankGym, TILESET_MART, INDOOR, VIRBANK_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VirbankPort, TILESET_PORT, INDOOR, VIRBANK_CITY, MUSIC_VIRBANK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map FerryRight, TILESET_PORT, INDOOR, VIRBANK_CITY, MUSIC_MAGNET_TRAIN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map VirbankComplexOutside, TILESET_COMPLEX, ROUTE, VIRBANK_COMPLEX, MUSIC_VIRBANK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Nacrene:
	map NacreneCity, TILESET_NACRENE, TOWN, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NacrenePokecenter1F, TILESET_POKECENTER, INDOOR, NACRENE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NacreneMart, TILESET_MART, INDOOR, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NacreneHouse, TILESET_HOUSE, INDOOR, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NacreneCafe, TILESET_GAME_CORNER, INDOOR, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NacreneMuseum, TILESET_RADIO_TOWER, INDOOR, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt3NacreneGate, TILESET_GATE, GATE, NACRENE_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Striaton:
	map Rt3, TILESET_JOHTO_MODERN_EAST, ROUTE, R_3, MUSIC_R_3, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Rt3DayCare, TILESET_GATE, INDOOR, R_3, MUSIC_R_3, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map StriatonCity, TILESET_JOHTO_MODERN_EAST, TOWN, STRIATON_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map StriatonPokecenter1F, TILESET_POKECENTER, INDOOR, STRIATON_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map StriatonMart, TILESET_MART, INDOOR, STRIATON_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map StriatonLab, TILESET_FACILITY, INDOOR, STRIATON_CITY, MUSIC_STRIATON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map StriatonGym, TILESET_GAME_CORNER, INDOOR, STRIATON_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt2, TILESET_JOHTO_MODERN_EAST, ROUTE, R_2, MUSIC_R_3, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt2AccumulaGate, TILESET_GATE, GATE, ACCUMULA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Accumula:
	map AccumulaTown, TILESET_JOHTO_EAST, TOWN, ACCUMULA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map AccumulaPokecenter1F, TILESET_POKECENTER, INDOOR, ACCUMULA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AccumulaMart, TILESET_MART, INDOOR, ACCUMULA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AccumulaHouse, TILESET_HOUSE, INDOOR, ACCUMULA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AccumulaTradeHouse, TILESET_HOUSE, INDOOR, ACCUMULA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt1, TILESET_JOHTO_EAST, ROUTE, R_1, MUSIC_R_3, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NuvemaTown, TILESET_JOHTO_EAST, TOWN, NUVEMA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NuvemaMomHouse, TILESET_HOUSE, INDOOR, NUVEMA_TOWN, MUSIC_ACCUMULA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NuvemaLab, TILESET_LAB, INDOOR, NUVEMA_TOWN, MUSIC_POKEMON_TALK, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_P2:
	map Rt1Rt17Gate, TILESET_GATE, GATE, R_17, MUSIC_R_17, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt17, TILESET_JOHTO_EAST, ROUTE, R_17, MUSIC_R_17, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Rt18, TILESET_JOHTO_EAST, ROUTE, R_18, MUSIC_R_17, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Rt18House, TILESET_HOUSE, INDOOR, R_18, MUSIC_R_17, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Pwt:
	map PWTOutside, TILESET_BATTLE_TOWER_OUTSIDE, TOWN, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PWTInside, TILESET_BATTLE_TOWER, INDOOR, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PWTHallway, TILESET_BATTLE_TOWER, INDOOR, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PWTQualifierRoom, TILESET_BATTLE_TOWER, INDOOR, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PWTBackRoom, TILESET_BATTLE_TOWER, INDOOR, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PWTBattleRoom, TILESET_BATTLE_TOWER, INDOOR, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Driftveil:
	map DriftveilCity, TILESET_DRIFTVEIL, TOWN, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PWTDriftveilGate, TILESET_GATE, GATE, POKEMON_WORLD_TOURNAMENT, MUSIC_R_4, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilPokecenter1F, TILESET_POKECENTER, INDOOR, DRIFTVEIL_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilMart, TILESET_MART, INDOOR, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilBridgeGate, TILESET_GATE, GATE, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilShelter, TILESET_HOUSE, INDOOR, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilDrawbridge, TILESET_BRIDGE, ROUTE, DRIFTVEIL_DRAWBRIDGE, MUSIC_SKYARROW, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map DriftveilStoneEmporium, TILESET_RADIO_TOWER, INDOOR, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilHouse, TILESET_HOUSE, INDOOR, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DriftveilTradeHouse, TILESET_HOUSE, INDOOR, DRIFTVEIL_CITY, MUSIC_DRIFTVEIL_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt6, TILESET_JOHTO_EAST, ROUTE, R_6, MUSIC_R_6, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Rt6House, TILESET_HOUSE, INDOOR, R_6, MUSIC_R_6, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt6Lab, TILESET_LAB, INDOOR, R_6, MUSIC_R_6, FALSE, PALETTE_DAY, FISHGROUP_SHORE

MapGroup_Mistralton:
	map MistraltonCity, TILESET_JOHTO_AIRPORT, TOWN, MISTRALTON_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map MistraltonPokecenter1F, TILESET_POKECENTER, INDOOR, MISTRALTON_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MistraltonMart, TILESET_MART, INDOOR, MISTRALTON_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MistraltonHouse, TILESET_HOUSE, INDOOR, MISTRALTON_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MistraltonGym1F, TILESET_ELITE_FOUR_ROOM, INDOOR, MISTRALTON_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_POND
	map MistraltonGym2F, TILESET_ELITE_FOUR_ROOM, INDOOR, MISTRALTON_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_POND
	map MistraltonAirport, TILESET_AIRPORT, INDOOR, MISTRALTON_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_DAY, FISHGROUP_POND
	map PlaneLeft, TILESET_AIRPORT, INDOOR, MISTRALTON_CITY, MUSIC_MAGNET_TRAIN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PlaneRight, TILESET_AIRPORT, INDOOR, MISTRALTON_CITY, MUSIC_MAGNET_TRAIN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt7, TILESET_JOHTO_AIRPORT, ROUTE, R_7, MUSIC_R_6, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt7North, TILESET_JOHTO_AIRPORT, ROUTE, R_7, MUSIC_R_6, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt7House, TILESET_HOUSE, INDOOR, R_7, MUSIC_R_6, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt7TradeHouse, TILESET_HOUSE, INDOOR, R_7, MUSIC_R_6, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Opelucid:
	map VillageBridge, TILESET_VILLAGE_BRIDGE, ROUTE, VILLAGE_BRIDGE, MUSIC_SKYARROW, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt11VillageBridgeGate, TILESET_GATE, GATE, R_11, MUSIC_R_3, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Rt11, TILESET_OPELUCID, ROUTE, R_11, MUSIC_R_3, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Rt11OpelucidGate, TILESET_GATE, GATE, R_11, MUSIC_R_3, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OpelucidCity, TILESET_OPELUCID, TOWN, OPELUCID_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt9OpelucidGate, TILESET_GATE, GATE, R_9, MUSIC_R_3, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OpelucidPokecenter1F, TILESET_POKECENTER, INDOOR, OPELUCID_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OpelucidMart, TILESET_MART, INDOOR, OPELUCID_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OpelucidSuperRodHouse, TILESET_HOUSE, INDOOR, OPELUCID_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	
MapGroup_Icirrus:
	map TubelineBridge, TILESET_AIRPORT, ROUTE, TUBELINE_BRIDGE, MUSIC_SKYARROW, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map IcirrusCitySouthConnectionDummy, TILESET_ICIRRUS, TOWN, ICIRRUS_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map IcirrusCitySouth, TILESET_ICIRRUS, TOWN, ICIRRUS_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map IcirrusCityNorth, TILESET_ICIRRUS, TOWN, ICIRRUS_CITY, MUSIC_MISTRALTON_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Rt8, TILESET_ICIRRUS, ROUTE, R_8, MUSIC_R_3, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	
MapGroup_PkmnLeague:
	map Rt23, TILESET_PKMN_LEAGUE, ROUTE, R_23, MUSIC_R_17, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Rt23Gate, TILESET_GATE, GATE, R_23, MUSIC_R_17, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	