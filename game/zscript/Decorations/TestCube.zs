class TestCube : Actor
{
	Default {
		// Default actor information
		Height 40;
		Width 40;
		+SOLID
	}
	
	States {
		// State information
		Spawn:
			Loop;
	}
}