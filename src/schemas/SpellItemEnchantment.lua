-- Generated from TSWoW's SpellItemEnchantment.ts. Do not edit.
return {
  name = "SpellItemEnchantment",
  record_size = 152,
  field_count = 38,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Charges", kind = "i32", offset = 4, count = 1 },
    { name = "Effect", kind = "i32", offset = 8, count = 3 },
    { name = "EffectPointsMin", kind = "i32", offset = 20, count = 3 },
    { name = "EffectPointsMax", kind = "i32", offset = 32, count = 3 },
    { name = "EffectArg", kind = "i32", offset = 44, count = 3 },
    { name = "Name", kind = "loc", offset = 56, count = 1 },
    { name = "ItemVisual", kind = "i32", offset = 124, count = 1 },
    { name = "Flags", kind = "i32", offset = 128, count = 1 },
    { name = "Src_ItemID", kind = "i32", offset = 132, count = 1 },
    { name = "Condition_Id", kind = "i32", offset = 136, count = 1 },
    { name = "RequiredSkillID", kind = "i32", offset = 140, count = 1 },
    { name = "RequiredSkillRank", kind = "i32", offset = 144, count = 1 },
    { name = "MinLevel", kind = "i32", offset = 148, count = 1 },
  },
}
