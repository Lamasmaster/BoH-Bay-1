/datum/species/unathi
	name = SPECIES_UNATHI
	name_plural = SPECIES_UNATHI
	icon_template = 'icons/mob/human_races/species/template_tall.dmi'
	icobase = 'icons/mob/human_races/species/unathi/body.dmi'
	deform = 'icons/mob/human_races/species/unathi/deformed_body.dmi'
	husk_icon = 'icons/mob/human_races/species/unathi/husk.dmi'
	preview_icon = 'icons/mob/human_races/species/unathi/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "sogtail"
	tail_animation = 'icons/mob/species/unathi/unathi_tail.dmi'
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE
	skin_material =   MATERIAL_SKIN_LIZARD

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/tail, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Stok"
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_HIGH
	breath_pressure = 18
	slowdown = 0.5
	brute_mod = 0.8
	flash_mod = 1.2
	blood_volume = 800

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 2

	min_age = 25
	max_age = 260

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "The Reptillian Unathi are a fractured people from the planet moghes, which is coated in loose tributaries of the SCG. \
	Most Unathi owe less allegiance to the SCG than to the group of families they belong to, their clan. \
	Their clan name is their last name, and referring to them by their first name instead is often seen as an insult.<br/><br/> The \
	division along clan lines has stagnated unathi technology to at its highest a pre-industrial level, though their intellect combined\
	with ancient moghesian technology has given them an occasional burst of tech. Unathi are often viewed as savages because of this, \
	their traditionalism, violence, and even sexism in certain clans, but most Unathi are proud of their honour and their meager planet. <br/><br/> Unathi \
	find traditional human temperatures absolutely frigid, and being cold-blooded means coats are no help, but they are capable of \
	regenerating from certain kinds of severe wounds at the cost of their hunger, so long as they don't starve enough that \
	their stomach eats itself. \
	<br/><br/>Naming format: Personalname Clanname"

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS// | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_UNATHI
	base_color = "#066000"
	blood_color = "#f24b2e"
	organs_icon = 'icons/mob/human_races/species/unathi/organs.dmi'

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
	breathing_sound = 'sound/voice/lizard.ogg'

	base_auras = list(
		/obj/aura/regenerating/human/unathi
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle
		)

	prone_overlay_offset = list(-4, -4)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =   /obj/item/organ/internal/eyes/unathi,
		BP_BRAIN =  /obj/item/organ/internal/brain/unathi
		)

	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_UNATHI_DIAMOND_PEAKS,
			CULTURE_UNATHI_POLAR,
			CULTURE_UNATHI_SALT_SWAMP,
			CULTURE_UNATHI_DESERT,
			CULTURE_UNATHI_SAVANNAH,
			CULTURE_UNATHI_TERSTEN,
			CULTURE_UNATHI_SPACE
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MOGHES,
			HOME_SYSTEM_OUERE,
			HOME_SYSTEM_UNATHI_TERSTEN,
			HOME_SYSTEM_OFFWORLD
		),
		TAG_FACTION = list(
			FACTION_UNATHI_CLAN,
			FACTION_UNATHI_KRUKZUZ,
			FACTION_UNATHI_SOL,
			FACTION_UNATHI_INDEPENDENT
		),
		TAG_RELIGION =  list(
			RELIGION_UNATHI_STRATAGEM,
			RELIGION_UNATHI_PRECURSOR,
			RELIGION_UNATHI_VINE,
			RELIGION_UNATHI_LIGHTS,
			RELIGION_UNATHI_OTHER,
			RELIGION_UNATHI_MARKESHELI,
			RELIGION_UNATHI_ANCESTORS
		)
	)
	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze, /decl/emote/audible/roar, /decl/emote/audible/bellow, /decl/emote/audible/howl) = 80,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 20,
		)

/datum/species/unathi/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/unathi/proc/handle_sugar(var/mob/living/carbon/human/M, var/datum/reagent/sugar, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[sugar.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))

/datum/species/unathi/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_UNATHI
