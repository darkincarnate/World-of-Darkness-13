/datum/job/vamp/endronexec
	title = "Endron Executive"
	faction = "Vampire"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Endron Corporate Board"
	selection_color = "#06402b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/endron_executive
	antag_rep = 7
	paycheck = PAYCHECK_COMMAND // Get a job. Job reassignment changes your paycheck now. Get over it.

	access = list(ACCESS_MAINT_TUNNELS)
	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ENDRONEXECUTIVE

	allowed_species = list("Vampire", "Human", "Werewolf")

	v_duty = "Secure Endron International and its assets in San Francisco. You will be watched over and protected by a team of Black Spirals. Resolve any problems as humanly as you can, and maximize profits as inhumanely as you could."
	minimal_masquerade = 0
	experience_addition = 10
	allowed_bloodlines = list("True Brujah", "Baali", "Ventrue", "Lasombra", "Tzimisce")

/datum/outfit/job/endron_executive
	name = "Endron Executive"
	jobtype = /datum/job/vamp/endron_executive

	uniform = /obj/item/clothing/under/pentex/pentex_executive_suit
	shoes = /obj/item/clothing/shoes/vampire
	r_pocket = /obj/item/vamp/keys/pentex
	l_pocket = /obj/item/vamp/phone
	backpack_contents = list(/obj/item/gun/ballistic/automatic/vampire/deagle=1, /obj/item/phone_book=1, /obj/item/passport=1, /obj/item/cockclock=1, /obj/item/flashlight=1, /obj/item/vamp/creditcard=1)

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/endron_executive/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/pentex/pentex_executiveskirt
		shoes = /obj/item/clothing/shoes/vampire/heels

/obj/effect/landmark/start/endron_executive
	name = "Endron Executive"
