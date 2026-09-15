---@meta
-- Generated LuaLS annotations for ItemSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSet in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSet : RowProxy
---@field ID integer
---@field Name_lang string
---@field SetFlags integer
---@field RequiredSkill integer
---@field RequiredSkillRank integer
---@field ItemID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSet self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ItemSet self
function row:SetName_lang(value) end

---Gets the value of field 'SetFlags'.
---@return integer value
function row:GetSetFlags() end

---Sets the value of field 'SetFlags'.
---@param value integer
---@return dbc.row.v1215.ItemSet self
function row:SetSetFlags(value) end

---Gets the value of field 'RequiredSkill'.
---@return integer value
function row:GetRequiredSkill() end

---Sets the value of field 'RequiredSkill'.
---@param value integer
---@return dbc.row.v1215.ItemSet self
function row:SetRequiredSkill(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkill'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkill'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v1215.ItemSet self
function row:SetRequiredSkillRank(value) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v1215.ItemSet self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for ItemSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSet : DbcTable
---@field [integer] dbc.row.v1215.ItemSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSet[]
function tbl:GetByRelation(foreign_id) end

return {}
