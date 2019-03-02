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
_unit addMagazine "6Rnd_45ACP_Cylinder";
_unit addWeapon "hgun_Pistol_heavy_02_F";
// Binoc
_unit addWeapon "ACE_VectorDay";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetO_ocamo";
_unit forceAddUniform "U_O_SpecopsUniform_ocamo";
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_TacticalPack_ocamo";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
_unit addItemToUniform "ACE_MapTools";
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
_unit addItemToVest "30Rnd_580x42_Mag_F";
{_unit addItemToVest "HandGrenade"} count [1,2,3];
{_unit addItemToVest "6Rnd_45ACP_Cylinder"} count [1,2,3];
{_unit addItemToVest "SmokeShell"} count [1,2,3,4,5,6,7,8];
{_unit addItemToVest "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7];
// Backpack items
{_unit addItemToBackpack "SmokeShell"} count [1,2,3];
{_unit addItemToBackpack "rhs_mag_m67"} count [1,2,3];
{_unit addItemToBackpack "ACE_HuntIR_M203"} count [1,2,3,4,5];
// Radios
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC148";