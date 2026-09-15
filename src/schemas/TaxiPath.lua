-- Generated from TSWoW's TaxiPath.ts. Do not edit.
return {
  name = "TaxiPath",
  record_size = 16,
  field_count = 4,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "FromTaxiNode", kind = "i32", offset = 4, count = 1 },
    { name = "ToTaxiNode", kind = "i32", offset = 8, count = 1 },
    { name = "Cost", kind = "i32", offset = 12, count = 1 },
  },
}
