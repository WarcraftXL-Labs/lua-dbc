-- Generated from TSWoW's Light.ts. Do not edit.
return {
  name = "Light",
  record_size = 60,
  field_count = 15,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "MapID", kind = "i32", offset = 4, count = 1 },
    { name = "X", kind = "f32", offset = 8, count = 1 },
    { name = "Y", kind = "f32", offset = 12, count = 1 },
    { name = "Z", kind = "f32", offset = 16, count = 1 },
    { name = "FalloffStart", kind = "f32", offset = 20, count = 1 },
    { name = "FalloffEnd", kind = "f32", offset = 24, count = 1 },
    { name = "LightParamsID", kind = "i32", offset = 28, count = 8 },
  },
}
