---@meta
-- Generated LuaLS annotations for CraftingQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingQuality in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingQuality : RowProxy
---@field ID integer
---@field QualityTier integer
---@field CraftingQualityAtlasSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingQuality self
function row:SetID(value) end

---Gets the value of field 'QualityTier'.
---@return integer value
function row:GetQualityTier() end

---Sets the value of field 'QualityTier'.
---@param value integer
---@return dbc.row.v1215.CraftingQuality self
function row:SetQualityTier(value) end

---Gets the value of field 'CraftingQualityAtlasSetID'.
---@return integer value
function row:GetCraftingQualityAtlasSetID() end

---Sets the value of field 'CraftingQualityAtlasSetID'.
---@param value integer
---@return dbc.row.v1215.CraftingQuality self
function row:SetCraftingQualityAtlasSetID(value) end

---Navigates foreign relationship to 'CraftingQualityAtlasSet' via 'CraftingQualityAtlasSetID'.
---@return dbc.row.v1215.CraftingQualityAtlasSet|nil
function row:GetCraftingQualityAtlasSet() end

---Creates a related 'CraftingQualityAtlasSet' row and automatically links 'CraftingQualityAtlasSetID'.
---@param data? table
---@return dbc.row.v1215.CraftingQualityAtlasSet
function row:CreateRelated(data) end

---Table container for CraftingQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingQuality : DbcTable
---@field [integer] dbc.row.v1215.CraftingQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
