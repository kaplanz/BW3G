	const_def 2 ; object constants
	const R2_BOULDER
	const R2_FRUIT_TREE
	const R2_RARE_CANDY
	const R2_FULL_HEAL
	const R2_REPEAT_BALL
	const R2_CALCIUM
	const R2_CARBOS
	const R2_TM_DOUBLE_TEAM
	const R2_YOUNGSTER
	const R2_LASS
	const R2_SOCIALITE
	const R2_GENTLEMAN
	const R2_BACKPACKERM
	const R2_BACKPACKERF
	const R2_OFFICER
	const R2_TWIN_1
	const R2_TWIN_2

Rt2_MapScripts:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_TILES, .Boulders
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.Boulders:
	checkevent EVENT_R2_BOULDER
	iffalse .skip
	changeblock  6, 34, $6F ; boulder in pit
.skip
	return

.SetUpStoneTable:
	usestonetable .StoneTable
	return

.StoneTable:
	stonetable 1, R2_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	pause 30
	scall .FX
	opentext
	writetext R2BoulderFellText
	waitbutton
	disappear R2_BOULDER
	changeblock  6, 34, $6f ; boulder in pit
	reloadmappart
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

TrainerLassR2:
	trainer LASS_D, LASS_R2, EVENT_BEAT_LASS_R2, LassR2SeenText, LassR2BeatenText, 0, .Script

.Script:
	writecode VAR_CALLERID, PHONE_LASS_CARLA
	opentext
	checkflag ENGINE_CARLA_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_LASS_CARLA
	iftrue .NumberAccepted
	checkevent EVENT_CARLA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext LassR2AfterText
	buttonsound
	setevent EVENT_CARLA_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	jump .ContinueAskForPhoneNumber
	
.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_LASS_CARLA
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	setflag ENGINE_CARLA
	trainertotext LASS_D, LASS_R2, MEM_BUFFER_0
	scall .RegisteredNumber
	jump .NumberAccepted
	
.ChooseRematch:
	scall .Rematch
	winlosstext LassR2BeatenText, 0
	checkevent EVENT_FINISHED_PWT
	iftrue .LoadFight1
; Fight0
	loadtrainer LASS_D, LASS_R2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
	end
.LoadFight1
	loadtrainer LASS_D, CARLA_REMATCH_1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_CARLA_READY_FOR_REMATCH
	end
	
.AskNumber1:
	jumpstd asknumber1f
	end
	
.AskNumber2:
	jumpstd asknumber2f
	end

.RegisteredNumber:
	jumpstd registerednumberf
	end

.NumberAccepted:
	jumpstd numberacceptedf
	end

.NumberDeclined:
	jumpstd numberdeclinedf
	end

.PhoneFull:
	jumpstd phonefullf
	end

.Rematch:
	jumpstd rematchf
	end

TrainerYoungsterR2:
	trainer YOUNGSTER_D, YOUNGSTER_R2, EVENT_BEAT_YOUNGSTER_R2, YoungsterR2SeenText, YoungsterR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterR2AfterText
	waitbutton
	closetext
	end

TrainerSocialiteR2:
	trainer SOCIALITE, SOCIALITE_R2, EVENT_BEAT_SOCIALITE_R2, SocialiteR2SeenText, SocialiteR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SocialiteR2AfterText
	waitbutton
	closetext
	end

TrainerGentlemanR2:
	trainer GENTLEMAN, GENTLEMAN_R2, EVENT_BEAT_GENTLEMAN_R2, GentlemanR2SeenText, GentlemanR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanR2AfterText
	waitbutton
	closetext
	end

TrainerBackpackerMR2:
	trainer BACKPACKERM, BACKPACKERM_R2, EVENT_BEAT_BACKPACKERM_R2, BackpackerMR2SeenText, BackpackerMR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerMR2AfterText
	waitbutton
	closetext
	end

TrainerBackpackerFR2:
	trainer BACKPACKERF, BACKPACKERF_R2, EVENT_BEAT_BACKPACKERF_R2, BackpackerFR2SeenText, BackpackerFR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BackpackerFR2AfterText
	waitbutton
	closetext
	end

TrainerOfficerR2:
	trainer OFFICER, OFFICER_R2, EVENT_BEAT_OFFICER_R2, OfficerR2SeenText, OfficerR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OfficerR2AfterText
	waitbutton
	closetext
	end

TrainerTwinsR2:
	trainer TWINS, TWINS_R2, EVENT_BEAT_TWINS_R2, TwinsR2SeenText, TwinsR2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsR2AfterText
	waitbutton
	closetext
	end
	
R2Boulder:
	jumpstd strengthboulder
	
R2FruitTree:
	fruittree FRUITTREE_R_2
	
R2HiddenGrotto:
	hiddengrotto HIDDENGROTTO_R_2
	
R2RareCandy:
	itemball RARE_CANDY
	
R2FullHeal:
	itemball FULL_HEAL
	
R2RepeatBall:
	itemball REPEAT_BALL
	
R2Calcium:
	itemball CALCIUM
	
R2Carbos:
	itemball CARBOS
	
R2TMDoubleTeam:
	itemball TM_DOUBLE_TEAM
	
R2MaxRevive:
	hiddenitem MAX_REVIVE, EVENT_R2_MAX_REVIVE

R2Sign:
	jumptext R2SignText
	
YoungsterR2SeenText:
	text "If you're looking"
	line "for #MON, you"

	para "have to look in"
	line "the tall grass."
	done

YoungsterR2BeatenText:
	text "Ayieee!"
	done

YoungsterR2AfterText:
	text "Since you're so"
	line "strong, it must be"
	cont "fun to battle."
	done
	
LassR2SeenText:
	text "Hey, you! You're"
	line "from HUMILAU, huh?"
	done

LassR2BeatenText:
	text "Whoa, you kick!"
	done

LassR2AfterText:
	text "Don't get cocky,"
	line "you punk!"
	done
	
SocialiteR2SeenText:
	text "Hey! Do you have"
	line "any rare #MON?"
	done

SocialiteR2BeatenText:
	text "Oh, my poor #-"
	line "MON! Darlings!"
	done

SocialiteR2AfterText:
	text "I'd be happy just"
	line "to own a single"
	cont "rare #MON."
	done
	
GentlemanR2SeenText:
	text "Wow, your #MON"
	line "look cool!"
	done

GentlemanR2BeatenText:
	text "But you don't just"
	line "look cool…"
	done

GentlemanR2AfterText:
	text "I look cool, but"
	line "I'm weak, so I'm"
	cont "not really cool."

	para "I have to train"
	line "harder…"
	done
	
BackpackerMR2SeenText:
	text "You look pretty"
	line "strong."
	cont "Let me battle you!"
	done

BackpackerMR2BeatenText:
	text "Yow!"
	done

BackpackerMR2AfterText:
	text "If you prevail on"
	line "this harsh trek,"

	para "the truth will be"
	line "revealed!"

	para "Heh, sorry, I just"
	line "wanted to say"
	cont "something cool."
	done
	
BackpackerFR2SeenText:
	text "I raise #MON"
	line "too!"

	para "Will you battle"
	line "with me?"
	done

BackpackerFR2BeatenText:
	text "Oh, rats!"
	done

BackpackerFR2AfterText:
	text "I've been to many"
	line "GYMS, but the GYM"

	para "in STRIATON is my"
	line "favorite."

	para "It's such a quaint"
	line "little place!"
	done
	
OfficerR2SeenText:
	text "Danger lurks in"
	line "the night!"
	done

OfficerR2BeatenText:
	text "Whoops!"
	done

OfficerR2AfterText:
	text "You know, night-"
	line "time is fun in its"
	cont "own ways."

	para "But don't overdo"
	line "it, OK?"
	done
	
TwinsR2SeenText:
	text "Two #MON!"
	
	para "Strong and strong"
	line "come together to"
	
	para "become…"
	line "very strong!"
	done

TwinsR2BeatenText:
	text "Uh oh… My #MON"
	line "isn't looking so"
	cont "well…"
	done

TwinsR2AfterText:
	text "I don't know when"
	line "I'm supposed to"
	
	para "use POTIONs and"
	line "stuff…"
	done
	
R2BoulderFellText:
	text "The boulder fell"
	line "through!"
	done
	
R2SignText:
	text "ROUTE 2."
	
	para "South to ACCUMULA"
	line "TOWN."
	done
	
Rt2_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7, 34, R_2, 1
	warp_event 11, 30, R_2_ACCUMULA_GATE, 1
	warp_event 11, 31, R_2_ACCUMULA_GATE, 2

	db 0 ; coord events

	db 4 ; bg events
	bg_event 27,  7, BGEVENT_READ, R2Sign
	bg_event 33,  2, BGEVENT_ITEM, R2MaxRevive
	bg_event  5, 19, BGEVENT_UP, R2HiddenGrotto
	bg_event  6, 19, BGEVENT_UP, R2HiddenGrotto

	db 17 ; object events
	object_event  7, 32, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R2Boulder, EVENT_R2_BOULDER
	object_event 16, 17, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, R2FruitTree, -1
	object_event  4, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R2RareCandy, EVENT_R2_RARE_CANDY
	object_event  3, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R2FullHeal, EVENT_R2_FULL_HEAL
	object_event 27, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R2RepeatBall, EVENT_R2_REPEAT_BALL
	object_event  3,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R2Calcium, EVENT_R2_CALCIUM
	object_event 38, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, R2Carbos, EVENT_R2_CARBOS
	object_event  8, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, R2TMDoubleTeam, EVENT_R2_TM_DOUBLE_TEAM
	object_event 26,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 3, TrainerYoungsterR2, -1
	object_event 21,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED_D, OBJECTTYPE_TRAINER, 2, TrainerLassR2, -1
	object_event 19, 17, SPRITE_SOCIALITE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSocialiteR2, -1
	object_event 38,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanR2, -1
	object_event  7, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBackpackerMR2, -1
	object_event 25, 15, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBackpackerFR2, -1
	object_event 10, 21, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerOfficerR2, -1
	object_event 14, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsR2, -1
	object_event 15, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsR2, -1
	