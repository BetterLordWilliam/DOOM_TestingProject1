class WillHealthBonus : Health
{
	Default
	{
		+COUNTITEM
		+INVENTORY.ALWAYSPICKUP
		Inventory.Amount 5;
		Inventory.MaxAmount 200;
		Inventory.PickupMessage "You got will's health bonus";
	}
	States
	{
    Spawn:
      BON1 ABCDCB 6;
      Loop;
	}

	//
	// TryPickup
	//
  override bool TryPickup (in out Actor other)
	{
		PrevHealth = other.player != NULL ? other.player.health : other.health;

		// Dehacked max health is compatibility dependent because Boom interpreted this value wrong.
		let maxamt = MaxAmount;
		if (maxamt < 0)
		{
			maxamt = deh.MaxHealth;
			if (!(Level.compatflags & COMPATF_DEHHEALTH)) maxamt *= 2;
		}

		if (other.GiveBody(Amount, maxamt))
		{
			GoAwayAndDie();
			return true;
		}
		return false;
	}

}

