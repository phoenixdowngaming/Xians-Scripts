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
_unit addVest "rhsusf_iotv_ocp_Medic";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_bloodIV_250";};
for "_i" from 1 to 12 do {_unit addItemToVest "ACE_quikclot";};
_unit addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_tourniquet";};
_unit addItemToVest "ACE_morphine";
_unit addItemToVest "ACE_Flashlight_XL50";
_unit addItemToVest "ACE_IR_Strobe_Item";
_unit addItemToVest "ACE_epinephrine";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 12 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 12 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
_unit addBackpack "B_Kitbag_cbr";
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_plasmaIV_250";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
_unit addHeadgear "rhsusf_ach_bare_headset_ess";


_unit addWeapon "rhs_weap_m4_mstock";
_unit addPrimaryWeaponItem "FHQ_acc_ANPEQ15_black";
_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
_unit addWeapon "Binocular";


_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_2";
