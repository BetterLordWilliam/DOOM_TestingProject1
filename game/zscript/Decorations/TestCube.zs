class TestCube : Actor
{
	Default {
		// Default actor information
		Height 64;
		Radius 64;
		+SOLID
	}
	
	States {
		// State information
		Spawn:
			M000 A 1;		// Use the model dummy sprite defined in textures
			Loop;
	}
}