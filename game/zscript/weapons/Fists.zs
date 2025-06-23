class Fists : Weapon
{
	default
	{
		Inventory.PickupMessage "$TXT_GOT_FISTS";
		Weapon.SelectionOrder 3700;
		Weapon.Kickback 100;
		Obituary "$TXT_FISTS_KILLED";
		Tag "Knight_Fists";
		+WEAPON.WIMPY_WEAPON
		+WEAPON.MELEEWEAPON
		+WEAPON.NOAUTOSWITCHTO
	}

	states
	{
	Spawn:
		FIST Z -1;
		Stop;
	Ready:
		FIST A 1 A_WeaponReady;
		Loop;
	Deselect:
		FIST A 1 A_Lower;
		Loop;
	Select:
		FIST A 1 A_Raise;
		Loop;
	Fire:
		FIST BCD 3 A_Punch;
		FIST EFG 3 A_Punch;
		FIST H 2 A_ReFire;
		Goto Ready;
	}
}
