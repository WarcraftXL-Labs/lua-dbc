-- Generated from TSWoW's CharSections.ts. Do not edit.
return {
  name = "CharSections",
  record_size = 40,
  field_count = 10,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "RaceID", kind = "i32", offset = 4, count = 1 },
    { name = "SexID", kind = "i32", offset = 8, count = 1 },
    { name = "BaseSection", kind = "i32", offset = 12, count = 1 },
    { name = "TextureName", kind = "str", offset = 16, count = 3 },
    { name = "Flags", kind = "i32", offset = 28, count = 1 },
    { name = "VariationIndex", kind = "i32", offset = 32, count = 1 },
    { name = "ColorIndex", kind = "i32", offset = 36, count = 1 },
  },
}
