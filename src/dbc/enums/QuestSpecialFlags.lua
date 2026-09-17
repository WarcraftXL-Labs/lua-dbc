return {
  name = "QuestSpecialFlags",
  kind = "enum",
  values = {
    REPEATABLE = 1,
    CUSTOM_COMPLETE = 2,
    AUTO_ACCEPT = 4,
    DUNGEON_FINDER = 8,
    MONTHLY = 16,
    DUMMY_KILL_CREDIT = 32,
  },
  names = {
    [1] = "REPEATABLE",
    [2] = "CUSTOM_COMPLETE",
    [4] = "AUTO_ACCEPT",
    [8] = "DUNGEON_FINDER",
    [16] = "MONTHLY",
    [32] = "DUMMY_KILL_CREDIT",
  },
}
