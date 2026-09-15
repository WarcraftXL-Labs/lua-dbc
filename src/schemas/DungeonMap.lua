-- Generated from TSWoW's DungeonMap.ts. Do not edit.
return {
  name = "DungeonMap",
  record_size = 32,
  field_count = 8,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "FloorIndex", kind = "i32", offset = 8, count = 1 },
    { name = "MinX", kind = "f32", offset = 12, count = 1 },
    { name = "MaxX", kind = "f32", offset = 16, count = 1 },
    { name = "MinY", kind = "f32", offset = 20, count = 1 },
    { name = "MaxY", kind = "f32", offset = 24, count = 1 },
    { name = "ParentWorldMapID", kind = "i32", offset = 28, count = 1 },
  },
}
