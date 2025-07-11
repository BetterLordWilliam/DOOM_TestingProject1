class TestCube : Actor
{
	Default {
		// Default actor information
		Height 64;
		Radius 32;
		Mass 100;
		Friction 2;
		+SOLID
	}
	
	States {
		// State information
		Spawn:
			M000 A 1;		// Use the model dummy sprite defined in textures
			Loop;
	}
}