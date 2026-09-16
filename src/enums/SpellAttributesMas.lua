return {
  name = "SpellAttributesMas",
  kind = "enum",
  values = {
    REQUIRE_EXP_OR_HONOR = 1,
    CAN_PROC_ON_TRIGGERED = 2,
    REQUIRE_MANA_COST = 4,
    REQUIRE_SPELL_MOD = 8,
    REDUCE_PROC60 = 128,
    CANT_PROC_FROM_ITEM_CAST = 256,
  },
  names = {
    [1] = "REQUIRE_EXP_OR_HONOR",
    [2] = "CAN_PROC_ON_TRIGGERED",
    [4] = "REQUIRE_MANA_COST",
    [8] = "REQUIRE_SPELL_MOD",
    [128] = "REDUCE_PROC60",
    [256] = "CANT_PROC_FROM_ITEM_CAST",
  },
}
