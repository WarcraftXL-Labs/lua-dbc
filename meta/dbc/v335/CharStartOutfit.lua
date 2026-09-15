---@meta
-- Generated LuaLS annotations for CharStartOutfit (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharStartOutfit in build 3.3.5.12340.
---@class dbc.row.v335.CharStartOutfit : RowProxy
---@field ID integer
---@field RaceID integer
---@field ClassID integer
---@field SexID integer
---@field OutfitID integer
---@field ItemID integer[]
---@field DisplayItemID integer[]
---@field InventoryType integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CharStartOutfit self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v335.CharStartOutfit self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.CharStartOutfit self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v335.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v335.CharStartOutfit self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v335.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v335.Sex
function row:CreateRelated(data) end

---Gets the value of field 'OutfitID'.
---@return integer value
function row:GetOutfitID() end

---Sets the value of field 'OutfitID'.
---@param value integer
---@return dbc.row.v335.CharStartOutfit self
function row:SetOutfitID(value) end

---Navigates foreign relationship to 'Outfit' via 'OutfitID'.
---@return dbc.row.v335.Outfit|nil
function row:GetOutfit() end

---Creates a related 'Outfit' row and automatically links 'OutfitID'.
---@param data? table
---@return dbc.row.v335.Outfit
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v335.CharStartOutfit self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v335.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'DisplayItemID'.
---@return integer[] value
function row:GetDisplayItemID() end

---Sets the value of field 'DisplayItemID'.
---@param value integer[]
---@return dbc.row.v335.CharStartOutfit self
function row:SetDisplayItemID(value) end

---Gets element at 1-based index in 'DisplayItemID'.
---@param index integer
---@return integer value
function row:GetDisplayItemIDItem(index) end

---Navigates foreign relationship to 'ItemDisplayInfo' via 'DisplayItemID'.
---@return dbc.row.v335.ItemDisplayInfo|nil
function row:GetDisplayItem() end

---Creates a related 'ItemDisplayInfo' row and automatically links 'DisplayItemID'.
---@param data? table
---@return dbc.row.v335.ItemDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'InventoryType'.
---@return integer[] value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer[]
---@return dbc.row.v335.CharStartOutfit self
function row:SetInventoryType(value) end

---Gets element at 1-based index in 'InventoryType'.
---@param index integer
---@return integer value
function row:GetInventoryTypeItem(index) end

---Table container for CharStartOutfit (Build 3.3.5.12340).
---@class dbc.Table.v335.CharStartOutfit : DbcTable
---@field [integer] dbc.row.v335.CharStartOutfit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharStartOutfit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharStartOutfit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharStartOutfit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharStartOutfit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharStartOutfit[]
function tbl:GetByRelation(foreign_id) end

return {}
