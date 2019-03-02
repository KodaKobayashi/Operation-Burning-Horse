// ["O_Soldier_A_F", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "ACE_20Rnd_65_Creedmor_mag";
_unit addWeapon "srifle_DMR_07_hex_F";
_unit addPrimaryWeaponItem "muzzle_snds_65_TI_hex_F";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Nightstalker";
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
_unit addBackpack "B_ViperHarness_hex_F";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","ItemGPS"];

// Uniform items
{_unit addItemToUniform "ACE_epinephrine"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
_unit addItemToVest "ACE_RangeCard";
_unit addItemToVest "ACE_Kestrel4500";
{_unit addItemToVest "HandGrenade"} count [1,2];
{_unit addItemToVest "rhs_mag_9x18_8_57N181S"} count [1,2,3];
{_unit addItemToVest "ACE_20Rnd_65_Creedmor_mag"} count [1,2,3,4,5,6,7,8];
// Backpack items
_unit addItemToBackpack "FPA_scissors";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "rhs_mag_m18_red";
_unit addItemToBackpack "rhs_mag_m18_green";
_unit addItemToBackpack "rhs_mag_m18_yellow";
_unit addItemToBackpack "rhs_mag_m18_purple";
{_unit addItemToBackpack "SmokeShell"} count [1,2,3,4,5,6,7,8];
{_unit addItemToBackpack "rhs_mag_m67"} count [1,2,3,4,5,6,7,8];
{_unit addItemToBackpack "rhs_mag_9x18_8_57N181S"} count [1,2,3];
{_unit addItemToBackpack "ACE_20Rnd_65_Creedmor_mag"} count [1,2,3,4,5,6,7,8,9,10];
// Radios
_unit addItemToUniform "ACRE_PRC343";