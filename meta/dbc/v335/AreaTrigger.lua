---@meta
-- Generated LuaLS annotations for AreaTrigger (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AreaTrigger in build 3.3.5.12340.
---@class dbc.row.v335.AreaTrigger : RowProxy
---@field ID integer
---@field ContinentID integer
---@field Pos number[]
---@field Radius number
---@field Box_length number
---@field Box_width number
---@field Box_height number
---@field Box_yaw number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.AreaTrigger self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.AreaTrigger self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v335.AreaTrigger self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v335.AreaTrigger self
function row:SetRadius(value) end

---Gets the value of field 'Box_length'.
---@return number value
function row:GetBox_length() end

---Sets the value of field 'Box_length'.
---@param value number
---@return dbc.row.v335.AreaTrigger self
function row:SetBox_length(value) end

---Gets the value of field 'Box_width'.
---@return number value
function row:GetBox_width() end

---Sets the value of field 'Box_width'.
---@param value number
---@return dbc.row.v335.AreaTrigger self
function row:SetBox_width(value) end

---Gets the value of field 'Box_height'.
---@return number value
function row:GetBox_height() end

---Sets the value of field 'Box_height'.
---@param value number
---@return dbc.row.v335.AreaTrigger self
function row:SetBox_height(value) end

---Gets the value of field 'Box_yaw'.
---@return number value
function row:GetBox_yaw() end

---Sets the value of field 'Box_yaw'.
---@param value number
---@return dbc.row.v335.AreaTrigger self
function row:SetBox_yaw(value) end

---Table container for AreaTrigger (Build 3.3.5.12340).
---@class dbc.Table.v335.AreaTrigger : DbcTable
---@field [integer] dbc.row.v335.AreaTrigger
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AreaTrigger
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AreaTrigger|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AreaTrigger
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AreaTrigger>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AreaTrigger[]
function tbl:GetByRelation(foreign_id) end

return {}
