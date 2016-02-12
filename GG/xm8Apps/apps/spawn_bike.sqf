if !((vehicle player) isEqualTo player) exitWith {};
if (!("ItemRadio" in (items player) || "ItemRadio" in (assigneditems player))) exitWith { hint "You need a radio to deploy a bike !";};
if (ExileClientPlayerIsInCombat) exitWith { hint "You cannot deploy a bike in combat !";};

_spawnPos = player modelToWorld [0,2,0];
_spawnDir = (getDir player) -90;
do_MakeBike = [player, _spawnPos, _spawnDir];
player unlinkItem "ItemRadio";
publicVariableServer "do_MakeBike";
uiSleep 1;
hint "BIKE DEPLOYED, RADIO REMOVED !";