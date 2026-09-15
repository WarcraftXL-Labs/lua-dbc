---@meta
-- Generated LuaLS annotations for WorldShadow (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldShadow in build 12.1.5.69594.
---@class dbc.row.v1215.WorldShadow : RowProxy
---@field ID integer
---@field Field_10_0_2_46144_000 number[]
---@field TextureID integer
---@field Field_10_0_2_46144_002 integer
---@field Field_10_0_2_46144_003 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldShadow self
function row:SetID(value) end

---Gets the value of field 'Field_10_0_2_46144_000'.
---@return number[] value
function row:GetField_10_0_2_46144_000() end

---Sets the value of field 'Field_10_0_2_46144_000'.
---@param value number[]
---@return dbc.row.v1215.WorldShadow self
function row:SetField_10_0_2_46144_000(value) end

---Gets element at 1-based index in 'Field_10_0_2_46144_000'.
---@param index integer
---@return number value
function row:GetField_10_0_2_46144_000Item(index) end

---Gets the value of field 'TextureID'.
---@return integer value
function row:GetTextureID() end

---Sets the value of field 'TextureID'.
---@param value integer
---@return dbc.row.v1215.WorldShadow self
function row:SetTextureID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTexture() end

---Creates a related 'FileData' row and automatically links 'TextureID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_2_46144_002'.
---@return integer value
function row:GetField_10_0_2_46144_002() end

---Sets the value of field 'Field_10_0_2_46144_002'.
---@param value integer
---@return dbc.row.v1215.WorldShadow self
function row:SetField_10_0_2_46144_002(value) end

---Gets the value of field 'Field_10_0_2_46144_003'.
---@return number value
function row:GetField_10_0_2_46144_003() end

---Sets the value of field 'Field_10_0_2_46144_003'.
---@param value number
---@return dbc.row.v1215.WorldShadow self
function row:SetField_10_0_2_46144_003(value) end

---Table container for WorldShadow (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldShadow : DbcTable
---@field [integer] dbc.row.v1215.WorldShadow
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldShadow
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldShadow|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldShadow
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldShadow>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldShadow[]
function tbl:GetByRelation(foreign_id) end

return {}
