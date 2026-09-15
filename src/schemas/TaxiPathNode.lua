-- Generated from TSWoW's TaxiPathNode.ts. Do not edit.
return {
  name = "TaxiPathNode",
  record_size = 44,
  field_count = 11,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "PathID", kind = "i32", offset = 4, count = 1 },
    { name = "NodeIndex", kind = "i32", offset = 8, count = 1 },
    { name = "MapID", kind = "i32", offset = 12, count = 1 },
    { name = "LocX", kind = "f32", offset = 16, count = 1 },
    { name = "LocY", kind = "f32", offset = 20, count = 1 },
    { name = "LocZ", kind = "f32", offset = 24, count = 1 },
    { name = "Flags", kind = "i32", offset = 28, count = 1 },
    { name = "Delay", kind = "i32", offset = 32, count = 1 },
    { name = "ArrivalEventID", kind = "i32", offset = 36, count = 1 },
    { name = "DepartureEventID", kind = "i32", offset = 40, count = 1 },
  },
}
