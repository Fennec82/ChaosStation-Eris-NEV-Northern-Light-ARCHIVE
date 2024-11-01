/mob/new_player/verb/new_player_panel_eclipse()
	set src = usr
	new_player_panel_eclipse_proc()

/mob/new_player/proc/new_player_panel_eclipse_proc()
	var/output = "<font size=2>Congratulations! You have been granted the luxury to voyage into the unknown on the <B><u>CEV Eris</B></u>, a state-of-the-art exploration and scientific survey vessel. Whether you're a civilian, \
	 a disciple of NeoTheology, an Ironhammer Merc, a Aster's Guild technician or a Moebius Doctor, welcome!"
	output += "<br>"
	output += "<br>"
	output += "Not every system is fully tested or optimized... and there are some unexplored deckspaces that we didn't have time to clear out. There's also a very minor roach problem, but that's nothing that will interfere with your mission."
	output += "<br>"
	output += "<br>"
	output += "Speaking of your mission, you are intrepid explorers! Your duty out here in the black is to survey and catalogue anomalies and planets for further exploitation. \
	Land on new planets, explore abandoned structures, and most importantly take mineral samples for profit and Research and Development and secure valuable technologies and salvage."
	output += "<br>"
	output += "<br>"
	output += "Now, this mission lies deep in wild space, far beyond the borders of the known star nations, where rival corporations vie for strategic resources. You're going to be mostly alone out there.\
	 This space is dangerous, full of pirates and hazards and anomalies unknown. Not every planet will be uninhabited, not every alien lifeform will be friendly, so guard yourselves well!"
	output += "<br>"
	output += "<br>"
	output += "And remember, this ship is your lifeline; if you abandon it, there's no telling what could happen to you, or the crew that're left behind in cryostasis. \
	And if you abandon it and get back to secure space, there's no telling what the Guild might do to you for wasting their hard work."
	output += "<br>"
	output += "<br>"
	output += "This is your home for the foreseeable future. Don't let them take it, even over your dead bodies.</font>"
	var/datum/browser/panel = new(src, "Welcome to ChaosStation-Eris","ChaosStation-Eris", 750, 750)
	panel.set_content(output)
	panel.open()
	return

//ChaosStation edits - Renames departments and ship back to Eris amnd changes title text to match ChaosStation.