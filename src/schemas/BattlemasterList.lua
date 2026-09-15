-- Generated from TSWoW's BattlemasterList.ts. Do not edit.
return {
  name = "BattlemasterList",
  record_size = 128,
  field_count = 32,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 8 },
    { name = "InstanceType", kind = "i32", offset = 36, count = 1 },
    { name = "GroupsAllowed", kind = "i32", offset = 40, count = 1 },
    { name = "Name", kind = "loc", offset = 44, count = 1 },
    { name = "MaxGroupSize", kind = "i32", offset = 112, count = 1 },
    { name = "HolidayWorldState", kind = "i32", offset = 116, count = 1 },
    { name = "Minlevel", kind = "i32", offset = 120, count = 1 },
    { name = "Maxlevel", kind = "i32", offset = 124, count = 1 },
  },
}
