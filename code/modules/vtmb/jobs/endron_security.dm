/datum/job/vamp/endronemployee
	title = "Endron Security"
	faction = "Vampire"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Executive"
	selection_color = "#06402b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/job/endron_security
	antag_rep = 7
	paycheck = PAYCHECK_ASSISTANT // Get a job. Job reassignment changes your paycheck now. Get over it.

	access = list(ACCESS_MAINT_TUNNELS)
	liver_traits = list(TRAIT_GREYTIDE_METABOLISM)

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ENDRONSECURITY

	allowed_species = list("Human", "Werewolf")

	v_duty = "You are paid to protect the Endron Facility, their assets and their personnel. Whether it has fangs or not, shoot it down."
	minimal_masquerade = 0

/datum/outfit/job/endron_security
	name = "Endron Security"
	jobtype = /datum/job/vamp/endron_security
	uniform = /obj/item/clothing/under/pentex/pentex_shortsleeve
	shoes = /obj/item/clothing/shoes/vampire/jackboots
	suit= /obj/item/clothing/suit/vampire/vest
	gloves = /obj/item/clothing/gloves/vampire/work
	r_pocket = /obj/item/vamp/keys/pentex
	l_pocket = /obj/item/vamp/phone
	backpack_contents = list(/obj/item/passport=1, /obj/item/vamp/creditcard=1, /obj/item/ammo_box/vampire/c9mm = 1, /obj/item/restraints/handcuffs = 1,/obj/item/melee/classic_baton/vampire = 1, /obj/item/storage/firstaid/ifak = 1)

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/endron_security/pre_equip(mob/living/carbon/human/H)
	..()

/obj/effect/landmark/start/endron_security
	name = "Endron Security"
	icon_state = "Assistant"
