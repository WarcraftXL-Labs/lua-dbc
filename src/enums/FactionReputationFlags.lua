return {
  name = "FactionReputationFlags",
  kind = "enum",
  values = {
    VISIBLE = 1,
    AT_WAR = 2,
    HIDDEN = 4,
    INVISIBLE_FORCED = 8,
    PEACE_FORCED = 16,
    INACTIVE = 32,
    RIVAL = 64,
    SPECIAL = 128,
  },
  names = {
    [1] = "VISIBLE",
    [2] = "AT_WAR",
    [4] = "HIDDEN",
    [8] = "INVISIBLE_FORCED",
    [16] = "PEACE_FORCED",
    [32] = "INACTIVE",
    [64] = "RIVAL",
    [128] = "SPECIAL",
  },
}
