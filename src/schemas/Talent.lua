-- Generated from TSWoW's Talent.ts. Do not edit.
return {
  name = "Talent",
  record_size = 92,
  field_count = 23,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "TabID", kind = "i32", offset = 4, count = 1 },
    { name = "TierID", kind = "i32", offset = 8, count = 1 },
    { name = "ColumnIndex", kind = "i32", offset = 12, count = 1 },
    { name = "SpellRank", kind = "i32", offset = 16, count = 9 },
    { name = "PrereqTalent", kind = "i32", offset = 52, count = 3 },
    { name = "PrereqRank", kind = "i32", offset = 64, count = 3 },
    { name = "Flags", kind = "i32", offset = 76, count = 1 },
    { name = "RequiredSpellID", kind = "i32", offset = 80, count = 1 },
    { name = "CategoryMask", kind = "i32", offset = 84, count = 2 },
  },
}
