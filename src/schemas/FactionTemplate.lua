-- Generated from TSWoW's FactionTemplate.ts. Do not edit.
return {
  name = "FactionTemplate",
  record_size = 56,
  field_count = 14,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Faction", kind = "i32", offset = 4, count = 1 },
    { name = "Flags", kind = "i32", offset = 8, count = 1 },
    { name = "FactionGroup", kind = "i32", offset = 12, count = 1 },
    { name = "FriendGroup", kind = "i32", offset = 16, count = 1 },
    { name = "EnemyGroup", kind = "i32", offset = 20, count = 1 },
    { name = "Enemies", kind = "i32", offset = 24, count = 4 },
    { name = "Friend", kind = "i32", offset = 40, count = 4 },
  },
}
