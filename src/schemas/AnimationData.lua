-- Generated from TSWoW's AnimationData.ts. Do not edit.
return {
  name = "AnimationData",
  record_size = 32,
  field_count = 8,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Name", kind = "str", offset = 4, count = 1 },
    { name = "Weaponflags", kind = "flag", offset = 8, count = 1 },
    { name = "Bodyflags", kind = "flag", offset = 12, count = 1 },
    { name = "Flags", kind = "i32", offset = 16, count = 1 },
    { name = "Fallback", kind = "ptr", offset = 20, count = 1 },
    { name = "BehaviorID", kind = "i32", offset = 24, count = 1 },
    { name = "BehaviorTier", kind = "enum", offset = 28, count = 1 },
  },
}
