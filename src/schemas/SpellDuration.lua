-- Generated from TSWoW's SpellDuration.ts. Do not edit.
return {
  name = "SpellDuration",
  record_size = 16,
  field_count = 4,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Duration", kind = "i32", offset = 4, count = 1 },
    { name = "DurationPerLevel", kind = "i32", offset = 8, count = 1 },
    { name = "MaxDuration", kind = "i32", offset = 12, count = 1 },
  },
}
