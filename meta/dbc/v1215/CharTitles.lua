---@meta
-- Generated LuaLS annotations for CharTitles (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharTitles in build 12.1.5.69594.
---@class dbc.row.v1215.CharTitles : RowProxy
---@field ID integer
---@field Name_lang string
---@field Name1_lang string
---@field Mask_ID integer
---@field Flags integer &1: npc-only, &4: suppress earned/lost chat message

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharTitles self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.CharTitles self
function row:SetName_lang(value) end

---Gets the value of field 'Name1_lang'.
---@return string value
function row:GetName1_lang() end

---Sets the value of field 'Name1_lang'.
---@param value string
---@return dbc.row.v1215.CharTitles self
function row:SetName1_lang(value) end

---Gets the value of field 'Mask_ID'.
---@return integer value
function row:GetMask_ID() end

---Sets the value of field 'Mask_ID'.
---@param value integer
---@return dbc.row.v1215.CharTitles self
function row:SetMask_ID(value) end

---Navigates foreign relationship to 'Mask_' via 'Mask_ID'.
---@return dbc.row.v1215.Mask_|nil
function row:GetMask_() end

---Creates a related 'Mask_' row and automatically links 'Mask_ID'.
---@param data? table
---@return dbc.row.v1215.Mask_
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CharTitles self
function row:SetFlags(value) end

---Table container for CharTitles (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharTitles : DbcTable
---@field [integer] dbc.row.v1215.CharTitles
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharTitles
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharTitles|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharTitles
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharTitles>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharTitles[]
function tbl:GetByRelation(foreign_id) end

return {}
