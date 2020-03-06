//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :arsenalAccess

    Work In Progress
    
*/

params [
  "_fullAccess",
  "_prefix"
];

sleep 1;
[arsenal, true, false] call ace_arsenal_fnc_removeVirtualItems;

// PRESETS - TEMPORARY
_presetRecruit =
["rhsusf_acc_eotech_552","rhsusf_acc_eotech_552_d","rhsusf_acc_anpeq15side","rhsusf_acc_anpeq15_top","acc_flashlight_pistol","rhsusf_acc_grip2","rhsusf_acc_grip1","rhsusf_200Rnd_556x45_box","rhsusf_200rnd_556x45_mixed_box","rhsusf_ANPVS_14","Binocular","ItemMap","ItemCompass","ItemWatch","rhs_mag_m18_green","rhs_mag_m18_purple","rhs_mag_m18_red","rhs_mag_m18_yellow","rhs_mag_an_m8hc","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_IR","ACE_elasticBandage","ACE_CableTie","ACE_EarPlugs","ACE_MapTools","ACE_morphine","ACE_tourniquet","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_FMJ","ACE_SpraypaintRed","rhs_mag_m67","rhs_uniform_cu_ocp","rhsusf_ach_helmet_ocp","rhsusf_acc_M952V","rhsusf_acc_nt4_black","rhsusf_acc_nt4_tan","rhsusf_acc_grip4","rhsusf_acc_compm4","rhsusf_weap_m9","rhs_mag_M397_HET","rhs_mag_M433_HEDP","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_M585_white","rhs_mag_m661_green","rhsusf_100Rnd_556x45_mixed_soft_pouch","rhsusf_100Rnd_556x45_soft_pouch","rhsusf_acc_omega9k","rhsusf_mag_7x45acp_MHP","rhs_weap_m4a1","rhsusf_100Rnd_762x51","ACE_EntrenchingTool","rhs_mag_an_m14_th3","ACE_M84","G_Shades_Green","G_Shades_Blue","G_Shades_Black","rhsusf_acc_saw_bipod","rhsusf_acc_grip4_bipod","rhsusf_acc_saw_lw_bipod","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhsusf_ANPVS_15","MRAWS_HE_F","MRAWS_HEAT55_F","ItemGPS","ACE_splint","ACE_SpraypaintGreen","ACE_SpraypaintBlue","ACE_SpraypaintBlack","G_Shades_Red","rhsusf_100Rnd_762x51_m62_tracer","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_googles_yellow","rhs_googles_clear","rhs_googles_orange","ACE_NVG_Wide","rhsusf_Rhino","ACE_Flashlight_MX991","TFAR_anprc152","ACE_Flashlight_Maglite_ML300L","rhs_uniform_acu_ocp","rhsusf_iotv_ocp_Rifleman","rhsusf_falconii_mc","rhs_optic_maaws","MRAWS_HEAT_F","rhs_weap_m4a1_carryhandle","TFAR_microdagr","ACE_bloodIV_250","rhsusf_weap_glock17g4","rhsusf_weap_m1911a1","rhsusf_acc_mrds","rhsusf_acc_mrds_c","rhsusf_spcs_ocp_rifleman","ACE_bodyBag"]
;
_presetRegular =
["rhs_weap_m4a1_blockII_d","rhs_weap_m4a1_d","rhsusf_weap_glock17g4","rhsusf_acc_ACOG_RMR","rhsusf_acc_ACOG_d","rhsusf_acc_eotech_552","rhsusf_acc_eotech_552_d","rhsusf_acc_anpeq15side","rhsusf_acc_anpeq15_top","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_bk_top","acc_flashlight_pistol","rhsusf_acc_grip2","rhsusf_acc_grip2_tan","rhsusf_acc_grip1","rhsusf_200Rnd_556x45_box","rhsusf_200rnd_556x45_mixed_box","rhs_googles_black","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear","G_Bandanna_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_ylw","rhsusf_ANPVS_14","Binocular","ItemMap","ItemCompass","ItemWatch","rhs_mag_m18_green","rhs_mag_m18_purple","rhs_mag_m18_red","rhs_mag_m18_yellow","rhs_mag_an_m8hc","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_IR","rhs_weap_hk416d10_LMT_d","ACE_elasticBandage","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_EarPlugs","ACE_epinephrine","ACE_Flashlight_XL50","ACE_MapTools","ACE_morphine","ACE_packingBandage","ACE_wirecutter","ACE_tourniquet","ACE_fieldDressing","ACE_quikclot","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_17Rnd_9x19_FMJ","rhsusf_acc_harris_bipod","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan","ACE_SpraypaintRed","rhs_weap_m16a4","rhs_weap_m16a4_carryhandle","rhs_weap_m4","rhs_weap_m4_carryhandle","rhs_weap_m4a1_carryhandle","rhs_weap_hk416d10_LMT","rhs_weap_hk416d10","rhsusf_acc_mrds","rhsusf_acc_mrds_c","rhsusf_acc_su230a_mrds_c","rhsusf_acc_su230a_mrds","ACE_adenosine","rhs_mag_m67","rhs_uniform_cu_ocp","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_ocp","rhsusf_ach_bare_tan","rhsusf_patrolcap_ocp","rhsusf_acc_M952V","rhsusf_acc_anpeq15_bk","rhsusf_acc_anpeq15","rhsusf_acc_nt4_black","rhsusf_acc_nt4_tan","rhsusf_acc_rotex5_grey","rhsusf_acc_rotex5_tan","rhsusf_acc_rotex_mp7","rhsusf_acc_rotex_mp7_desert","ACE_muzzle_mzls_L","rhsusf_acc_grip3_tan","rhsusf_acc_grip3","rhsusf_acc_tdstubby_tan","rhsusf_acc_tdstubby_blk","rhsusf_acc_rvg_blk","rhsusf_acc_rvg_de","rhsusf_acc_grip4","rhsusf_acc_compm4","rhsusf_acc_g33_T1","rhsusf_acc_su230a","rhsusf_acc_su230a_c","rhsusf_weap_m9","rhsusf_weap_m1911a1","rhsusf_acc_T1_high","rhsusf_acc_T1_low","rhsusf_acc_T1_low_fwd","G_Squares","rhs_uniform_abu","rhsusf_acc_SF3P556","rhsusf_acc_SFMB556","rhs_mag_M397_HET","rhs_mag_M433_HEDP","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_M585_white","rhs_mag_m661_green","rhsusf_100Rnd_556x45_mixed_soft_pouch","rhsusf_100Rnd_556x45_soft_pouch","rhsusf_acc_tacsac_blk","rhsusf_acc_tacsac_blue","rhsusf_acc_tacsac_tan","rhsusf_acc_omega9k","rhsusf_mag_7x45acp_MHP","rhs_weap_m4a1","G_Spectacles","rhsusf_100Rnd_762x51","rhsusf_100Rnd_762x51_m62_tracer","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","ACE_surgicalKit","ACE_EntrenchingTool","rhs_mag_an_m14_th3","ACE_M84","G_Shades_Green","G_Shades_Red","G_Shades_Blue","G_Shades_Black","rhsusf_acc_saw_bipod","rhsusf_acc_grip4_bipod","rhsusf_acc_saw_lw_bipod","rhs_weap_m4a1_blockII","rhsusf_acc_ACOG3","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhs_fgm148_magazine_AT","rhs_fim92_mag","rhsusf_assault_eagleaiii_ocp","ACE_Tripod","rhs_uniform_acu_ucp","ACE_VMH3","DemoCharge_Remote_Mag","rhsusf_ANPVS_15","rhs_weap_fim92","rhs_weap_M136","rhs_weap_M136_hedp","rhs_weap_M136_hp","rhs_weap_maaws","launch_MRAWS_green_rail_F","launch_MRAWS_olive_rail_F","launch_MRAWS_sand_rail_F","launch_MRAWS_green_F","launch_MRAWS_olive_F","launch_MRAWS_sand_F","MRAWS_HE_F","MRAWS_HEAT55_F","MRAWS_HEAT_F","ItemGPS","ACE_splint","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4_mstock","rhs_weap_m4a1_carryhandle_mstock","rhs_weap_m4a1_blockII_bk","rhs_weap_m4a1_blockII_KAC_bk","rhs_weap_m4a1_blockII_KAC_d","rhs_weap_m4a1_blockII_KAC","rhs_weap_m4a1_mstock","rhs_weap_m4a1_wd","rhs_weap_m4a1_wd_mstock","rhs_weap_m16a4_imod","rhs_weap_rsp30_white","rhs_weap_rsp30_green","rhs_weap_rsp30_red","ACE_Can_RedGull","ACE_personalAidKit","ACE_SpraypaintGreen","ACE_SpraypaintBlue","ACE_SpraypaintBlack","B_AssaultPack_mcamo","TFAR_anprc152"]
;

// ARSENAL ASSIGNMENT - TEMPORARY
if (_fullAccess) exitWith {
  [arsenal,
  true
  ] call ace_arsenal_fnc_initBox;
  hint "Staff Arsenal Access";
};

if (_prefix == "Rct") then
{
  [arsenal,
  _presetRecruit
  ] call ace_arsenal_fnc_initBox;
  hint "Recruit Arsenal Access";
} else {
  [arsenal,
  _presetRegular
  ] call ace_arsenal_fnc_initBox;
  hint "Regular Arsenal Access";
};