-- Generated from TSWoW's Terraintype.ts. Do not edit.
return {
  name = "Terraintype",
  record_size = 24,
  field_count = 6,
  fields = {
    { name = "TerrainID", kind = "key", offset = 0, count = 1 },
    { name = "TerrainDesc", kind = "str", offset = 4, count = 1 },
    { name = "FootstepSprayRun", kind = "i32", offset = 8, count = 1 },
    { name = "FootstepSprayWalk", kind = "i32", offset = 12, count = 1 },
    { name = "SoundID", kind = "i32", offset = 16, count = 1 },
    { name = "Flags", kind = "i32", offset = 20, count = 1 },
  },
}
