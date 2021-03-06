// ["O_Soldier_A_F", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "30Rnd_580x42_Mag_Tracer_F";
_unit addWeapon "arifle_CTAR_hex_F";
_unit addPrimaryWeaponItem "muzzle_snds_58_hex_F";
_unit addPrimaryWeaponItem "rhs_acc_perst1ik_ris";
_unit addPrimaryWeaponItem "optic_Arco";
// Handgun
_unit addMagazine "6Rnd_45ACP_Cylinder";
_unit addWeapon "hgun_Pistol_heavy_02_F";
_unit addHandgunItem "hlc_acc_DBALPL_FL";
_unit addHandgunItem "optic_Yorris";
// Binoc
_unit addWeapon "Binocular";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetO_ocamo";
_unit forceAddUniform "U_O_CombatUniform_ocamo";
_unit addVest "V_HarnessO_ghex_F";
_unit addBackpack "B_Carryall_ocamo";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
_unit addItemToUniform "rhs_mag_an_m8hc";
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_morphine"} count [1,2,3,4,5];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
_unit addItemToVest "NVGoggles";
_unit addItemToVest "ACE_Flashlight_MX991";
{_unit addItemToVest "HandGrenade"} count [1,2];
{_unit addItemToVest "SmokeShellGreen"} count [1,2];
{_unit addItemToVest "rhs_mag_an_m8hc"} count [1,2,3];
{_unit addItemToVest "6Rnd_45ACP_Cylinder"} count [1,2];
{_unit addItemToVest "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7,8];
// Backpack items
_unit addItemToBackpack "muzzle_snds_H_SW";
{_unit addItemToBackpack "100Rnd_580x42_Mag_Tracer_F"} count [1,2];
{_unit addItemToBackpack "100Rnd_65x39_caseless_mag"} count [1,2,3];
{_unit addItemToBackpack "100Rnd_65x39_caseless_mag_Tracer"} count [1,2,3];
{_unit addItemToBackpack "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5,6,7,8,9,10];
// Radios
_unit addItemToUniform "ACRE_PRC343";