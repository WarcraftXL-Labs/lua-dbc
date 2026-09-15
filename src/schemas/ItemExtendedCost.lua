-- Generated from TSWoW's ItemExtendedCost.ts. Do not edit.
return {
  name = "ItemExtendedCost",
  record_size = 64,
  field_count = 16,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "HonorPoints", kind = "i32", offset = 4, count = 1 },
    { name = "ArenaPoints", kind = "i32", offset = 8, count = 1 },
    { name = "ArenaBracket", kind = "i32", offset = 12, count = 1 },
    { name = "ItemID", kind = "i32", offset = 16, count = 5 },
    { name = "ItemCount", kind = "i32", offset = 36, count = 5 },
    { name = "RequiredArenaRating", kind = "i32", offset = 56, count = 1 },
    { name = "ItemPurchaseGroup", kind = "i32", offset = 60, count = 1 },
  },
}
