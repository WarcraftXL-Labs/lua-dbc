-- Generated from TSWoW's TaxiNodes.ts. Do not edit.
return {
  name = "TaxiNodes",
  record_size = 96,
  field_count = 24,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "X", kind = "f32", offset = 8, count = 1 },
    { name = "Y", kind = "f32", offset = 12, count = 1 },
    { name = "Z", kind = "f32", offset = 16, count = 1 },
    { name = "Name", kind = "loc", offset = 20, count = 1 },
    { name = "MountCreatureID", kind = "i32", offset = 88, count = 2 },
  },
}
