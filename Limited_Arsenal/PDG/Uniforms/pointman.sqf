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
_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_unit addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m14_th3";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addBackpack "rhs_assault_umbts";
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
_unit addItemToBackpack "ACE_CableTie";
_unit addItemToBackpack "ACE_EarPlugs";
_unit addItemToBackpack "ACE_Flashlight_XL50";
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "RyanZombiesAntiVirusCure_Item";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "RyanZombiesAntiVirusTemporary_Item";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m662_red";};
_unit addItemToBackpack "SmokeShellBlue";
_unit addItemToBackpack "SmokeShellGreen";
_unit addItemToBackpack "SmokeShellOrange";
_unit addItemToBackpack "SmokeShellPurple";
_unit addItemToBackpack "SmokeShellRed";
_unit addHeadgear "rhsusf_ach_bare_headset_ess";

_unit addWeapon "rhs_weap_m4_m203S";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
_unit addWeapon "rhsusf_weap_glock17g4";

_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_2";
