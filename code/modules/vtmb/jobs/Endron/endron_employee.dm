/datum/job/vamp/endronemployee
	title = "Endron Employee"
	faction = "Vampire"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Executive"
	selection_color = "#06402b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/endron_employee
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.

	access = list(ACCESS_MAINT_TUNNELS)
	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ENDRONEMPLOYEE

	allowed_species = list("Human", "Werewolf")

	v_duty = "You may be in the know, or you may not. What matters, is that you keep this high paying job, so do what you are told and protect the interests of Endron, one coffee at a time."
	minimal_masquerade = 0

/datum/outfit/job/endron_employee
	name = "Endron Employee"
	jobtype = /datum/job/vamp/endron_employee
	uniform = /obj/item/clothing/under/pentex/pentex_suit
	shoes = /obj/item/clothing/shoes/vampire
	r_pocket = /obj/item/vamp/keys/pentex
	l_pocket = /obj/item/vamp/phone
	backpack_contents = list(/obj/item/passport=1, /obj/item/cockclock=1, /obj/item/flashlight=1, /obj/item/vamp/creditcard=1)

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/endron_employee/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/pentex/pentex_suitskirt
		shoes = /obj/item/clothing/shoes/vampire/heels

/obj/effect/landmark/start/endron_employee
	name = "Endron Employee"
