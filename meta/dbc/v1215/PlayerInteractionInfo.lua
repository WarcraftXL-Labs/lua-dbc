---@meta
-- Generated LuaLS annotations for PlayerInteractionInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PlayerInteractionInfo in build 12.1.5.69594.
---@class dbc.row.v1215.PlayerInteractionInfo : RowProxy
---@field ID integer
---@field Type integer PlayerInteractionManagerConstants.PlayerInteractionType?
---@field Field_11_0_0_54210_002 integer
---@field Field_11_0_0_54210_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PlayerInteractionInfo self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.PlayerInteractionInfo self
function row:SetType(value) end

---Gets the value of field 'Field_11_0_0_54210_002'.
---@return integer value
function row:GetField_11_0_0_54210_002() end

---Sets the value of field 'Field_11_0_0_54210_002'.
---@param value integer
---@return dbc.row.v1215.PlayerInteractionInfo self
function row:SetField_11_0_0_54210_002(value) end

---Gets the value of field 'Field_11_0_0_54210_003'.
---@return integer value
function row:GetField_11_0_0_54210_003() end

---Sets the value of field 'Field_11_0_0_54210_003'.
---@param value integer
---@return dbc.row.v1215.PlayerInteractionInfo self
function row:SetField_11_0_0_54210_003(value) end

---Table container for PlayerInteractionInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.PlayerInteractionInfo : DbcTable
---@field [integer] dbc.row.v1215.PlayerInteractionInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PlayerInteractionInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PlayerInteractionInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PlayerInteractionInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PlayerInteractionInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PlayerInteractionInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
