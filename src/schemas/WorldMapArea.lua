-- Generated from TSWoW's WorldMapArea.ts. Do not edit.
return {
  name = "WorldMapArea",
  record_size = 44,
  field_count = 11,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "AreaID", kind = "i32", offset = 8, count = 1 },
    { name = "AreaName", kind = "str", offset = 12, count = 1 },
    { name = "LocLeft", kind = "f32", offset = 16, count = 1 },
    { name = "LocRight", kind = "f32", offset = 20, count = 1 },
    { name = "LocTop", kind = "f32", offset = 24, count = 1 },
    { name = "LocBottom", kind = "f32", offset = 28, count = 1 },
    { name = "DisplayMapID", kind = "i32", offset = 32, count = 1 },
    { name = "DefaultDungeonFloor", kind = "i32", offset = 36, count = 1 },
    { name = "ParentWorldMapID", kind = "i32", offset = 40, count = 1 },
  },
}
