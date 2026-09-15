---@meta
-- Generated LuaLS annotations for GossipUIDisplayInfoCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipUIDisplayInfoCondition in build 12.1.5.69594.
---@class dbc.row.v1215.GossipUIDisplayInfoCondition : RowProxy
---@field Field_11_0_0_54935_000_lang string
---@field ID integer
---@field Field_11_0_0_54935_002 integer
---@field GossipXUIDisplayInfoID integer

local row = {}

---Gets the value of field 'Field_11_0_0_54935_000_lang'.
---@return string value
function row:GetField_11_0_0_54935_000_lang() end

---Sets the value of field 'Field_11_0_0_54935_000_lang'.
---@param value string
---@return dbc.row.v1215.GossipUIDisplayInfoCondition self
function row:SetField_11_0_0_54935_000_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition self
function row:SetID(value) end

---Gets the value of field 'Field_11_0_0_54935_002'.
---@return integer value
function row:GetField_11_0_0_54935_002() end

---Sets the value of field 'Field_11_0_0_54935_002'.
---@param value integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition self
function row:SetField_11_0_0_54935_002(value) end

---Gets the value of field 'GossipXUIDisplayInfoID'.
---@return integer value
function row:GetGossipXUIDisplayInfoID() end

---Sets the value of field 'GossipXUIDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition self
function row:SetGossipXUIDisplayInfoID(value) end

---Navigates foreign relationship to 'GossipXUIDisplayInfo' via 'GossipXUIDisplayInfoID'.
---@return dbc.row.v1215.GossipXUIDisplayInfo|nil
function row:GetGossipXUIDisplayInfo() end

---Creates a related 'GossipXUIDisplayInfo' row and automatically links 'GossipXUIDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GossipXUIDisplayInfo
function row:CreateRelated(data) end

---Table container for GossipUIDisplayInfoCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipUIDisplayInfoCondition : DbcTable
---@field [integer] dbc.row.v1215.GossipUIDisplayInfoCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipUIDisplayInfoCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipUIDisplayInfoCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipUIDisplayInfoCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
