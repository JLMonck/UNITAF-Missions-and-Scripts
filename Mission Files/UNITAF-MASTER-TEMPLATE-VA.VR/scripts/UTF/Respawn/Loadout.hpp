class UTF_Commander {
	displayName = "1|Company Commander";
	//icon = "";
	role = "HQ";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";

	weapons[] = {
		""
	};

	linkedItems[] = {
		"rhsusf_ach_bare_tan",
		"acc_flashlight_pistol",
		"G_Aviator",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_MRE_BeefStew",
		"ACE_Canteen",
		"ACRE_PRC152",
		"ACE_EarPlugs"
	};
};

class UTF_OfficerOps {
	displayName = "2|Operations Officer";
	//icon = "null";
	role = "HQ";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";

	weapons[] = {
		"rhsusf_weap_glock17g4",
		"rhsusf_bino_lrf_Vector21"
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp",
		"rhssaf_beret_green",
		"rhs_googles_black",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_MRE_SteakVegetables",
		"ACE_Flashlight_XL50",
		"ACE_Canteen",
		"ACRE_PRC343",
		"ACRE_PRC152",
		"ACE_EarPlugs"
	};
};

class UTF_OfficerInt {
	displayName = "3|Intelligence Officer";
	//icon = "null";
	role = "HQ";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "tfw_ilbe_dd_coy";

	weapons[] = {
		"rhsusf_weap_glock17g4",
		"rhsusf_bino_lrf_Vector21"
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp_crewman",
		"H_Watchcap_cbr",
		"rhs_googles_yellow",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_MRE_SteakVegetables",
		"ACE_Flashlight_XL50",
		"ACE_Canteen",
		"ACRE_PRC117F",
		"ACRE_PRC152",
		"ACRE_PRC152",
		"ACE_EarPlugs"
	};
};

class UTF_OfficerLog {
	displayName = "4|Logistics Officer";
	//icon = "null";
	role = "HQ";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "tfw_ilbe_a_coy";

	weapons[] = {
		"rhs_weap_m4a1_blockII_d",
		"ACE_VMM3"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Repair",
		"H_Cap_headphones",
		"rhsusf_shemagh_tan",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_MRE_SteakVegetables",
		"ACE_Flashlight_XL50",
		"ACE_personalAidKit",
		"ACE_surgicalKit",
		"ACE_Fortify",
		"ACE_Canteen",
		"ACRE_PRC152",
		"ACRE_PRC117F",
		"ACE_EarPlugs",
		"ToolKit",
	};
};
class UTF_UNARMED {
	displayName = "00|Beret";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";

	linkedItems[] = {
		"rhssaf_beret_green",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343"
	};
};
class UTF_R {
	displayName = "00|Rifleman";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Rifleman",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343"
	};
};

class UTF_PTL {
	displayName = "01|Platoon Leader";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "tfw_ilbe_dd_coy";
	
	weapons[] = {
		"rhs_weap_m4a1_m320",
		"rhsusf_weap_glock17g4",
		"Rangefinder"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Squadleader",
		"rhsusf_ach_helmet_headset_ocp_alt",
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_ACOG3_USMC",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};

	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC152",
		"ACRE_PRC148",
	};
};

class UTF_SQL {
	displayName = "02|Squad Leader";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "tfw_ilbe_dd_coy";
	
	weapons[] = {
		"rhs_weap_m4a1_m320",
		"rhsusf_weap_glock17g4",
		"Rangefinder"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Squadleader",
		"rhsusf_ach_helmet_headset_ocp_alt",
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_ACOG3_USMC",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};

	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC148",
		"ACRE_PRC152"
	};
};

class UTF_FTL {
	displayName = "03|Team Leader";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	weapons[] = {
		"rhs_weap_m4a1_m320",
		"rhsusf_weap_glock17g4",
		"Rangefinder"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Teamleader",
		"rhsusf_ach_helmet_headset_ess_ocp_alt",
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_ACOG_RMR",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};

	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};


class UTF_AUR1 {
	displayName = "05|Autorifleman (249 Short)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m249_light_S",
		"rhsusf_weap_glock17g4"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_ESS_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_grip4_bipod",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_AUR2 {
	displayName = "05|Autorifleman (249 Long)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m249_light_L",
		"rhsusf_weap_glock17g4"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_ESS_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_grip4_bipod",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_AURA {
	displayName = "06|Assistant Autorifleman";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "B_Carryall_cbr";
	
	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_LM {
	displayName = "07|Combat Lifesaver";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "B_Kitbag_cbr";
	
	weapons[] = {
		"rhs_weap_m4a1",
		"rhsusf_weap_m9"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Medic",
		"rhsusf_ach_helmet_ocp_norotos",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"ACE_EntrenchingTool",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_250",
		"ACE_bloodIV_250",
		"ACE_bodyBag",
		"ACE_bodyBag"
	};
};

class UTF_GRN1 {
	displayName = "08|Grenadier (M4)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_falconii_mc";
	
	weapons[] = {
		"rhs_weap_m4a1_m320"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Grenadier",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_GRN2 {
	displayName = "08|Grenadier (M16)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_falconii_mc";
	
	weapons[] = {
		"rhs_weap_m16a4_carryhandle_M203"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Grenadier",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_GRN3 {
	displayName = "08|Grenadier (HK416)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_falconii_mc";
	
	weapons[] = {
		"rhs_weap_hk416d145_m320"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Grenadier",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_ENG {
	displayName = "09|Combat Engineer";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Repair",
		"rhsusf_ach_helmet_headset_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148",
		"ACE_Clacker",
		"ACE_DefusalKit"
	};
};

class UTF_SM {
	displayName = "10|Squad Medic";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "B_Carryall_cbr";
	
	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Medic",
		"rhsusf_ach_helmet_ocp_norotos",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_JHP",
		"ACE_EntrenchingTool",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_bloodIV",
		"ACE_Splint",
		"ACE_Splint",
		"ACE_Splint",
		"ACE_Splint",
		"ACE_Splint",
		"ACE_Splint",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_bloodIV_500",
		"ACE_personalAidKit",
		"ACE_personalAidKit",
		"ACE_personalAidKit",
		"ACE_personalAidKit",
		"ACE_bodyBag",
		"ACE_bodyBag"
	};
};

class UTF_LAT {
	displayName = "11|Light Anti-Tank";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	weapons[] = {
		"rhs_weap_m4a1",
		"rhs_weap_M136_hedp"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Rifleman",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"rhs_acc_at4_handler",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_MAT {
	displayName = "12|Medium Anti-Tank";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m4a1",
		"rhs_weap_maaws"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Rifleman",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"rhs_optic_maaws",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_HAT {
	displayName = "12|Heavy Anti-Tank";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m4a1",
		"rhs_weap_fgm148"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_Rifleman",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_MG {
	displayName = "13|Machinegunner";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	weapons[] = {
		"rhs_weap_m240B",
		"rhsusf_weap_glock17g4",
		"rhsusf_assault_eagleaiii_ocp"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_ESS_ocp",
		"rhsusf_acc_ELCAN",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_MGA {
	displayName = "14|Machinegunner Assistant";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "rhsusf_assault_eagleaiii_ocp";
	
	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_ocp",
		"rhsusf_acc_M952V",
		"rhsusf_acc_compm4",
		"rhsusf_acc_grip2",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		#include "Mags.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_DM {
	displayName = "15| Marksman (M2010)";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "ACE_TacticalLadder_Pack";
	
	weapons[] = {
		"rhs_weap_XM2010",
		"rhsusf_weap_glock17g4",
		"Rangefinder"
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp_sniper",
		"rhsusf_ach_helmet_camo_ocp",
		"rhsusf_acc_M8541_mrds",
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_harris_bipod",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_B {
	displayName = "16|Breacher";
	//icon = "null";
	role = "AMFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	weapons[] = {
		"rhs_weap_M590_8RD",
		"rhsusf_weap_glock17g4"
	};

	linkedItems[] = {
		"rhsusf_iotv_ocp_SAW",
		"rhsusf_ach_helmet_headset_ess_ocp",
		"ItemCompass",
		"ItemWatch",
		"ItemMap"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343",
		"ACRE_PRC148"
	};
};

class UTF_PH1 {
	displayName = "Placeholder";
	//icon = "null";
	role = "MARFOR";

	uniformClass = "rhs_uniform_acu_oefcp";
	backpack = "";
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343"
	};
};

class UTF_PH2 {
	displayName = "Placeholder";
	//icon = "null";
	role = "JSOTF";

	uniformClass = "rhs_uniform_acu_oefcp";
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC343"
	};
};

class UTF_RP_Pilot {
	displayName = "Afgan Pilot";
	//icon = "null";
	role = "ANA";

	uniformClass = "LOP_U_AA_Fatigue_02";
	backpack = "tfw_ilbe_dd_coy";
	
	weapons[] = {
		"rhs_weap_m21s"
	};

	linkedItems[] = {
		"LOP_V_Carrier_OLV",
		"H_PilotHelmetHeli_I_E",
		"rhs_acc_2dpZenitV",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS",
		"rhsgref_30rnd_556x45_m21",
		"rhsgref_30rnd_556x45_m21",
		"rhsusf_ANPVS_15"
	};
	
	items[] = {
		#include "Uniform.hpp"
		"ACRE_PRC152"
	};
};