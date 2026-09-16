return {
  name = "InterruptFlags",
  kind = "enum",
  values = {
    ON_MOVEMENT = 1,
    ON_PUSHBACK = 2,
    ON_INTERRUPT_CAST = 4,
    ON_INTERRUPT = 8,
    ON_DAMAGE = 16,
  },
  names = {
    [1] = "ON_MOVEMENT",
    [2] = "ON_PUSHBACK",
    [4] = "ON_INTERRUPT_CAST",
    [8] = "ON_INTERRUPT",
    [16] = "ON_DAMAGE",
  },
}
