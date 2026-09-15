-- Generated from TSWoW's PvpDifficulty.ts. Do not edit.
return {
  name = "PvpDifficulty",
  record_size = 24,
  field_count = 6,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "RangeIndex", kind = "i32", offset = 8, count = 1 },
    { name = "MinLevel", kind = "i32", offset = 12, count = 1 },
    { name = "MaxLevel", kind = "i32", offset = 16, count = 1 },
    { name = "Difficulty", kind = "i32", offset = 20, count = 1 },
  },
}
