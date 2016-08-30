/*  
	postInit.sqf
	
	Copyright 2016 Jan Babor

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/

_path = "GG\ExAdClient\VirtualGarage\customize.sqf";
call compile preprocessFileLineNumbers _path;

if(isNil "ExAd_VG_MIN_ALLOWED_VEH")then{ExAd_VG_MIN_ALLOWED_VEH = 5;};
if(isNil "ExAd_VG_ALLOWED_VEH_MULTIPLE_FACTOR")then{ExAd_VG_ALLOWED_VEH_MULTIPLE_FACTOR = 3;};
if(isNil "ExAd_VG_ACCESS_LEVEL")then{ExAd_VG_ACCESS_LEVEL = 1;};
if(isNil "ExAd_VG_CLEAN_ON_STORE")then{ExAd_VG_CLEAN_ON_STORE = true;};
if(isNil "ExAd_VG_SHOW_ADVHINT")then{ExAd_VG_SHOW_ADVHINT = false;};
if(isNil "ExAd_VG_ALLOWED_VEH_TYPE")then{ExAd_VG_ALLOWED_VEH_TYPE = ["Car","Air"];};

["Your garage is full!", "The garage is full"] call ExAd_fnc_localize;
["You can only store pincode protected vehicles in the garage!", "You can only store pincode protected vehicles in the garage!"] call ExAd_fnc_localize;
["The vehicle is not available anymore!", "The vehicle is not available anymore!"] call ExAd_fnc_localize;

["%2 %1Pin code: %3 %1Fuel: %4 %1Damage: %5 %1Texture: %6 %1Items: %7 %1Magazines: %8 %1Weapons: %9", "%2 %1Pin code: %3 %1Fuel: %4 %1Damage: %5 %1Texture: %6 %1Items: %7 %1Magazines: %8 %1Weapons: %9"] call ExAd_fnc_localize;
["Go Back", "Go Back"] call ExAd_fnc_localize;
["Fetch", "Fetch"] call ExAd_fnc_localize;
["Store", "Store"] call ExAd_fnc_localize;
["Stored", "Stored"] call ExAd_fnc_localize;
["Stored Vehicle Details", "Stored Vehicle Details"] call ExAd_fnc_localize;
["In Radius", "In Radius"] call ExAd_fnc_localize;
["Stream friendly UI", "Stream friendly UI"] call ExAd_fnc_localize;