//Report datums for use with the report editor and other programs.
//Chaosstation change - Back to Eris format
/datum/computer_file/report/recipient/crew_transfer
	form_name = "CTA-AG-01"
	title = "Crew Transfer Application"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/instruction, "CEV Eris - Office of the Head of Personnel")
	add_field(/datum/report_field/people/from_manifest, "Name (XO)")
	add_field(/datum/report_field/people/from_manifest, "Name (applicant)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/simple_text, "Present position")
	add_field(/datum/report_field/simple_text, "Requested position")
	add_field(/datum/report_field/pencode_text, "Reason stated")
	add_field(/datum/report_field/instruction, "The following fields render the document invalid if not signed clearly.")
	add_field(/datum/report_field/signature, "Applicant signature")
	xo_fields += add_field(/datum/report_field/signature, "First Officer's signature")
	xo_fields += add_field(/datum/report_field/number, "Number of personnel in present/previous position")
	xo_fields += add_field(/datum/report_field/number, "Number of personnel in requested position")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/access_modification
	form_name = "AMA-SGF-02"
	title = "Crew Access Modification Application"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/instruction, "CEV Eris - Office of the Head of Personnel")
	add_field(/datum/report_field/people/from_manifest, "Name (XO)")
	add_field(/datum/report_field/people/from_manifest, "Name (applicant)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/simple_text, "Present position")
	add_field(/datum/report_field/simple_text, "Requested access")
	add_field(/datum/report_field/pencode_text, "Reason stated")
	add_field(/datum/report_field/simple_text, "Duration of expanded access")
	add_field(/datum/report_field/instruction, "The following fields render the document invalid if not signed clearly.")
	add_field(/datum/report_field/signature, "Applicant signature")
	xo_fields += add_field(/datum/report_field/signature, "First Officer's signature")
	xo_fields += add_field(/datum/report_field/number, "Number of personnel in relevant position")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/borging
	form_name = "CC-LFL-09"
	title = "Cyborgification Contract"
	logo = "\[moebius\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/instruction, "CEV Eris - Office of the Head of Personnel")
	add_field(/datum/report_field/people/from_manifest, "Name (XO)")
	add_field(/datum/report_field/people/from_manifest, "Name (subject)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/instruction, "I, undersigned, hereby agree to willingly undergo a Regulation Lobotimization with intention of cyborgification or AI assimilation, and I am aware of all the consequences of such act. I also understand that this operation may be irreversible, and that my employment contract will be terminated.")
	add_field(/datum/report_field/signature, "Subject's signature")
	xo_fields += add_field(/datum/report_field/signature, "First Officer's signature")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/sec
	logo = "\[ironhammer\]"

/datum/computer_file/report/recipient/sec/New()
	..()
	set_access(access_sec_consoles)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/sec/warning
	form_name = "WW-IH-081"
	title = "Written Warning"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/warning/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "Ironhammer Division CEV Eris")
	add_field(/datum/report_field/instruction, "Written Warning.")
	add_field(/datum/report_field/people/from_manifest, "Name")
	add_field(/datum/report_field/pencode_text, "Department")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/pencode_text, "Reason/(s/) for Written Warning:")
	add_field(/datum/report_field/instruction, "This written warning is only valid if served and signed by the Captain, First Officer, or any serving member of Ironhammer")
	add_field(/datum/report_field/signature, "Signature")

/datum/computer_file/report/recipient/sec/complaint
	form_name = "AIC-IH-179"
	title = "Ironhammer Internal Complaint Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/complaint/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "Ironhammer Security Complaint Form")
	add_field(/datum/report_field/instruction, "Vessel: CEV Eris")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/people/from_manifest, "Name of Complainent:")
	add_field(/datum/report_field/people/from_manifest, "Name of Complainee:")
	add_field(/datum/report_field/pencode_text, "Complaint Details:")
	add_field(/datum/report_field/pencode_text, "Witness Details (if applicable)")
	add_field(/datum/report_field/signature, "Signature of Complainent:")
	add_field(/datum/report_field/instruction, "\[center\]\[i\]Provide Commander Resolution, Commander Signature, and Commander Stamp below\[/i\]\[/center\]\[hr\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "Ironhammer Commander Resolution:")
	add_field(/datum/report_field/signature, "Ironhammer Commander Signature")
	add_field(/datum/report_field/instruction, "\[small\]\[center\]This form is for official IRONHAMMER SECURITY use ONLY. \[br\] Any information contained in this form will be considered CLASSIFIED to all but those who are approved to use and view this document\[/center\]\[/small\]")

/datum/computer_file/report/recipient/sec/investigation
	form_name = "IR-IH-43"
	title = "Investigation Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/investigation/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "Ironhammer Division CEV Eris")
	add_field(/datum/report_field/instruction, "For internal use only.")
	add_field(/datum/report_field/people/from_manifest, "Name")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/simple_text, "Case name")
	add_field(/datum/report_field/pencode_text, "Summary")
	add_field(/datum/report_field/pencode_text, "Observations")
	add_field(/datum/report_field/signature, "Signature")
	set_access(access_edit = access_sec_consoles)

/datum/computer_file/report/recipient/sec/incident
	form_name = "SIR-IH-12"
	title = "Security Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "Ironhammer Division CEV Eris")
	add_field(/datum/report_field/instruction, "To be filled out by Operative on duty responding to the Incident. Report must be signed and submitted before the end of the shift!")
	add_field(/datum/report_field/people/from_manifest, "Reporting Operative")
	add_field(/datum/report_field/simple_text, "Offense/Incident Type")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time of incident")
	add_field(/datum/report_field/people/list_from_manifest, "Assisting Operative(s)")
	add_field(/datum/report_field/simple_text, "Location")
	add_field(/datum/report_field/pencode_text, "Personnel involved in Incident", "\[small\]\[i\](V-Victim, S-Suspect, W-Witness, M-Missing, A-Arrested, RP-Reporting Person, D-Deceased)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "Description of Items/Property", "\[small\]\[i\](D-Damaged, E-Evidence, L-Lost, R-Recovered, S-Stolen)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "Narrative")
	add_field(/datum/report_field/signature, "Reporting Operative's signature")
	set_access(access_edit = access_sec_consoles)

/datum/computer_file/report/recipient/sec/evidence
	form_name = "EPF-IH-02b"
	title = "Evidence and Property Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/evidence/generate_fields()
	..()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/instruction, "Ironhammer Division CEV Eris")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/people/from_manifest, "Confiscated from")
	add_field(/datum/report_field/pencode_text, "List of items in custody/evidence lockup")
	set_access(access_edit = access_sec_consoles)
	temp_field = add_field(/datum/report_field/signature, "Gunnery Sergeant's signature")
	temp_field.set_access(access_edit = list(access_sec_consoles, access_armory_consoles))
	temp_field = add_field(/datum/report_field/signature, "Detective/MedSpec's signature")
	temp_field.set_access(access_edit = list(access_sec_consoles, access_forensics_lockers))



//Supply and Exploration; these are not shown in deck manager.

/datum/computer_file/report/recipient/docked
	logo = "\[guild\]"
	form_name = "DVR-CEV-12"
	title = "Docked Vessel Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()
	set_access(access_cargo, access_cargo)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/docked/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "CEV Eris Supply and Hangar Management Department")
	add_field(/datum/report_field/instruction, "General Info")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/simple_text, "Vessel Name")
	add_field(/datum/report_field/simple_text, "Vessel Pilot/Owner")
	add_field(/datum/report_field/simple_text, "Vessel Intended Purpose")
	add_field(/datum/report_field/people/from_manifest, "Docking Authorized by")
	add_field(/datum/report_field/instruction, "General Cargo Info")
	add_field(/datum/report_field/pencode_text, "List the types of cargo onboard the vessel")
	add_field(/datum/report_field/instruction, "Hazardous Cargo Info")
	add_field(/datum/report_field/options/yes_no, "Weaponry")
	add_field(/datum/report_field/options/yes_no, "Live Cargo")
	add_field(/datum/report_field/options/yes_no, "Biohazardous material")
	add_field(/datum/report_field/options/yes_no, "Chemical or radiation hazard")
	add_field(/datum/report_field/signature, "To indicate authorization for vessel entry, sign here")
	add_field(/datum/report_field/instruction, "Undocking and Departure")
	add_field(/datum/report_field/time, "Undocking Time")
	add_field(/datum/report_field/pencode_text, "Additional Undocking Comments")

/datum/computer_file/report/recipient/fauna
	logo = "\[moebius\]"
	form_name = "AFR-LFL-19f"
	title = "Alien Fauna Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()
	set_access(access_edit = access_cargo)
	set_access(access_edit = access_moebius, override = 0)

/datum/computer_file/report/recipient/fauna/generate_fields()
	..()
	add_field(/datum/report_field/instruction, "CEV Eris Expeditions")
	add_field(/datum/report_field/instruction, "The following is to be filled out by members of a Expedition team after discovery and study of new alien life forms.")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/people/list_from_manifest, "Personnel Involved")
	add_field(/datum/report_field/pencode_text, "Anatomy/Appearance")
	add_field(/datum/report_field/pencode_text, "Locomotion")
	add_field(/datum/report_field/pencode_text, "Diet")
	add_field(/datum/report_field/pencode_text, "Habitat")
	add_field(/datum/report_field/simple_text, "Homeworld")
	add_field(/datum/report_field/pencode_text, "Behavior")
	add_field(/datum/report_field/pencode_text, "Defense/Offense")
	add_field(/datum/report_field/pencode_text, "Special Characteristic(s)")
	add_field(/datum/report_field/pencode_text, "Classification")
	add_field(/datum/report_field/instruction, "On completion of this form and form approval, the Research Director should fax the form to the Commanding Officer, as well as keep a copy on file in their Office alongside other mission reports.") // Chaosstation change - removes mention of corp officer

//NT reports, mostly for liason but can be used by any NT personnel.

/datum/computer_file/report/recipient/laz
	logo = "\[moebius\]"

/datum/computer_file/report/recipient/laz/proc/add_header()
	add_field(/datum/report_field/simple_text, "Vessel", "CEV Eris")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/simple_text, "Index")

/datum/computer_file/report/recipient/laz/anomaly
	form_name = "AOR-LFL-1546"
	title = "Anomalous Object Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/laz/anomaly/New()
	..()
	set_access(access_moebius, access_moebius)

/datum/computer_file/report/recipient/laz/anomaly/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "AO Codename")
	add_field(/datum/report_field/people/from_manifest, "Reporting Scientist")
	add_field(/datum/report_field/people/from_manifest, "Overviewing Science Officer")
	add_field(/datum/report_field/pencode_text, "Containment Procedures")
	add_field(/datum/report_field/pencode_text, "Generalized Overview")
	add_field(/datum/report_field/simple_text, "Approximate Age of AO")
	add_field(/datum/report_field/simple_text, "Threat Level of AO")

/datum/computer_file/report/recipient/nt
	logo = "\[logo\]"

/datum/computer_file/report/recipient/nt/proc/add_header()
	add_field(/datum/report_field/simple_text, "Vessel", "CEV Eris")
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/simple_text, "Index")

/datum/computer_file/report/recipient/nt/fire
	form_name = "CEV-0102"
	title = "CEV Employment Termination Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/fire/New()
	..()
	set_access(access_heads, access_heads)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/nt/fire/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "Notice of Termination of Employment")
	add_field(/datum/report_field/people/from_manifest, "Name")
	add_field(/datum/report_field/number, "Age")
	add_field(/datum/report_field/simple_text, "Position")
	add_field(/datum/report_field/pencode_text, "Reason for Termination")
	add_field(/datum/report_field/signature, "Authorized by")
	add_field(/datum/report_field/instruction, "Please attach necessary information alongside notice of termination.")

/datum/computer_file/report/recipient/nt/incident/New()
	..()
	set_access(access_edit = access_heads)

/datum/computer_file/report/recipient/nt/incident/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/pencode_text, "Summary of Incident")
	add_field(/datum/report_field/pencode_text, "Details of Incident")

/datum/computer_file/report/recipient/nt/incident/proc/add_signatures()
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/signature, "Witness Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")

/datum/computer_file/report/recipient/nt/incident/ship
	form_name = "CEV-3203"
	title = "CEV Eris Ship Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/ship/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "Departments Involved")
	add_signatures()


/datum/computer_file/report/recipient/nt/incident/personnel
	form_name = "CEV-3205"
	title = "CEV Eris Personnel Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/personnel/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "Employee(s) Involved")
	add_signatures()

/datum/computer_file/report/recipient/sec/incident/asset
	form_name = "AIR-AS-3201"
	title = "CEV Eris Asset Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/asset/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "CEV Eris Employee Injuries")
	add_field(/datum/report_field/pencode_text, "CEV Eris Assets Lost")
	add_signatures()

/datum/computer_file/report/recipient/sec/incident/xeno
	form_name = "NCI-AS-3213"
	title = "Non-Crew Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/xeno/generate_fields()
	add_field(/datum/report_field/instruction, "If non-crew employee lacks a valid authorization, use form NEV-3213A instead.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "Crew Member(s) Involved")
	add_field(/datum/report_field/pencode_text, "Non-Crew Entitie(s) Involved")
	add_field(/datum/report_field/pencode_text, "Description of Incident")
	add_field(/datum/report_field/signature, "Signature")

/datum/computer_file/report/recipient/nt/incident/crew
	form_name = "CEV-3241"
	title = "CEV Eris Ship Crew/Employee Incident Report"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/crew/generate_fields()
	add_field(/datum/report_field/instruction, "For multi-party incidents involving both ship crew and foreign assets.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "Crew Member(s) Involved")
	add_field(/datum/report_field/people/list_from_manifest, "Foreign asset(s) Involved")
	add_signatures()

/datum/computer_file/report/recipient/laz/volunteer
	form_name = "TSV-LFL-1443"
	title = "Moebius MedSci Test Subject Volunteer Form"
	logo= "\[moebius\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/laz/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "Name of Volunteer")
	add_field(/datum/report_field/simple_text, "Intended Procedure(s)")
	add_field(/datum/report_field/simple_text, "Compensation for Volunteer: (if any)")
	add_field(/datum/report_field/people/list_from_manifest, "Handling Researcher(s)")
	add_field(/datum/report_field/instruction, "By signing, the \"Volunteer\" agrees to absolve Moebius MedSci, and its employees, of any liability or responsibility for injuries, damages, property loss or side-effects that may result from the intended procedure. If signed by an authorized representative of Moebius MedSci, this form is deemed reviewed, but is only approved if so marked.")
	add_field(/datum/report_field/signature, "Volunteer's Signature:")
	add_field(/datum/report_field/signature, "Volunteer's Department Head Signature:")
	temp_fields += add_field(/datum/report_field/signature, "Moebius MedSci Representative's Signature")
	temp_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/temp_field in temp_fields)
		temp_field.set_access(access_edit = access_moebius)

/datum/computer_file/report/recipient/laz/deny
	form_name = "TSV-LFL-1443D"
	title = "Rejection of Test Subject Volunteer Notice"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/deny/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "Dear Sir/Madam, we regret to inform you that your volunteer application for service as a test subject with Moebius MedSci has been rejected. We thank you for your interest in our company and the progression of research. Attached, you will find a copy of your original volunteer form for your records. Regards,")
	add_field(/datum/report_field/signature, "Moebius MedSci Representative's Signature")
	add_field(/datum/report_field/people/from_manifest, "Name of Volunteer")
	add_field(/datum/report_field/instruction, "Reason for Rejection")
	add_field(/datum/report_field/options/yes_no, "Physically Unfit")
	add_field(/datum/report_field/options/yes_no, "Mentally Unfit")
	add_field(/datum/report_field/options/yes_no, "Project Cancellation")
	add_field(/datum/report_field/simple_text, "Other")
	add_field(/datum/report_field/options/yes_no, "Report Approved")
	set_access(access_edit = access_moebius)

/datum/computer_file/report/recipient/nt/memo/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "Subject")
	add_field(/datum/report_field/pencode_text, "Body")
	add_field(/datum/report_field/signature, "Authorizing Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")

/datum/computer_file/report/recipient/nt/memo/internal
	form_name = "CEV-0003"
	title = "Internal Memorandum"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/memo/internal/New()
	..()
	set_access(access_heads, access_heads)

/datum/computer_file/report/recipient/nt/memo/external
	form_name = "CEV-0005"
	title = "External Memorandum"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/memo/external/New()
	..()
	set_access(access_edit = access_heads)

//No access restrictions for easier use.
/datum/computer_file/report/recipient/nt/sales
	form_name = "AG-2192"
	title = "Aster's Guild Sales Contract and Receipt"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/sales/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/instruction, "Product Information")
	add_field(/datum/report_field/simple_text, "Product Name")
	add_field(/datum/report_field/simple_text, "Product Type")
	add_field(/datum/report_field/number, "Product Unit Cost (T)")
	add_field(/datum/report_field/number, "Product Units Requested")
	add_field(/datum/report_field/number, "Total Cost (T)")
	add_field(/datum/report_field/instruction, "Seller Information")
	add_field(/datum/report_field/instruction, "The 'Purchaser' may not return any sold product units for re-compensation in Credits, but may return the item for an identical item, or item of equal material (not Credits) value. The 'Seller' agrees to make their best effort to repair, or replace any items that fail to accomplish their designed purpose, due to malfunction or manufacturing error - but not user-caused damage.")
	add_field(/datum/report_field/people/from_manifest, "Name")
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")

/datum/computer_file/report/recipient/nt/visa
	form_name = "CEV-0952"
	title = "CEV Eris ID or PDA Request Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/visa/generate_fields()
	..()
	add_header()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/people/from_manifest, "Intended Recipient of ID or PDA")
	add_field(/datum/report_field/pencode_text, "Reason for Request")
	add_field(/datum/report_field/signature, "Applicant's Signature")
	temp_field = add_field(/datum/report_field/signature, "Request Issuer's Signature")
	temp_field.set_access(access_edit = access_heads)
	temp_field = add_field(/datum/report_field/options/yes_no, "Request Approved by Issuer")
	temp_field.set_access(access_edit = access_heads)
	temp_field = add_field(/datum/report_field/signature, "Issuing Authority's Signature (acknowledging reciept)")
	temp_field.set_access(access_edit = access_heads)

/datum/computer_file/report/recipient/nt/payout
	form_name = "CEV-3310"
	title = "Next of Kin Payout Authorization"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/payout/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "This document hereby authorizes the payout of the remaining salary of")
	add_field(/datum/report_field/pencode_text, "As well as the net-worth of any remaining personal assets: (Asset, Credits Amount)")
	add_field(/datum/report_field/pencode_text, "Including personal effects")
	add_field(/datum/report_field/instruction, "To be shipped and delivered directly to the employee's next of kin without delay.")
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")
	set_access(access_edit = access_heads)

/datum/computer_file/report/recipient/eng
	logo = "\[engineering\]"

/datum/computer_file/report/recipient/eng/New()
	..()
	set_access(access_engine)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/eng/audit
	form_name = "EDA-AG-12"
	title = "CEV Eris Department Audit"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/eng/audit/generate_fields()
	add_field(/datum/report_field/date, "Date")
	add_field(/datum/report_field/time, "Time")
	add_field(/datum/report_field/simple_text, "Name of Department")
	add_field(/datum/report_field/pencode_text, "Department Equipment Inspected", "\[i\]\[small\]This field is for any essential equipment inside the department/area, this includes APC’s, Fire Alarms, Intercoms and anything else deemed essential.\[/small\]\[/i\]")
	add_field(/datum/report_field/pencode_text, "Observations")
	add_field(/datum/report_field/pencode_text, "Other Notes")
	add_field(/datum/report_field/signature, "Signature")
	add_field(/datum/report_field/options/yes_no, "Approved")