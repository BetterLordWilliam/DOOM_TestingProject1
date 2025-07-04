class MyStandaloneGamePlayer : PlayerPawn
{
	Default
	{
		Speed 1.5;
		Health 100;
		Radius 16;
		Height 56;
		Mass 100;
		PainChance 255;
		Player.DisplayName "MyStandAloneGamePlayer";
		Player.StartItem "Fists";
		Player.CrouchSprite "PLYC";
		Player.ColorRange 144, 189;
		Player.Colorset 0, "$TXT_COLOR_GREEN", 144, 191, 144;
		Player.Colorset 1, "$TXT_COLOR_RED", 96, 143, 96;
		Player.Colorset 2, "$TXT_COLOR_BLUE", 192, 239, 192;
	}

	States
	{
	Spawn:
		PLAY A -1;
		Loop;
	See:
		PLAY ABCD 4;
		Loop;
	Missile:
		PLAY A 12;
		Goto Spawn;
	Melee:
		PLAY A 6 BRIGHT;
		Goto Missile;
	Pain:
		PLAY A 4;
		PLAY A 4 A_Pain();
		Goto Spawn;
	Death:
		PLAY A 0 A_PlayerSkinCheck("AltSkinDeath");
	Death1:
		PLAY A 10;
		PLAY A 10 A_PlayerScream();
		PLAY A 10 A_NoBlocking();
		PLAY AAA 10;
		PLAY A -1;
		Stop;
	XDeath:
		PLAY A 0 A_PlayerSkinCheck("AltSkinXDeath");
	XDeath1:
		PLAY A 5;
		PLAY A 5 A_XScream();
		PLAY A 5 A_NoBlocking();
		PLAY AAAAA 5;
		PLAY A -1;
		Stop;
	AltSkinDeath:
		PLAY A 6;
		PLAY A 6 A_PlayerScream();
		PLAY AA 6;
		PLAY A 6 A_NoBlocking();
		PLAY AAA 6;
		PLAY A -1;
		Stop;
	AltSkinXDeath:
		PLAY A 5 A_PlayerScream();
		PLAY A 0 A_NoBlocking();
		PLAY A 5 A_SkullPop();
		PLAY AAAAAA 5;
		PLAY A -1;
		Stop;
	}
}
