-- Generated from TSWoW's SkillRaceClassInfo.ts. Do not edit.
return {
  name = "SkillRaceClassInfo",
  record_size = 32,
  field_count = 8,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "SkillID", kind = "i32", offset = 4, count = 1 },
    { name = "RaceMask", kind = "mask", offset = 8, count = 1 },
    { name = "ClassMask", kind = "mask", offset = 12, count = 1 },
    { name = "Flags", kind = "mask", offset = 16, count = 1 },
    { name = "MinLevel", kind = "i32", offset = 20, count = 1 },
    { name = "SkillTierID", kind = "i32", offset = 24, count = 1 },
    { name = "SkillCostIndex", kind = "i32", offset = 28, count = 1 },
  },
}
