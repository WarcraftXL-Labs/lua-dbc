-- Generated from TSWoW's AreaPOI.ts. Do not edit.
return {
  name = "AreaPOI",
  record_size = 216,
  field_count = 54,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Importance", kind = "i32", offset = 4, count = 1 },
    { name = "Icon", kind = "i32", offset = 8, count = 9 },
    { name = "FactionID", kind = "i32", offset = 44, count = 1 },
    { name = "X", kind = "f32", offset = 48, count = 1 },
    { name = "Y", kind = "f32", offset = 52, count = 1 },
    { name = "Z", kind = "f32", offset = 56, count = 1 },
    { name = "MapID", kind = "i32", offset = 60, count = 1 },
    { name = "Flags", kind = "flag", offset = 64, count = 1 },
    { name = "AreaID", kind = "ptr", offset = 68, count = 1 },
    { name = "Name", kind = "loc", offset = 72, count = 1 },
    { name = "Description", kind = "loc", offset = 140, count = 1 },
    { name = "WorldStateID", kind = "i32", offset = 208, count = 1 },
    { name = "WorldMapLink", kind = "i32", offset = 212, count = 1 },
  },
}
