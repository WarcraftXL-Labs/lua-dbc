return {
  name = "ItemFlagsExtra",
  kind = "enum",
  values = {
    HORDE_ONLY = 1,
    ALLIANCE_ONLY = 2,
    GOLD_WITH_EXTENDED_COST = 4,
    NO_NEED_ROLLS = 256,
    NEED_ROLLS_DISABLED = 512,
    HAS_NORMAL_PRICE = 16384,
  },
  names = {
    [1] = "HORDE_ONLY",
    [2] = "ALLIANCE_ONLY",
    [4] = "GOLD_WITH_EXTENDED_COST",
    [256] = "NO_NEED_ROLLS",
    [512] = "NEED_ROLLS_DISABLED",
    [16384] = "HAS_NORMAL_PRICE",
  },
}
