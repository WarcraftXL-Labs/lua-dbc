-- Generated from TSWoW's BannedAddOns.ts. Do not edit.
return {
  name = "BannedAddOns",
  record_size = 44,
  field_count = 11,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "NameMD5_", kind = "u32", offset = 4, count = 4 },
    { name = "VersionMD5_", kind = "u32", offset = 20, count = 4 },
    { name = "LastModified", kind = "i32", offset = 36, count = 1 },
    { name = "Flags", kind = "i32", offset = 40, count = 1 },
  },
}
