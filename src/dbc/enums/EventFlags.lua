return {
  name = "EventFlags",
  kind = "enum",
  values = {
    NON_REPEATABLE = 1,
    NORMAL_DUNGEON = 2,
    HEROIC_DUNGEON = 4,
    NORMAL_RAID = 8,
    HEROIC_RAID = 16,
    DEBUG_ONLY = 32,
    DONT_RESET = 64,
    WORKS_CHARMED = 128,
  },
  names = {
    [1] = "NON_REPEATABLE",
    [2] = "NORMAL_DUNGEON",
    [4] = "HEROIC_DUNGEON",
    [8] = "NORMAL_RAID",
    [16] = "HEROIC_RAID",
    [32] = "DEBUG_ONLY",
    [64] = "DONT_RESET",
    [128] = "WORKS_CHARMED",
  },
}
