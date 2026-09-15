-- Generated from TSWoW's Achievement_Category.ts. Do not edit.
return {
  name = "Achievement_Category",
  record_size = 80,
  field_count = 20,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Parent", kind = "ptr", offset = 4, count = 1 },
    { name = "Name", kind = "loc", offset = 8, count = 1 },
    { name = "Ui_Order", kind = "i32", offset = 76, count = 1 },
  },
}
