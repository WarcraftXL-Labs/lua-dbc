return {
  name = "BossStateMask",
  kind = "enum",
  values = {
    NOT_STARTED = 1,
    IN_PROGRESS = 2,
    FAIL = 4,
    DONE = 8,
    SPECIAL = 16,
    TO_BE_DECIDED = 32,
  },
  names = {
    [1] = "NOT_STARTED",
    [2] = "IN_PROGRESS",
    [4] = "FAIL",
    [8] = "DONE",
    [16] = "SPECIAL",
    [32] = "TO_BE_DECIDED",
  },
}
