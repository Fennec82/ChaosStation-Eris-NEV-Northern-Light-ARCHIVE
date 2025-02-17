/datum/category_item/setup_option/core_implant/cruciform
	name = "NeoTheology Cruciform" //ChaosStation Change - NeoTheology
	desc = "Deus Ex Anima. A marvelous confection of modern technology, the Cruciform <br>\
	allows a faithful acolyte to retain their mind in soul even in death.<br>\
	Signifies your dedication and loyalty to the Church of Neotheology."
	implant_type = /obj/item/implant/core_implant/cruciform
	restricted_depts = IRONHAMMER | MEDICAL | SCIENCE //Chaos edit - NeoTheology Cruciform changed to allow for command access, because the preacher and [REDACTED] also have the command flag
	allowed_depts = CHURCH | COMMAND
	allow_modifications = TRUE

/datum/category_item/setup_option/core_implant/cruciform/apply(mob/living/carbon/human/character)
	if(character.mind.assigned_role != "Robot")	// Eclipse add - Check if they're a cyborg before doing it
		var/obj/item/implant/core_implant/cruciform/C = new implant_type
		C.install(character)
		C.activate()
		C.install_default_modules_by_job(character.mind.assigned_job)
		C.access.Add(character.mind.assigned_job.cruciform_access)
		spawn(1)
			var/datum/core_module/cruciform/cloning/R = C.get_module(CRUCIFORM_CLONING)
			R.ckey = character.ckey

/datum/category_item/setup_option/core_implant/soulcrypt
	name = "Moebius Soulcrypt"
	desc = "An Innovation in the fields of neural networking and biological technology!<br>\
	The Soulcrypt not only saves a DNA profile of you,<br>\
	but also a scan of your entire brain allowing you to be reborn in the event of death!<br>\
	Brought to you by Moebius MedSci."
	implant_type = /obj/item/implant/core_implant/soulcrypt
	allow_modifications = TRUE

/datum/category_item/setup_option/core_implant/soulcrypt/apply(mob/living/carbon/human/character)
	if(character.mind.assigned_role != "Robot")	// Eclipse add - Check if they're a cyborg before doing it
		character.create_soulcrypt()