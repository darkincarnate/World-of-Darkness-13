/datum/job/vamp/endronemployee
	title = "Endron Scientist"
	faction = "Vampire"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive"
	selection_color = "#06402b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/endron_scientist
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.

	access = list(ACCESS_MAINT_TUNNELS)
	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ENDRONSCIENTIST

	allowed_species = list("Human", "Werewolf")

	v_duty = "You are responsible for all manner of human rights violations here, at Endron International. Find out what happens when you put a Bane into someone, or switch their organs around. For science."
	minimal_masquerade = 0

/datum/outfit/job/endron_scientist
	name = "Endron Scientist"
	jobtype = /datum/job/vamp/endron_scientist
	uniform = obj/item/clothing/under/pentex/pentex_turtleneck
	shoes = /obj/item/clothing/shoes/vampire
	suit= /obj/item/clothing/suit/pentex/pentex_labcoat
	gloves = /obj/item/clothing/gloves/vampire/latex
	r_pocket = /obj/item/vamp/keys/pentex
	l_pocket = /obj/item/vamp/phone
	backpack_contents = list(/obj/item/passport=1, /obj/item/cockclock=1, /obj/item/flashlight=1, /obj/item/vamp/creditcard=1, /obj/item/storage/firstaid/medical=1)

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/endron_scientist/pre_equip(mob/living/carbon/human/H)
	..()

/obj/effect/landmark/start/endron_scientist
	name = "Endron Scientist"
	icon_state = "Assistant"
