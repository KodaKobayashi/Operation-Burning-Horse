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
// Binoc
_unit addWeapon "ACE_VectorDay";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetLeaderO_ocamo";
_unit forceAddUniform "U_O_CombatUniform_ocamo";
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_Bergen_hex_F";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
_unit addItemToUniform "ACE_MapTools";
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "rhsusf_mag_7x45acp_MHP"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
{_unit addItemToVest "SmokeShell"} count [1,2,3];
{_unit addItemToVest "rhs_mag_m67"} count [1,2,3];
{_unit addItemToVest "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7,8];
// Backpack items
{_unit addItemToBackpack "ACE_morphine"} count [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60];
{_unit addItemToBackpack "ACE_bloodIV_250"} count [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60];
{_unit addItemToBackpack "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60];
// Radios
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACRE_PRC148";