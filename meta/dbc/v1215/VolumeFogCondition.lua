---@meta
-- Generated LuaLS annotations for VolumeFogCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VolumeFogCondition in build 12.1.5.69594.
---@class dbc.row.v1215.VolumeFogCondition : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field WhenFalse number
---@field WhenTrue number
---@field VFOG_uID integer uid in a WDT's VFOG chunk

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VolumeFogCondition self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.VolumeFogCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'WhenFalse'.
---@return number value
function row:GetWhenFalse() end

---Sets the value of field 'WhenFalse'.
---@param value number
---@return dbc.row.v1215.VolumeFogCondition self
function row:SetWhenFalse(value) end

---Gets the value of field 'WhenTrue'.
---@return number value
function row:GetWhenTrue() end

---Sets the value of field 'WhenTrue'.
---@param value number
---@return dbc.row.v1215.VolumeFogCondition self
function row:SetWhenTrue(value) end

---Gets the value of field 'VFOG_uID'.
---@return integer value
function row:GetVFOG_uID() end

---Sets the value of field 'VFOG_uID'.
---@param value integer
---@return dbc.row.v1215.VolumeFogCondition self
function row:SetVFOG_uID(value) end

---Navigates foreign relationship to 'VFOG_u' via 'VFOG_uID'.
---@return dbc.row.v1215.VFOG_u|nil
function row:GetVFOG_u() end

---Creates a related 'VFOG_u' row and automatically links 'VFOG_uID'.
---@param data? table
---@return dbc.row.v1215.VFOG_u
function row:CreateRelated(data) end

---Table container for VolumeFogCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.VolumeFogCondition : DbcTable
---@field [integer] dbc.row.v1215.VolumeFogCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VolumeFogCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VolumeFogCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VolumeFogCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VolumeFogCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VolumeFogCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
