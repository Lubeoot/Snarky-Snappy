/datum/techweb_node/engineering
	id = "engineering"
	display_name = "Industrial Engineering + Tier Two Parts"
	description = "A refresher course on modern engineering technology."
	prereq_ids = list("base")
	design_ids = list(
		"adv_capacitor",
		"adv_matter_bin",
		"adv_scanning",
		"airalarm_electronics",
		"airlock_board",
		"anomaly_refinery",
		"apc_control",
		"atmos_control",
		"atmos_thermal",
		"atmosalerts",
		"autolathe",
		"cell_charger",
		"crystallizer",
		"electrolyzer",
		"emergency_oxygen_engi",
		"emergency_oxygen",
		"emitter",
		"firealarm_electronics",
		"firelock_board",
		"generic_tank",
		"grounding_rod",
		"high_cell",
		"high_micro_laser",
		"mesons",
		"nano_mani",
		"airlock_board_offstation", //MONKESTATION ADDITION - old airlock board for charlie station
		"oxygen_tank",
		"pacman",
		"plasma_tank",
		"plasmaman_tank_belt",
		"pump",
		"scrubber",
		"pipe_scrubber",
		"pneumatic_seal",
		"power_control",
		"powermonitor",
		"rad_collector",
		"recharger",
		"recycler",
		"rped",
		"scanner_gate",
		"solarcontrol",
		"stack_console",
		"stack_machine",
		"suit_storage_unit",
		"tank_compressor",
		"tesla_coil",
		"thermomachine",
		"w-recycler",
		"welding_goggles",
		"teg",
		"teg-circ",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)
	discount_experiments = list(/datum/experiment/scanning/random/material/easy = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/adv_engi
	id = "adv_engi"
	display_name = "Advanced Engineering"
	description = "Pushing the boundaries of physics, one chainsaw-fist at a time."
	prereq_ids = list("engineering", "emp_basic")
	design_ids = list(
		"HFR_core",
		"HFR_corner",
		"HFR_fuel_input",
		"HFR_interface",
		"HFR_moderator_input",
		"HFR_waste_output",
		"engine_goggles",
		"forcefield_projector",
		"magboots",
		"rcd_loaded",
		"rcd_ammo",
		"rpd_loaded",
		"rtd_loaded",
		"sheetifier",
		"weldingmask",
		"bolter_wrench",
		"multi_cell_charger", //Monkestation addition
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)
	discount_experiments = list(
		/datum/experiment/scanning/random/material/medium/one = TECHWEB_TIER_2_POINTS,
		/datum/experiment/ordnance/gaseous/bz = TECHWEB_TIER_3_POINTS,
	)

/datum/techweb_node/telecomms
	id = "telecomms"
	display_name = "Telecommunications Technology"
	description = "Subspace transmission technology for near-instant communications devices."
	prereq_ids = list("comptech", "bluespace_basic")
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	design_ids = list(
		"comm_monitor",
		"comm_server",
		"ntnet_relay",
		"s_amplifier",
		"s_analyzer",
		"s_ansible",
		"s_broadcaster",
		"s_bus",
		"s_crystal",
		"s_filter",
		"s_hub",
		"s_messaging",
		"s_processor",
		"s_receiver",
		"s_relay",
		"s_server",
		"s_transmitter",
		"s_treatment",
		"s_traffic", // MONKESTATION ADDITION -- NTSL -- The board to actually program in NTSL
	)

/datum/techweb_node/emp_basic //EMP tech for some reason
	id = "emp_basic"
	display_name = "Electromagnetic Theory"
	description = "Study into usage of frequencies in the electromagnetic spectrum."
	prereq_ids = list("base")
	design_ids = list(
		"holosign",
		"holosignsec",
		"holosignengi",
		"holosignatmos",
		"holosignrestaurant",
		"holosignbar",
		"inducer",
		"tray_goggles",
		"holopad",
		"vendatray",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/adv_power
	id = "adv_power"
	display_name = "Advanced Power Manipulation"
	description = "How to get more zap."
	prereq_ids = list("engineering")
	design_ids = list(
		"power_turbine_console",
		"smes",
		"turbine_compressor",
		"turbine_rotor",
		"turbine_stator",
		"modular_shield_generator",
		"modular_shield_node",
		"modular_shield_relay",
		"modular_shield_charger",
		"modular_shield_well",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	discount_experiments = list(/datum/experiment/scanning/points/machinery_pinpoint_scan/tier2_capacitors = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/integrated_hud
	id = "integrated_HUDs"
	display_name = "Integrated HUDs"
	description = "The usefulness of computerized records, projected straight onto your eyepiece!"
	prereq_ids = list("comp_recordkeeping", "emp_basic")
	design_ids = list(
		"diagnostic_hud",
		"health_hud",
		"scigoggles",
		"pathology_goggles", // monkestation addition
		"security_hud",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)

/datum/techweb_node/nvg_tech
	id = "NVGtech"
	display_name = "Night Vision Technology"
	description = "Allows seeing in the dark without actual light!"
	prereq_ids = list("integrated_HUDs", "adv_engi")
	design_ids = list(
		"diagnostic_hud_night",
		"health_hud_night",
		"night_visision_goggles",
		"nvgmesons",
		"nv_scigoggles",
		"nv_pathology_goggles", // monkestation addition
		"security_hud_night",
		"mech_light_amplification",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
