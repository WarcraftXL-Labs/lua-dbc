-- Generated from TSWoW's Weather.ts. Do not edit.
return {
  name = "Weather",
  record_size = 32,
  field_count = 8,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "AmbienceID", kind = "i32", offset = 4, count = 1 },
    { name = "EffectType", kind = "i32", offset = 8, count = 1 },
    { name = "TransitionSkyBox", kind = "f32", offset = 12, count = 1 },
    { name = "EffectColor", kind = "f32", offset = 16, count = 3 },
    { name = "EffectTexture", kind = "str", offset = 28, count = 1 },
  },
}
