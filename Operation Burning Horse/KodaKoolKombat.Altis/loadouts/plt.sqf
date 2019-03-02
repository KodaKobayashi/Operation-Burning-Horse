// ["O_Soldier_A_F", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "30Rnd_580x42_Mag_Tracer_F";
_unit addMagazine "1Rnd_HE_Grenade_shell";
_unit addWeapon "arifle_CTAR_GL_hex_F";
_unit addPrimaryWeaponItem "muzzle_snds_58_hex_F";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "optic_Arco";
// Handgun
_unit addMagazine "rhsusf_mag_7x45acp_MHP";
_unit addWeapon "rhsusf_weap_m1911a1";
// Binoc
_unit addWeapon "ACE_VectorDay";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_MilCap_ocamo";
_unit forceAddUniform "U_O_OfficerUniform_ocamo";
_unit addBackpack "B_FieldPack_ocamo";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
_unit addItemToUniform "ACE_MapTools";
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "rhsusf_mag_7x45acp_MHP"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Backpack items
{_unit addItemToBackpack "SmokeShell"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_m67"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_M433_HEDP"} count [1,2,3,4,5];
{_unit addItemToBackpack "ACE_HuntIR_M203"} count [1,2,3,4,5,6,7,8,9,10];
{_unit addItemToBackpack "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7,8];
// Radios
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC148";