-- Generated from TSWoW's ScreenEffect.ts. Do not edit.
return {
  name = "ScreenEffect",
  record_size = 40,
  field_count = 10,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Name", kind = "str", offset = 4, count = 1 },
    { name = "Effect", kind = "i32", offset = 8, count = 1 },
    { name = "Param", kind = "i32", offset = 12, count = 4 },
    { name = "LightParamsID", kind = "i32", offset = 28, count = 1 },
    { name = "SoundAmbienceID", kind = "i32", offset = 32, count = 1 },
    { name = "ZoneMusicID", kind = "i32", offset = 36, count = 1 },
  },
}
