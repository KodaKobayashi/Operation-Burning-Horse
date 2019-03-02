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
// Secondary weapon
_unit addMagazine "Titan_AT";
_unit addWeapon "launch_O_Titan_short_ghex_F";
_unit addSecondaryWeaponItem "acc_pointer_IR";
// Binoc
_unit addWeapon "Binocular";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetLeaderO_ocamo";
_unit forceAddUniform "U_O_CombatUniform_ocamo";
_unit addVest "V_BandollierB_ghex_F";
_unit addBackpack "B_Carryall_ocamo";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
_unit addItemToUniform "rhs_mag_an_m8hc";
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_morphine"} count [1,2,3,4,5];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
{_unit addItemToVest "HandGrenade"} count [1,2];
{_unit addItemToVest "30Rnd_580x42_Mag_Tracer_F"} count [1,2,3,4,5];
// Backpack items
{_unit addItemToBackpack "Titan_AT"} count [1,2];
// Radios
_unit addItemToUniform "ACRE_PRC343";