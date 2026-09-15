-- Generated from TSWoW's SkillLineAbility.ts. Do not edit.
return {
  name = "SkillLineAbility",
  record_size = 56,
  field_count = 14,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "SkillLine", kind = "u32", offset = 4, count = 1 },
    { name = "Spell", kind = "u32", offset = 8, count = 1 },
    { name = "RaceMask", kind = "mask", offset = 12, count = 1 },
    { name = "ClassMask", kind = "mask", offset = 16, count = 1 },
    { name = "RaceMaskForbidden", kind = "mask", offset = 20, count = 1 },
    { name = "ClassMaskForbidden", kind = "mask", offset = 24, count = 1 },
    { name = "MinSkillLineRank", kind = "u32", offset = 28, count = 1 },
    { name = "SupercededBySpell", kind = "u32", offset = 32, count = 1 },
    { name = "AcquireMethod", kind = "u32", offset = 36, count = 1 },
    { name = "TrivialSkillLineRankHigh", kind = "u32", offset = 40, count = 1 },
    { name = "TrivialSkillLineRankLow", kind = "u32", offset = 44, count = 1 },
    { name = "CharacterPoints", kind = "u32", offset = 48, count = 2 },
  },
}
