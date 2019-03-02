/* 
* Write your briefing here
* <br /> is line break.
* Note that briefings are added bottom-to-top (appears in reverse order)
*/
#include "config_mission.hpp"

// Add credits first
player createDiaryRecord ["Diary", ["Credits", format ["
<font size=16>%1</font><br/>
<font size=13>by %2</font><br/>
<font size=13>on %3</font><br/>
<br/>
FPARMA Mission Template v5.0.0
", CFG_ON_LOAD_TITLE, CFG_AUTHOR, getText (configFile >> "CfgWorlds" >> worldName >> "description")]]];

// Intel
player createDiaryRecord ["Diary",["Intel","
Intel regarding enemy forces, movement<br/>
"]];

// Execution
player createDiaryRecord ["Diary",["Execution","
1) Find the VIP<br/>
2) Collect the password<br/>
3) Go to the terminals and Protrect them<br/>
4) Extract<br/>
"]];

// Situation, background
player createDiaryRecord ["Diary",["Situation","
A few months ago, OPFOR sucessufully took control of the island of Altis. However, NATO is still operating on this region. <br/> Intel sugestest they plan on making a major move on all of the island. <br/> They already took control of Kavala, The capital, and plan on moving on with their plans soon. <br/> We sent a viper agent to investigate but he got capture before he could gives the password to some important data terminals on the city <br/> its your job to find him, get the password, and extract the data. <br/> There is a resistence cell of CSAT operatives on our old FOB. <br/> They will be the ones providing reinforments for your troops. It might be good to the clear the path for them as soon as you can. <br/> Godspeed.


"]];
