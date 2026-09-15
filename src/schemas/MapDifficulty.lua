-- Generated from TSWoW's MapDifficulty.ts. Do not edit.
return {
  name = "MapDifficulty",
  record_size = 92,
  field_count = 23,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "Difficulty", kind = "i32", offset = 8, count = 1 },
    { name = "Message", kind = "loc", offset = 12, count = 1 },
    { name = "RaidDuration", kind = "i32", offset = 80, count = 1 },
    { name = "MaxPlayers", kind = "i32", offset = 84, count = 1 },
    { name = "Difficultystring", kind = "str", offset = 88, count = 1 },
  },
}
