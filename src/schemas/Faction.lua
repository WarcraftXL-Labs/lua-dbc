-- Generated from TSWoW's Faction.ts. Do not edit.
return {
  name = "Faction",
  record_size = 228,
  field_count = 57,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "ReputationIndex", kind = "i32", offset = 4, count = 1 },
    { name = "ReputationRaceMask", kind = "i32", offset = 8, count = 4 },
    { name = "ReputationClassMask", kind = "i32", offset = 24, count = 4 },
    { name = "ReputationBase", kind = "i32", offset = 40, count = 4 },
    { name = "ReputationFlags", kind = "i32", offset = 56, count = 4 },
    { name = "ParentFactionID", kind = "i32", offset = 72, count = 1 },
    { name = "ParentFactionMod", kind = "f32", offset = 76, count = 2 },
    { name = "ParentFactionCap", kind = "i32", offset = 84, count = 2 },
    { name = "Name", kind = "loc", offset = 92, count = 1 },
    { name = "Description", kind = "loc", offset = 160, count = 1 },
  },
}
