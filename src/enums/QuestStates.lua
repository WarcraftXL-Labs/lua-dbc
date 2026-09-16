return {
  name = "QuestStates",
  kind = "enum",
  values = {
    NOT_TAKEN = 1,
    COMPLETED = 2,
    IN_PROGRESS = 8,
    FAILED = 32,
    REWARDED = 64,
  },
  names = {
    [1] = "NOT_TAKEN",
    [2] = "COMPLETED",
    [8] = "IN_PROGRESS",
    [32] = "FAILED",
    [64] = "REWARDED",
  },
}
