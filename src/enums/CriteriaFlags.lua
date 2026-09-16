return {
  name = "CriteriaFlags",
  kind = "enum",
  values = {
    PROGRESS_BAR = 1,
    HIDDEN = 2,
    FAIL_ACHIEVEMENT = 4,
    RESET_ON_START = 8,
    IS_DATE = 16,
    IS_MONEY = 32,
    IS_ACHIEVEMENT_ID = 64,
    QUANTITY_IS_CAPPED = 128,
  },
  names = {
    [1] = "PROGRESS_BAR",
    [2] = "HIDDEN",
    [4] = "FAIL_ACHIEVEMENT",
    [8] = "RESET_ON_START",
    [16] = "IS_DATE",
    [32] = "IS_MONEY",
    [64] = "IS_ACHIEVEMENT_ID",
    [128] = "QUANTITY_IS_CAPPED",
  },
}
