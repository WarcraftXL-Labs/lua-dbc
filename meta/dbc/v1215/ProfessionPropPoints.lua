---@meta
-- Generated LuaLS annotations for ProfessionPropPoints (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionPropPoints in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionPropPoints : RowProxy
---@field ID integer
---@field EpicF number[]
---@field SuperiorF number[]
---@field GoodF number[]
---@field Epic integer[]
---@field Superior integer[]
---@field Good integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetID(value) end

---Gets the value of field 'EpicF'.
---@return number[] value
function row:GetEpicF() end

---Sets the value of field 'EpicF'.
---@param value number[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetEpicF(value) end

---Gets element at 1-based index in 'EpicF'.
---@param index integer
---@return number value
function row:GetEpicFItem(index) end

---Gets the value of field 'SuperiorF'.
---@return number[] value
function row:GetSuperiorF() end

---Sets the value of field 'SuperiorF'.
---@param value number[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetSuperiorF(value) end

---Gets element at 1-based index in 'SuperiorF'.
---@param index integer
---@return number value
function row:GetSuperiorFItem(index) end

---Gets the value of field 'GoodF'.
---@return number[] value
function row:GetGoodF() end

---Sets the value of field 'GoodF'.
---@param value number[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetGoodF(value) end

---Gets element at 1-based index in 'GoodF'.
---@param index integer
---@return number value
function row:GetGoodFItem(index) end

---Gets the value of field 'Epic'.
---@return integer[] value
function row:GetEpic() end

---Sets the value of field 'Epic'.
---@param value integer[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetEpic(value) end

---Gets element at 1-based index in 'Epic'.
---@param index integer
---@return integer value
function row:GetEpicItem(index) end

---Gets the value of field 'Superior'.
---@return integer[] value
function row:GetSuperior() end

---Sets the value of field 'Superior'.
---@param value integer[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetSuperior(value) end

---Gets element at 1-based index in 'Superior'.
---@param index integer
---@return integer value
function row:GetSuperiorItem(index) end

---Gets the value of field 'Good'.
---@return integer[] value
function row:GetGood() end

---Sets the value of field 'Good'.
---@param value integer[]
---@return dbc.row.v1215.ProfessionPropPoints self
function row:SetGood(value) end

---Gets element at 1-based index in 'Good'.
---@param index integer
---@return integer value
function row:GetGoodItem(index) end

---Table container for ProfessionPropPoints (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionPropPoints : DbcTable
---@field [integer] dbc.row.v1215.ProfessionPropPoints
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionPropPoints
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionPropPoints|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionPropPoints
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionPropPoints>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionPropPoints[]
function tbl:GetByRelation(foreign_id) end

return {}
