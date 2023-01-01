trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	enum_start
CHRIS EQU __enum__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BILL
	const PHONECONTACT_CHEREN
	const PHONECONTACT_BIANCA
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA

	trainerclass YOUNGSTER ; 1
	const YOUNGSTER_R13
	const YOUNGSTER_OUTSKIRTS
	const YOUNGSTER_ASPERTIA_GYM
	const YOUNGSTER_PINWHEEL
	const YOUNGSTER_DREAMYARD
	const DAN_REMATCH_1
	const DAN_REMATCH_2
	const DAN_REMATCH_3
	const DAN_REMATCH_4
	const DAN_REMATCH_5
	const DAN_REMATCH_6
	
	trainerclass YOUNGSTER_D
	const YOUNGSTER_LOSTLORN
	const YOUNGSTER_DESERT
	const YOUNGSTER_NACRENE_OUTSKIRT
	const YOUNGSTER_R2

	trainerclass LASS ; 19
	const LASS_R13
	const LASS_LOSTLORN
	const LASS_DESERT
	const LASS_NACRENE_OUTSKIRT
	const LASS_CELESTIAL_TOWER
	
	trainerclass LASS_D
	const LASS_REVERSAL
	const LASS_ASPERTIA_GYM
	const LASS_PINWHEEL
	const LASS_R2
	const CARLA_REMATCH_1
	const CARLA_REMATCH_2
	const CARLA_REMATCH_3

	trainerclass ACE_TRAINERM ; 1b
	const ACE_TRAINERM_PWT
	const ACE_TRAINERM_CHARGESTONE_1
	const ACE_TRAINERM_MISTRALTON_CAVE
	const ACE_TRAINERM_R23_1
	const ACE_TRAINERM_VICTORY_ROAD_INT_1
	const ACE_TRAINERM_VICTORY_ROAD_EXT_1
	
	trainerclass ACE_TRAINERM_D
	const ACE_TRAINERM_GIANT_CHASM
	const ACE_TRAINERM_CHARGESTONE_2
	const ACE_TRAINERM_R23_2
	const ACE_TRAINERM_VICTORY_ROAD_INT_2
	const ACE_TRAINERM_VICTORY_ROAD_EXT_2

	trainerclass ACE_TRAINERF ; 1c
	const ACE_TRAINERF_CHARGESTONE_1
	const ACE_TRAINERF_MISTRALTON_CAVE
	const ACE_TRAINERF_R23_2
	const ACE_TRAINERF_VICTORY_ROAD_INT_1
	const ACE_TRAINERF_VICTORY_ROAD_EXT_1
	
	trainerclass ACE_TRAINERF_D
	const ACE_TRAINERF_GIANT_CHASM
	const ACE_TRAINERF_PWT
	const ACE_TRAINERF_CHARGESTONE_2
	const ACE_TRAINERF_R23_1
	const ACE_TRAINERF_VICTORY_ROAD_INT_2
	const ACE_TRAINERF_VICTORY_ROAD_EXT_2
	
	trainerclass ARTIST
	const ARTIST_R5
	const ARTIST_R3
	
	trainerclass BACKERSM
	const BACKERSM_R16
	const BACKERSM_R11
	
	trainerclass BACKERSF
	const BACKERSF_R5
	const BACKERSF_R11
	
	trainerclass BACKPACKERM
	const BACKPACKERM_REVERSAL
	const BACKPACKERM_R16
	const BACKPACKERM_DESERT
	const BACKPACKERM_R2
	const BACKPACKERM_R18
	const BACKPACKERM_GIANT_CHASM
	const BACKPACKERM_RELIC_PASSAGE
	const BACKPACKERM_R7
	const BACKPACKERM_R23
	const BACKPACKERM_VICTORY_ROAD_INT
	const PARKER_REMATCH_1
	const PARKER_REMATCH_2
	
	trainerclass BACKPACKERF
	const BACKPACKERF_REVERSAL
	const BACKPACKERF_R16
	const BACKPACKERF_DESERT
	const BACKPACKERF_R2
	const BACKPACKERF_R18
	const BACKPACKERF_GIANT_CHASM
	const BACKPACKERF_RELIC_PASSAGE
	const BACKPACKERF_R7
	const BACKPACKERF_R23
	const BACKPACKERF_VICTORY_ROAD_EXT
	const JENNY_REMATCH_1
	const JENNY_REMATCH_2
	const JENNY_REMATCH_3
	
	trainerclass BAKER
	const BAKER_R5
	const BAKER_R19

	trainerclass BLACKBELT_T ; 32
	const BLACKBELT_REVERSAL
	const BLACKBELT_WELLSPRING_1
	const BLACKBELT_WELLSPRING_2
	const BLACKBELT_R1
	const BLACKBELT_R18
	const BLACKBELT_R21
	const BLACKBELT_SEASIDE_CAVE_1
	const BLACKBELT_SEASIDE_CAVE_2
	const BLACKBELT_NACRENE_OUTSKIRT
	const BLACKBELT_VICTORY_ROAD_EXT
	
	trainerclass BATTLE_GIRL
	const BATTLE_GIRL_REVERSAL
	const BATTLE_GIRL_WELLSPRING
	const BATTLE_GIRL_R1
	const BATTLE_GIRL_R18
	const BATTLE_GIRL_SEASIDE_CAVE_1
	const BATTLE_GIRL_SEASIDE_CAVE_2
	const BATTLE_GIRL_CHARGESTONE
	const BATTLE_GIRL_NACRENE_OUTSKIRT
	const BATTLE_GIRL_R23
	const BATTLE_GIRL_VICTORY_ROAD_EXT

	trainerclass BIKER ; 2d
	const BIKER_R5
	const BIKER_R4
	const BIKER_R9_1
	const BIKER_R9_2
	
	trainerclass ROUGHNECK
	const ROUGHNECK_R4
	const ROUGHNECK_DESERT
	const ROUGHNECK_R9_1
	const ROUGHNECK_R9_2

	trainerclass CYCLISTM ; 18
	const CYCLISTM_OUTSKIRTS
	const CYCLISTM_R16
	const FREDDY_REMATCH_1
	const FREDDY_REMATCH_2
	const FREDDY_REMATCH_3
	const FREDDY_REMATCH_4
	const FREDDY_REMATCH_5
	
	trainerclass CYCLISTF
	const CYCLISTF_OUTSKIRTS
	const CYCLISTF_R16
	
	trainerclass DANCER
	const DANCER_R5_1
	const DANCER_R5_2
	const ERIC_REMATCH_1
	const ERIC_REMATCH_2
	const ERIC_REMATCH_3
	const ERIC_REMATCH_4
	const ERIC_REMATCH_5
	
	trainerclass DEPOT_AGENT
	const DEPOT_AGENT_R19_1
	const DEPOT_AGENT_R19_2
	
	trainerclass DOCTOR
	const DOCTOR_OUTSKIRTS
	const DOCTOR_R17
	const DOCTOR_CHARGESTONE
	const DOCTOR_SEASIDE_CAVE
	
	trainerclass NURSE
	const NURSE_DESERT
	const NURSE_RELIC_PASSAGE
	const NURSE_CELESTIAL_TOWER
	const NURSE_VICTORY_ROAD

	trainerclass FISHER ; 25
	const FISHER_UNDELLA_1
	const FISHER_R4_1
	const FISHER_R3_1
	const FISHER_R17_1
	const FISHER_R8
	const FISHER_MOOR_OF_ICIRRUS_1
	
	trainerclass FISHER_D
	const FISHER_UNDELLA_2
	const FISHER_R4_2
	const FISHER_R3_2
	const FISHER_R17_2
	const FISHER_MOOR_OF_ICIRRUS_2

	trainerclass GENTLEMAN ; 20
	const GENTLEMAN_R3
	const GENTLEMAN_R2
	const GENTLEMAN_CELESTIAL_TOWER

	trainerclass GUITARIST ; 2b
	const GUITARIST_VIRBANK_GYM_1
	const GUITARIST_VIRBANK_GYM_2
	const GUITARIST_CHARGESTONE_1
	const GUITARIST_CHARGESTONE_2
	
	trainerclass HARLEQUIN
	const HARLEQUIN_CASTELIA_GYM_1
	const HARLEQUIN_CASTELIA_GYM_2
	const HARLEQUIN_CASTELIA_GYM_3
	const HARLEQUIN_CASTELIA_GYM_4
	const HARLEQUIN_CASTELIA_GYM_5
	const HARLEQUIN_R7
	
	trainerclass HEX_MANIAC
	const HEX_MANIAC_LENTIMAS_GYM_1
	const HEX_MANIAC_LENTIMAS_GYM_2
	const HEX_MANIAC_LENTIMAS_GYM_3
	const HEX_MANIAC_LENTIMAS_GYM_4
	const HEX_MANIAC_DESERT
	const HEX_MANIAC_PINWHEEL
	const HEX_MANIAC_RELIC_PASSAGE
	const HEX_MANIAC_CELESTIAL_TOWER_1
	const HEX_MANIAC_CELESTIAL_TOWER_2
	const HEX_MANIAC_VICTORY_ROAD_INT

	trainerclass HIKER ; 2c
	const HIKER_REVERSAL_1
	const HIKER_WELLSPRING
	const HIKER_R18
	const HIKER_RELIC_PASSAGE_1
	const HIKER_CHARGESTONE_2
	const HIKER_MISTRALTON_CAVE_1

	trainerclass HIKER_D ; 2c
	const HIKER_REVERSAL_2
	const HIKER_GIANT_CHASM
	const HIKER_RELIC_PASSAGE_2
	const HIKER_CHARGESTONE_1
	const HIKER_CHARGESTONE_3
	const HIKER_MISTRALTON_CAVE_2
	
	trainerclass HOOPSTER
	const HOOPSTER_VILLAGE_BRIDGE_1
	const HOOPSTER_VILLAGE_BRIDGE_2
	
	trainerclass JANITOR
	const JANITOR_CASTELIA_SEWERS_1
	const JANITOR_CASTELIA_SEWERS_2
	const JANITOR_CASTELIA_SEWERS_3
	const JANITOR_CASTELIA_SEWERS_4
	
	trainerclass LADY
	const LADY_R4
	const LADY_R19
	const LACEY_REMATCH_1
	const LACEY_REMATCH_2
	const LACEY_REMATCH_3
	const LACEY_REMATCH_4
	
	trainerclass LINEBACKER
	const LINEBACKER_R5
	const LINEBACKER_VILLAGE_BRIDGE
	const DEAN_REMATCH_1
	
	trainerclass MAID
	const MAID_R19
	const MAID_R1
	const MAID_CELESTIAL_TOWER
	const SOPHIE_REMATCH_1
	const SOPHIE_REMATCH_2
	const SOPHIE_REMATCH_3
	const SOPHIE_REMATCH_4
	const CLARISSA_REMATCH_1
	const CLARISSA_REMATCH_2
	const CLARISSA_REMATCH_3
	
	trainerclass MUSICIAN
	const MUSICIAN_VIRBANK_GYM_1
	const MUSICIAN_VIRBANK_GYM_2
	const MUSICIAN_VILLAGE_BRIDGE
	
	trainerclass NURSERY_AIDE
	const NURSERY_AIDE_MARINE_TUBE
	const NURSERY_AIDE_R14
	const NURSERY_AIDE_R20
	const NURSERY_AIDE_R7
	
	trainerclass PARASOL_LADY
	const PARASOL_LADY_NACRENE_OUTSKIRT
	const PARASOL_LADY_R6_1
	const PARASOL_LADY_R6_2
	const PARASOL_LADY_R8
	const LOIS_REMATCH_1
	
	trainerclass PILOT
	const PILOT_MISTRALTON_GYM_1
	const PILOT_MISTRALTON_GYM_2
	const PILOT_MISTRALTON_GYM_3
	const PILOT_MISTRALTON_GYM_4
	const PILOT_MISTRALTON_GYM_5

	trainerclass POKEFANM ; 3b
	const POKEFANM_R4
	const POKEFANM_CELESTIAL_TOWER

	trainerclass POKEFANF ; 3e
	const POKEFANF_R4
	const POKEFANF_CELESTIAL_TOWER
	
	trainerclass PKMN_BREEDERM
	const PKMN_BREEDERM_LOSTLORN
	const PKMN_BREEDERM_R19
	const PKMN_BREEDERM_R6
	const PKMN_BREEDERM_R7
	
	trainerclass PKMN_BREEDERF
	const PKMN_BREEDERF_LOSTLORN
	const PKMN_BREEDERF_R19
	const PKMN_BREEDERF_R6
	const PKMN_BREEDERF_R7
	
	trainerclass PKMN_RANGERM
	const PKMN_RANGERM_OUTSKIRTS
	const PKMN_RANGERM_DESERT
	const PKMN_RANGERM_PINWHEEL_1
	const PKMN_RANGERM_PINWHEEL_2
	const PKMN_RANGERM_R3
	const PKMN_RANGERM_R1
	const PKMN_RANGERM_R6
	const PKMN_RANGERM_CHARGESTONE
	const PKMN_RANGERM_R8
	const PKMN_RANGERM_MOOR_OF_ICIRRUS
	const PKMN_RANGERM_R23
	const PKMN_RANGERM_VICTORY_ROAD_INT
	
	trainerclass PKMN_RANGERF
	const PKMN_RANGERF_OUTSKIRTS
	const PKMN_RANGERF_DESERT
	const PKMN_RANGERF_PINWHEEL_1
	const PKMN_RANGERF_PINWHEEL_2
	const PKMN_RANGERF_R3
	const PKMN_RANGERF_R1
	const PKMN_RANGERF_R6
	const PKMN_RANGERF_CHARGESTONE
	const PKMN_RANGERF_R8
	const PKMN_RANGERF_MOOR_OF_ICIRRUS
	const PKMN_RANGERF_R23
	const PKMN_RANGERF_VICTORY_ROAD_INT
	const ARIANA_REMATCH_1
	const ARIANA_REMATCH_2
	const ARIANA_REMATCH_3

	trainerclass POLICEMAN ; 41
	const POLICEMAN_R4_1
	const POLICEMAN_R4_2
	const POLICEMAN_R2
	
	trainerclass PRESCHOOLERM
	const PRESCHOOLERM_MARINE_TUBE
	const PRESCHOOLERM_R14_1
	const PRESCHOOLERM_R14_2
	
	trainerclass PRESCHOOLERF
	const PRESCHOOLERF_MARINE_TUBE
	const PRESCHOOLERF_R14_1
	const PRESCHOOLERF_R14_2

	trainerclass PSYCHICM_T ; 34
	const PSYCHICM_RELIC_CASTLE
	const PSYCHICM_PINWHEEL
	const PSYCHICM_RELIC_PASSAGE
	const PSYCHICM_CELESTIAL_TOWER
	const PSYCHICM_DREAMYARD
	const PSYCHICM_VICTORY_ROAD_INT
	
	trainerclass PSYCHICF_T ; 34
	const PSYCHICF_RELIC_CASTLE_1
	const PSYCHICF_RELIC_CASTLE_2
	const PSYCHICF_RELIC_PASSAGE
	const PSYCHICF_CELESTIAL_TOWER
	const PSYCHICF_DREAMYARD
	const PSYCHICF_VICTORY_ROAD_INT
	
	trainerclass RICH_BOY
	const RICH_BOY_R4
	const RICH_BOY_NACRENE_OUTSKIRT

	trainerclass SCHOOL_KIDM ; 17
	const SCHOOL_KIDM_R13
	const SCHOOL_KIDM_OUTSKIRTS
	const SCHOOL_KIDM_LOSTLORN
	const SCHOOL_KIDM_R20_1
	const SCHOOL_KIDM_R20_2
	const SCHOOL_KIDM_R20_3
	const SCHOOL_KIDM_DREAMYARD
	const SCHOOL_KIDM_R7
	
	trainerclass SCHOOL_KIDF
	const SCHOOL_KIDF_R13
	const SCHOOL_KIDF_REVERSAL
	const SCHOOL_KIDF_LOSTLORN
	const SCHOOL_KIDF_R20_1
	const SCHOOL_KIDF_R20_2
	const SCHOOL_KIDF_R20_3
	const SCHOOL_KIDF_DREAMYARD
	const SCHOOL_KIDF_R7

	trainerclass SCIENTISTM ; 14
	const SCIENTISTM_VIRBANK_COMPLEX
	const SCIENTISTM_P2
	const SCIENTISTM_CASTELIA_SEWERS
	const SCIENTISTM_R6
	const SCIENTISTM_CHARGESTONE
	const SCIENTISTM_DREAMYARD
	const SCIENTISTM_VICTORY_ROAD_EXT
	const MARCO_REMATCH_1
	const MARCO_REMATCH_2
	
	trainerclass SCIENTISTF
	const SCIENTISTF_VIRBANK_COMPLEX_1
	const SCIENTISTF_VIRBANK_COMPLEX_2
	const SCIENTISTF_CASTELIA_SEWERS
	const SCIENTISTF_R6
	const SCIENTISTF_CHARGESTONE
	const SCIENTISTF_DREAMYARD
	const SCIENTISTF_VICTORY_ROAD_EXT
	
	trainerclass SMASHER
	const SMASHER_VILLAGE_BRIDGE_1
	const SMASHER_VILLAGE_BRIDGE_2
	
	trainerclass SOCIALITE
	const SOCIALITE_R3
	const SOCIALITE_R2
	const SOCIALITE_CELESTIAL_TOWER

	trainerclass SWIMMERM ; 26
	const SWIMMER_M_HUMILAU_GYM
	const SWIMMER_M_R17_1
	const SWIMMER_M_R21_1
	
	trainerclass SWIMMERM_D
	const SWIMMER_M_R17_2
	const SWIMMER_M_R21_2
	const SWIMMER_M_R21_3

	trainerclass SWIMMERF ; 27
	const SWIMMER_F_R17_1
	const SWIMMER_F_R21_1
	const SWIMMER_F_R21_2
	
	trainerclass SWIMMERF_D
	const SWIMMER_F_HUMILAU_GYM
	const SWIMMER_F_R17_2
	const SWIMMER_F_R21_3

	trainerclass TWINS ; 3d
	const TWINS_MARINE_TUBE
	const TWINS_R20
	const TWINS_R2
	const TWINS_R1
	const TWINS_R7
	
	trainerclass VETERANM
	const VETERANM_OPELUCID_GYM_1
	const VETERANM_OPELUCID_GYM_2
	const VETERANM_OPELUCID_GYM_3
	const VETERANM_R23
	const VETERANM_VICTORY_ROAD_INT_1
	const VETERANM_VICTORY_ROAD_INT_2
	const VETERANM_VICTORY_ROAD_EXT_1
	const VETERANM_VICTORY_ROAD_EXT_2
	
	trainerclass VETERANF
	const VETERANF_SEASIDE_CAVE
	const VETERANF_OPELUCID_GYM_1
	const VETERANF_OPELUCID_GYM_2
	const VETERANF_OPELUCID_GYM_3
	const VETERANF_VICTORY_ROAD_INT_1
	const VETERANF_VICTORY_ROAD_INT_2
	const VETERANF_VICTORY_ROAD_EXT_1
	const VETERANF_VICTORY_ROAD_EXT_2
	
	trainerclass WAITER
	const WAITER_STRIATON_GYM_1
	const WAITER_STRIATON_GYM_2
	
	trainerclass WAITRESS
	const WAITRESS_STRIATON_GYM_1
	const WAITRESS_STRIATON_GYM_2
	const WAITRESS_STRIATON_GYM_3
	
	trainerclass WORKER
	const WORKER_CASTELIA_SEWERS_1
	const WORKER_CASTELIA_SEWERS_2
	const WORKER_CASTELIA_SEWERS_3
	const WORKER_RELIC_PASSAGE

	trainerclass GRUNTM ; 1f
	const GRUNTM_REVERSAL
	const GRUNTM_LOSTLORN
	const GRUNTM_NIMBASA_1
	const GRUNTM_NIMBASA_2
	const GRUNTM_NIMBASA_3
	const GRUNTM_NIMBASA_4
	const GRUNTM_NIMBASA_5
	const GRUNTM_VIRBANK_COMPLEX_1
	const GRUNTM_VIRBANK_COMPLEX_2
	const GRUNTM_VIRBANK_COMPLEX_3
	const GRUNTM_P2_1
	const GRUNTM_P2_2
	const GRUNTM_SEASIDE_CAVE_1
	const GRUNTM_SEASIDE_CAVE_2
	const GRUNTM_SEASIDE_CAVE_3

	trainerclass GRUNTF ; 42
	const GRUNTF_LOSTLORN
	const GRUNTF_NIMBASA_1
	const GRUNTF_NIMBASA_2
	const GRUNTF_NIMBASA_3
	const GRUNTF_NIMBASA_4
	const GRUNTF_NIMBASA_5
	const GRUNTF_VIRBANK_COMPLEX_1
	const GRUNTF_VIRBANK_COMPLEX_2
	const GRUNTF_P2_1
	const GRUNTF_P2_2
	const GRUNTF_SEASIDE_CAVE_1
	const GRUNTF_SEASIDE_CAVE_2
	const GRUNTF_SEASIDE_CAVE_3
	
	trainerclass MARLON
	const MARLON1
	const MARLON2
	
	trainerclass SHAUNTAL
	const SHAUNTAL1
	const SHAUNTAL2
	
	trainerclass BURGH
	const BURGH1
	const BURGH2
	
	trainerclass ROXIE
	const ROXIE1
	const ROXIE2
	
	trainerclass CHEREN
	const CHEREN1
	const CHEREN2
	
	trainerclass CILAN
	const CILAN1
	const CILAN2
	
	trainerclass SKYLA
	const SKYLA1
	const SKYLA2
	
	trainerclass DRAYDEN
	const DRAYDEN1
	const DRAYDEN2
	
	trainerclass MARSHAL
	const MARSHAL1
	
	trainerclass GRIMSLEY
	const GRIMSLEY1
	
	trainerclass ELESA
	const ELESA1
	
	trainerclass COLRESS
	const COLRESS1
	
	trainerclass JUNIPER
	const JUNIPER_SNIVY
	const JUNIPER_TEPIG
	const JUNIPER_OSHAWOTT
	
	trainerclass BIANCA
	const BIANCA1
	
	trainerclass GIALLO
	const GIALLO1
	const GIALLO2
	
	trainerclass BRONIUS
	const BRONIUS1
	const BRONIUS2
	
	trainerclass RYOKU
	const RYOKU1
	const RYOKU2
	
	trainerclass GORM
	const GORM1
	const GORM2
	
	trainerclass MYSTERYMAN
	const VIO
	
	trainerclass ZINZOLIN
	const ZINZOLIN1
	const ZINZOLIN2
	
	trainerclass GENESIS
	const GENESIS1
	
	trainerclass INFER
	const INFER1_SNIVY
	const INFER1_TEPIG
	const INFER1_OSHAWOTT
	const INFER2_SNIVY
	const INFER2_TEPIG
	const INFER2_OSHAWOTT
	const INFER3_SNIVY
	const INFER3_TEPIG
	const INFER3_OSHAWOTT
	const INFER4_SNIVY
	const INFER4_TEPIG
	const INFER4_OSHAWOTT
	const INFER5_SNIVY
	const INFER5_TEPIG
	const INFER5_OSHAWOTT
	
	trainerclass INFER_SAGE
	const INFER_SAGE_SNIVY
	const INFER_SAGE_TEPIG
	const INFER_SAGE_OSHAWOTT
	
	trainerclass INFER2
	const INFER7_SNIVY
	const INFER7_TEPIG
	const INFER7_OSHAWOTT

KRIS EQU __enum__
NUM_TRAINER_CLASSES EQU __enum__
