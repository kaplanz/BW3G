	const_def 2 ; object constants
	const R8_ELIXER
	const R8_FULL_RESTORE
	const R8_LOVE_BALL
	const R8_BIG_PEARL
	const R8_LASS
	const R8_FISHER
	const R8_PARASOL_LADY
	const R8_COOLTRAINER_F

Rt8_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerLassR8:
	trainer LASS_D, LASS_R8, EVENT_BEAT_LASS_R8, LassR8SeenText, LassR8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassR8AfterText
	waitbutton
	closetext
	end

TrainerFisherR8:
	trainer FISHER, FISHER_R8, EVENT_BEAT_FISHER_R8, FisherR8SeenText, FisherR8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherR8AfterText
	waitbutton
	closetext
	end

TrainerParasolLadyR8:
	trainer PARASOL_LADY, PARASOL_LADY_R8, EVENT_BEAT_PARASOL_LADY_R8, ParasolLadyR8SeenText, ParasolLadyR8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ParasolLadyR8AfterText
	waitbutton
	closetext
	end

TrainerCooltrainerFR8:
	trainer COOLTRAINERF, COOLTRAINERF_R8, EVENT_BEAT_COOLTRAINERF_R8, CooltrainerFR8SeenText, CooltrainerFR8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFR8AfterText
	waitbutton
	closetext
	end
	
R8Elixer:
	itemball ELIXER
	
R8FullRestore:
	itemball FULL_RESTORE
	
R8LoveBall:
	itemball LOVE_BALL
	
R8BigPearl:
	itemball BIG_PEARL
	
R8RareCandy:
	hiddenitem RARE_CANDY, EVENT_R8_RARE_CANDY
	
R8Sign:
	jumptext R8SignText
	
R8TubelineSign:
	jumptext R8TubelineSignText
	
LassR8SeenText:
	text "..."
	done

LassR8BeatenText:
	text "..."
	done

LassR8AfterText:
	text "..."
	done
	
FisherR8SeenText:
	text "..."
	done

FisherR8BeatenText:
	text "..."
	done

FisherR8AfterText:
	text "..."
	done
	
ParasolLadyR8SeenText:
	text "..."
	done

ParasolLadyR8BeatenText:
	text "..."
	done

ParasolLadyR8AfterText:
	text "..."
	done
	
CooltrainerFR8SeenText:
	text "..."
	done

CooltrainerFR8BeatenText:
	text "..."
	done

CooltrainerFR8AfterText:
	text "..."
	done
	
R8SignText:
	text "ROUTE 8"
	
	para "ICIRRUS CITY"
	line "ahead."
	done
	
R8TubelineSignText:
	text "TUBELINE BRIDGE"
	
	para "Passage to"
	line "OPELUCID CITY."
	done

Rt8_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 41, 11, TUBELINE_BRIDGE, 1
	warp_event 41, 12, TUBELINE_BRIDGE, 2
	warp_event 38,  1, MOOR_OF_ICIRRUS, 1
	warp_event 39,  1, MOOR_OF_ICIRRUS, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 18, 14, BGEVENT_READ, R8Sign
	bg_event 36,  8, BGEVENT_READ, R8TubelineSign
	bg_event  6, 17, BGEVENT_ITEM, R8RareCandy
	
	db 8 ; object events
	object_event 39,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R8Elixer, EVENT_R8_ELIXER
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R8FullRestore, EVENT_R8_FULL_RESTORE
	object_event  7,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R8LoveBall, EVENT_R8_LOVE_BALL
	object_event 21,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R8BigPearl, EVENT_R8_BIG_PEARL
	object_event 27, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerLassR8, -1
	object_event 32, 12, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherR8, -1
	object_event  8,  7, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerParasolLadyR8, -1
	object_event 19,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFR8, -1
	