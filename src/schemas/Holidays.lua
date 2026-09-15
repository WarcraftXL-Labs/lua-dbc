-- Generated from TSWoW's Holidays.ts. Do not edit.
return {
  name = "Holidays",
  record_size = 220,
  field_count = 55,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Duration", kind = "i32", offset = 4, count = 10 },
    { name = "Date", kind = "i32", offset = 44, count = 26 },
    { name = "Region", kind = "i32", offset = 148, count = 1 },
    { name = "Looping", kind = "i32", offset = 152, count = 1 },
    { name = "CalendarFlags", kind = "i32", offset = 156, count = 10 },
    { name = "HolidayNameID", kind = "i32", offset = 196, count = 1 },
    { name = "HolidayDescriptionID", kind = "i32", offset = 200, count = 1 },
    { name = "TextureFilename", kind = "str", offset = 204, count = 1 },
    { name = "Priority", kind = "i32", offset = 208, count = 1 },
    { name = "CalendarFilterType", kind = "i32", offset = 212, count = 1 },
    { name = "Flags", kind = "i32", offset = 216, count = 1 },
  },
}
