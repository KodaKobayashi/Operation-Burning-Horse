// ["O_Soldier_A_F", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "30Rnd_580x42_Mag_Tracer_F";
_unit addWeapon "arifle_CTAR_hex_F";
_unit addPrimaryWeaponItem "muzzle_snds_58_hex_F";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "optic_Arco";
// Binoc
_unit addWeapon "Binocular";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_MilCap_ocamo";
_unit forceAddUniform "U_O_SpecopsUniform_ocamo";
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_Bergen_hex_F";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
_unit addItemToVest "30Rnd_580x42_Mag_F";
{_unit addItemToVest "HandGrenade"} count [1,2,3];
{_unit addItemToVest "SmokeShell"} count [1,2,3,4,5,6,7,8];
{_unit addItemToVest "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7];
// Backpack items
{_unit addItemToBackpack "SmokeShell"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_m67"} count [1,2,3];
{_unit addItemToBackpack "ATMine_Range_Mag"} count [1,2,3,4,5];
// Radios
_unit addItemToUniform "ACRE_PRC343";