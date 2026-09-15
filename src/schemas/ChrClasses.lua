-- Generated from TSWoW's ChrClasses.ts. Do not edit.
return {
  name = "ChrClasses",
  record_size = 240,
  field_count = 60,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Field01", kind = "i32", offset = 4, count = 1 },
    { name = "DisplayPower", kind = "i32", offset = 8, count = 1 },
    { name = "PetNameToken", kind = "i32", offset = 12, count = 1 },
    { name = "Name", kind = "loc", offset = 16, count = 1 },
    { name = "Name_Female", kind = "loc", offset = 84, count = 1 },
    { name = "Name_Male", kind = "loc", offset = 152, count = 1 },
    { name = "Filename", kind = "str", offset = 220, count = 1 },
    { name = "SpellClassSet", kind = "i32", offset = 224, count = 1 },
    { name = "Flags", kind = "i32", offset = 228, count = 1 },
    { name = "CinematicSequenceID", kind = "i32", offset = 232, count = 1 },
    { name = "Required_Expansion", kind = "i32", offset = 236, count = 1 },
  },
}
