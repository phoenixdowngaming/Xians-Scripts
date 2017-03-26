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
_unit addVest "rhsusf_iotv_ocp_Rifleman";
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
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};
_unit addItemToVest "rhs_mag_m67";
_unit addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m14_th3";};
_unit addHeadgear "rhsusf_ach_bare_headset_ess";


_unit addWeapon "rhs_weap_m249_pip_S";
_unit addPrimaryWeaponItem "FHQ_acc_ANPEQ15_black";
_unit addPrimaryWeaponItem "rhs_acc_rakursPM";
_unit addWeapon "Rangefinder";


_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc148jem_2";
