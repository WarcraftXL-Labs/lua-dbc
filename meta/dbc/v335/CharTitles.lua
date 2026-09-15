---@meta
-- Generated LuaLS annotations for CharTitles (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharTitles in build 3.3.5.12340.
---@class dbc.row.v335.CharTitles : RowProxy
---@field ID integer
---@field Condition_ID integer
---@field Name_lang string
---@field Name1_lang string
---@field Mask_ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CharTitles self
function row:SetID(value) end

---Gets the value of field 'Condition_ID'.
---@return integer value
function row:GetCondition_ID() end

---Sets the value of field 'Condition_ID'.
---@param value integer
---@return dbc.row.v335.CharTitles self
function row:SetCondition_ID(value) end

---Navigates foreign relationship to 'Condition_' via 'Condition_ID'.
---@return dbc.row.v335.Condition_|nil
function row:GetCondition_() end

---Creates a related 'Condition_' row and automatically links 'Condition_ID'.
---@param data? table
---@return dbc.row.v335.Condition_
function row:CreateRelated(data) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.CharTitles self
function row:SetName_lang(value) end

---Gets the value of field 'Name1_lang'.
---@return string value
function row:GetName1_lang() end

---Sets the value of field 'Name1_lang'.
---@param value string
---@return dbc.row.v335.CharTitles self
function row:SetName1_lang(value) end

---Gets the value of field 'Mask_ID'.
---@return integer value
function row:GetMask_ID() end

---Sets the value of field 'Mask_ID'.
---@param value integer
---@return dbc.row.v335.CharTitles self
function row:SetMask_ID(value) end

---Navigates foreign relationship to 'Mask_' via 'Mask_ID'.
---@return dbc.row.v335.Mask_|nil
function row:GetMask_() end

---Creates a related 'Mask_' row and automatically links 'Mask_ID'.
---@param data? table
---@return dbc.row.v335.Mask_
function row:CreateRelated(data) end

---Table container for CharTitles (Build 3.3.5.12340).
---@class dbc.Table.v335.CharTitles : DbcTable
---@field [integer] dbc.row.v335.CharTitles
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharTitles
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharTitles|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharTitles
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharTitles>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharTitles[]
function tbl:GetByRelation(foreign_id) end

return {}
