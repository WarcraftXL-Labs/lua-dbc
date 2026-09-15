-- Generated from TSWoW's SpellRange.ts. Do not edit.
return {
  name = "SpellRange",
  record_size = 160,
  field_count = 40,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "RangeMin", kind = "f32", offset = 4, count = 2 },
    { name = "RangeMax", kind = "f32", offset = 12, count = 2 },
    { name = "Flags", kind = "i32", offset = 20, count = 1 },
    { name = "DisplayName", kind = "loc", offset = 24, count = 1 },
    { name = "DisplayNameShort", kind = "loc", offset = 92, count = 1 },
  },
}
