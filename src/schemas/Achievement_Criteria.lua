-- Generated from TSWoW's Achievement_Criteria.ts. Do not edit.
return {
  name = "Achievement_Criteria",
  record_size = 124,
  field_count = 31,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Achievement_Id", kind = "ptr", offset = 4, count = 1 },
    { name = "Type", kind = "enum", offset = 8, count = 1 },
    { name = "Asset_Id", kind = "i32", offset = 12, count = 1 },
    { name = "Quantity", kind = "i32", offset = 16, count = 1 },
    { name = "Start_Event", kind = "i32", offset = 20, count = 1 },
    { name = "Start_Asset", kind = "i32", offset = 24, count = 1 },
    { name = "Fail_Event", kind = "i32", offset = 28, count = 1 },
    { name = "Fail_Asset", kind = "i32", offset = 32, count = 1 },
    { name = "Description", kind = "loc", offset = 36, count = 1 },
    { name = "Flags", kind = "flag", offset = 104, count = 1 },
    { name = "Timer_Start_Event", kind = "i32", offset = 108, count = 1 },
    { name = "Timer_Asset_Id", kind = "i32", offset = 112, count = 1 },
    { name = "Timer_Time", kind = "i32", offset = 116, count = 1 },
    { name = "Ui_Order", kind = "i32", offset = 120, count = 1 },
  },
}
