// ----- REG | RIFLEMAN


class UTF_Rifleman {
	displayName = "01|Rifleman";
	//icon = "";
	role = "REG";

	uniformClass = "rhs_uniform_acu_ocp";
	backpack = "";

	weapons[] = {
		"rhs_weap_m4a1"
	};

	linkedItems[] = {
		"rhsusf_ach_bare",
		"rhsusf_acc_compm4",
		"rhsusf_acc_M952V",
		"rhsusf_spcs_ocp",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_EarPlugs"
	};
};


// ----- REG | INSTRUCTOR


class UTF_Instructor {
	displayName = "02|Instructor";
	//icon = "";
	role = "REG";

	uniformClass = "U_B_CombatUniform_mcam_tshirt";
	backpack = "";

	weapons[] = {
		"rhsusf_weap_glock17g4"
	};

	linkedItems[] = {
		"rhsusf_patrolcap_ocp",
		"acc_flashlight_pistol",
		"V_Rangemaster_belt",
		"rhs_googles_black",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS"
	};
	
	items[] = {
		"ACE_EarPlugs"
	};
};


// ----- SPC | AIRCREW


class UTF_Aircrew {
	displayName = "01|Aircrew";
	//icon = "null";
	role = "SPC";

	uniformClass = "rhs_uniform_abu";
	backpack = "";
	
	weapons[] = {
	  "rhs_weap_m4a1"
	};
	
	linkedItems[] = {
		"rhsusf_spcs_ucp",
		"rhsusf_hgu56p_tan",
		"ItemCompass",
		"ItemWatch",
		"ItemMap",
		"ItemGPS",
		"ACE_NVG_Wide"
	};
	
	items[] = {
	  "ACE_EarPlugs"
	};
};