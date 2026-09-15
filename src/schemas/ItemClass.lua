-- Generated from TSWoW's ItemClass.ts. Do not edit.
return {
  name = "ItemClass",
  record_size = 80,
  field_count = 20,
  fields = {
    { name = "ClassID", kind = "key", offset = 0, count = 1 },
    { name = "SubclassMapID", kind = "key", offset = 4, count = 1 },
    { name = "Flags", kind = "i32", offset = 8, count = 1 },
    { name = "ClassName", kind = "loc", offset = 12, count = 1 },
  },
}
