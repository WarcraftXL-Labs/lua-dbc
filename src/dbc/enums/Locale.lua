--[[
    Locale.lua
    World of Warcraft client database localized string slots and constants.
    Covers the 16 historical client language slots.
]]

local Locale = {
    name = "Locale",
    kind = "enum",
    values = {
        enUS = 0,
        enGB = 0,
        koKR = 1,
        frFR = 2,
        deDE = 3,
        enCN = 4,
        zhCN = 5,
        zhTW = 6,
        enTW = 7,
        ruRU = 8,
        esES = 9,
        esMX = 10,
        ptPT = 11,
        ptBR = 12,
        itIT = 13,

        -- Uppercase aliases
        ENUS = 0,
        ENGB = 0,
        KOKR = 1,
        FRFR = 2,
        DEDE = 3,
        ENCN = 4,
        ZHCN = 5,
        ZHTW = 6,
        ENTW = 7,
        RURU = 8,
        ESES = 9,
        ESMX = 10,
        PTPT = 11,
        PTBR = 12,
        ITIT = 13,

        ALL = -1,
    },
    names = {
        [0]  = "enUS",
        [1]  = "koKR",
        [2]  = "frFR",
        [3]  = "deDE",
        [4]  = "enCN",
        [5]  = "zhCN",
        [6]  = "zhTW",
        [7]  = "enTW",
        [8]  = "ruRU",
        [9]  = "esES",
        [10] = "esMX",
        [11] = "ptPT",
        [12] = "ptBR",
        [13] = "itIT",
    },
}

-- Allow direct table access on the definition module itself
for k, v in pairs(Locale.values) do
    Locale[k] = v
end
for k, v in pairs(Locale.names) do
    Locale[k] = v
end

return Locale
