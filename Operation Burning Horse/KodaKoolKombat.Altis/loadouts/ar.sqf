// ["O_Soldier_A_F", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "100Rnd_580x42_Mag_Tracer_F";
_unit addWeapon "arifle_CTARS_hex_F";
_unit addPrimaryWeaponItem "muzzle_snds_58_hex_F";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
_unit addPrimaryWeaponItem "optic_Arco";
// Handgun
_unit addMagazine "rhs_mag_9x18_8_57N181S";
_unit addWeapon "rhs_weap_pb_6p9";
_unit addHandgunItem "rhs_acc_6p9_suppressor";
// Binoc
_unit addWeapon "Binocular";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetO_ViperSP_hex_F";
_unit forceAddUniform "U_O_V_Soldier_Viper_hex_F";
_unit addVest "V_HarnessOGL_ghex_F";
_unit addBackpack "B_Carryall_ocamo";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
{_unit addItemToVest "HandGrenade"} count [1,2];
{_unit addItemToVest "rhs_mag_9x18_8_57N181S"} count [1,2,3];
// Backpack items
{_unit addItemToBackpack "SmokeShell"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_m67"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_9x18_8_57N181S"} count [1,2,3];
{_unit addItemToBackpack "100Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7,8,9,10,11,12,13];
// Radios
_unit addItemToUniform "ACRE_PRC343";