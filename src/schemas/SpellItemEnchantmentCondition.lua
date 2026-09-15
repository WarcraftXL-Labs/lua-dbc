-- Generated from TSWoW's SpellItemEnchantmentCondition.ts. Do not edit.
return {
  name = "SpellItemEnchantmentCondition",
  record_size = 64,
  field_count = 31,
  fields = {
    { name = "ID", kind = "key", offset = 0, count = 1 },
    { name = "Lt_OperandType", kind = "byte", offset = 4, count = 5 },
    { name = "Lt_Operand", kind = "i32", offset = 9, count = 5 },
    { name = "Operator", kind = "byte", offset = 29, count = 5 },
    { name = "Rt_OperandType", kind = "byte", offset = 34, count = 5 },
    { name = "Rt_Operand", kind = "i32", offset = 39, count = 5 },
    { name = "Logic", kind = "byte", offset = 59, count = 5 },
  },
}
