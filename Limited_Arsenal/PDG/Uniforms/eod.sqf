_unit = _this select 1;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


_unit forceAddUniform "Gen3_atacsfg";
_unit addItemToUniform "RyanZombiesAntiVirusCure_Item";
_unit addItemToUniform "RyanZombiesAntiVirusTemporary_Item";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_quikclot";};
_unit addVest "rhsusf_iotv_ocp_Repair";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_tourniquet";};
_unit addItemToVest "ACE_morphine";
_unit addItemToVest "ACE_Flashlight_XL50";
_unit addItemToVest "ACE_IR_Strobe_Item";
_unit addItemToVest "ACE_epinephrine";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 10 do {_unit addItemToVest "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";};
_unit addItemToVest "rhs_mag_an_m8hc";
_unit addItemToVest "ACE_Chemlight_HiYellow";
_unit addBackpack "B_Kitbag_mcamo";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "ToolKit";
_unit addItemToBackpack "ACE_MapTools";
_unit addItemToBackpack "ACE_Flashlight_XL50";
_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_DefusalKit";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_Sandbag_empty";};
_unit addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
_unit addItemToBackpack "APERSMine_Range_Mag";
_unit addHeadgear "rhsusf_ach_bare_headset_ess";

_unit addWeapon "rhs_weap_m4_mstock";
_unit addPrimaryWeaponItem "FHQ_acc_ANPEQ15_black";
_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
_unit addWeapon "Rangefinder";

_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_2";
