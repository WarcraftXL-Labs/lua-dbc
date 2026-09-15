---@meta
-- Generated LuaLS annotations for MawPowerRarity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MawPowerRarity in build 12.1.5.69594.
---@class dbc.row.v1215.MawPowerRarity : RowProxy
---@field ID integer
---@field Quality integer
---@field Border integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MawPowerRarity self
function row:SetID(value) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.MawPowerRarity self
function row:SetQuality(value) end

---Gets the value of field 'Border'.
---@return integer value
function row:GetBorder() end

---Sets the value of field 'Border'.
---@param value integer
---@return dbc.row.v1215.MawPowerRarity self
function row:SetBorder(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'Border'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetBorder() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'Border'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Table container for MawPowerRarity (Build 12.1.5.69594).
---@class dbc.Table.v1215.MawPowerRarity : DbcTable
---@field [integer] dbc.row.v1215.MawPowerRarity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MawPowerRarity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MawPowerRarity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MawPowerRarity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MawPowerRarity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MawPowerRarity[]
function tbl:GetByRelation(foreign_id) end

return {}
