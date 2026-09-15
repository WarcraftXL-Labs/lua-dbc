-- Generated from TSWoW's ItemSubClass.ts. Do not edit.
return {
  name = "ItemSubClass",
  record_size = 176,
  field_count = 44,
  fields = {
    { name = "ClassID", kind = "key", offset = 0, count = 1 },
    { name = "SubClassID", kind = "key", offset = 4, count = 1 },
    { name = "PrerequisiteProficiency", kind = "i32", offset = 8, count = 1 },
    { name = "PostrequisiteProficiency", kind = "i32", offset = 12, count = 1 },
    { name = "Flags", kind = "i32", offset = 16, count = 1 },
    { name = "DisplayFlags", kind = "i32", offset = 20, count = 1 },
    { name = "WeaponParrySeq", kind = "i32", offset = 24, count = 1 },
    { name = "WeaponReadySeq", kind = "i32", offset = 28, count = 1 },
    { name = "WeaponAttackSeq", kind = "i32", offset = 32, count = 1 },
    { name = "WeaponSwingSize", kind = "i32", offset = 36, count = 1 },
    { name = "DisplayName", kind = "loc", offset = 40, count = 1 },
    { name = "VerboseName", kind = "loc", offset = 108, count = 1 },
  },
}
