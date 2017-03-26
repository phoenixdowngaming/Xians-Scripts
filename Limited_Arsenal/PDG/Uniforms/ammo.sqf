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
_unit addVest "rhsusf_iotv_ocp_Grenadier";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
_unit addItemToVest "rhs_mag_m67";
for "_i" from 1 to 9 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 7 do {_unit addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addHeadgear "rhsusf_ach_bare_headset_ess";


_unit addWeapon "rhs_weap_m4_carryhandle_pmag";
_unit addPrimaryWeaponItem "FHQ_acc_ANPEQ15_black";
_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
_unit addWeapon "Rangefinder";

_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_2";
