-- Generated from TSWoW's Achievement.ts. Do not edit.
return {
  name = "Achievement",
  record_size = 248,
  field_count = 62,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Faction", kind = "enum", offset = 4, count = 1 },
    { name = "Map", kind = "i32", offset = 8, count = 1 },
    { name = "Previous", kind = "i32", offset = 12, count = 1 },
    { name = "Title", kind = "loc", offset = 16, count = 1 },
    { name = "Description", kind = "loc", offset = 84, count = 1 },
    { name = "Category", kind = "ptr", offset = 152, count = 1 },
    { name = "Points", kind = "i32", offset = 156, count = 1 },
    { name = "Ui_Order", kind = "i32", offset = 160, count = 1 },
    { name = "Flags", kind = "flag", offset = 164, count = 1 },
    { name = "IconID", kind = "ptr", offset = 168, count = 1 },
    { name = "Reward", kind = "loc", offset = 172, count = 1 },
    { name = "Minimum_Criteria", kind = "i32", offset = 240, count = 1 },
    { name = "Shares_Criteria", kind = "ptr", offset = 244, count = 1 },
  },
}
