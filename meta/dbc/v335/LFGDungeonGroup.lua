---@meta
-- Generated LuaLS annotations for LFGDungeonGroup (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LFGDungeonGroup in build 3.3.5.12340.
---@class dbc.row.v335.LFGDungeonGroup : RowProxy
---@field ID integer
---@field Name_lang string
---@field Order_index integer
---@field Parent_group_ID integer
---@field TypeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonGroup self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.LFGDungeonGroup self
function row:SetName_lang(value) end

---Gets the value of field 'Order_index'.
---@return integer value
function row:GetOrder_index() end

---Sets the value of field 'Order_index'.
---@param value integer
---@return dbc.row.v335.LFGDungeonGroup self
function row:SetOrder_index(value) end

---Gets the value of field 'Parent_group_ID'.
---@return integer value
function row:GetParent_group_ID() end

---Sets the value of field 'Parent_group_ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonGroup self
function row:SetParent_group_ID(value) end

---Navigates foreign relationship to 'Parent_group_' via 'Parent_group_ID'.
---@return dbc.row.v335.Parent_group_|nil
function row:GetParent_group_() end

---Creates a related 'Parent_group_' row and automatically links 'Parent_group_ID'.
---@param data? table
---@return dbc.row.v335.Parent_group_
function row:CreateRelated(data) end

---Gets the value of field 'TypeID'.
---@return integer value
function row:GetTypeID() end

---Sets the value of field 'TypeID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonGroup self
function row:SetTypeID(value) end

---Navigates foreign relationship to 'Type' via 'TypeID'.
---@return dbc.row.v335.Type|nil
function row:GetType() end

---Creates a related 'Type' row and automatically links 'TypeID'.
---@param data? table
---@return dbc.row.v335.Type
function row:CreateRelated(data) end

---Table container for LFGDungeonGroup (Build 3.3.5.12340).
---@class dbc.Table.v335.LFGDungeonGroup : DbcTable
---@field [integer] dbc.row.v335.LFGDungeonGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LFGDungeonGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeonGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeonGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LFGDungeonGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LFGDungeonGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
