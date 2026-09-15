-- Generated from TSWoW's SoundEntries.ts. Do not edit.
return {
  name = "SoundEntries",
  record_size = 120,
  field_count = 30,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "SoundType", kind = "i32", offset = 4, count = 1 },
    { name = "Name", kind = "str", offset = 8, count = 1 },
    { name = "File", kind = "str", offset = 12, count = 10 },
    { name = "Freq", kind = "i32", offset = 52, count = 10 },
    { name = "DirectoryBase", kind = "str", offset = 92, count = 1 },
    { name = "Volumefloat", kind = "f32", offset = 96, count = 1 },
    { name = "Flags", kind = "i32", offset = 100, count = 1 },
    { name = "MinDistance", kind = "f32", offset = 104, count = 1 },
    { name = "DistanceCutoff", kind = "f32", offset = 108, count = 1 },
    { name = "EAXDef", kind = "i32", offset = 112, count = 1 },
    { name = "SoundEntriesAdvancedID", kind = "i32", offset = 116, count = 1 },
  },
}
