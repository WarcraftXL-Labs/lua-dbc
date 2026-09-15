---@meta
-- Generated LuaLS annotations for ItemBonusSeason (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusSeason in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusSeason : RowProxy
---@field ID integer
---@field SeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeason self
function row:SetID(value) end

---Gets the value of field 'SeasonID'.
---@return integer value
function row:GetSeasonID() end

---Sets the value of field 'SeasonID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeason self
function row:SetSeasonID(value) end

---Navigates foreign relationship to 'DisplaySeason' via 'SeasonID'.
---@return dbc.row.v1215.DisplaySeason|nil
function row:GetSeason() end

---Creates a related 'DisplaySeason' row and automatically links 'SeasonID'.
---@param data? table
---@return dbc.row.v1215.DisplaySeason
function row:CreateRelated(data) end

---Table container for ItemBonusSeason (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusSeason : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusSeason
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusSeason
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeason|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeason
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusSeason>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusSeason[]
function tbl:GetByRelation(foreign_id) end

return {}
