---@meta
-- Generated LuaLS annotations for Trophy (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Trophy in build 12.1.5.69594.
---@class dbc.row.v1215.Trophy : RowProxy
---@field ID integer
---@field Name_lang string
---@field TrophyTypeID integer
---@field GameObjectDisplayInfoID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Trophy self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Trophy self
function row:SetName_lang(value) end

---Gets the value of field 'TrophyTypeID'.
---@return integer value
function row:GetTrophyTypeID() end

---Sets the value of field 'TrophyTypeID'.
---@param value integer
---@return dbc.row.v1215.Trophy self
function row:SetTrophyTypeID(value) end

---Navigates foreign relationship to 'TrophyType' via 'TrophyTypeID'.
---@return dbc.row.v1215.TrophyType|nil
function row:GetTrophyType() end

---Creates a related 'TrophyType' row and automatically links 'TrophyTypeID'.
---@param data? table
---@return dbc.row.v1215.TrophyType
function row:CreateRelated(data) end

---Gets the value of field 'GameObjectDisplayInfoID'.
---@return integer value
function row:GetGameObjectDisplayInfoID() end

---Sets the value of field 'GameObjectDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.Trophy self
function row:SetGameObjectDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'GameObjectDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetGameObjectDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'GameObjectDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Trophy self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for Trophy (Build 12.1.5.69594).
---@class dbc.Table.v1215.Trophy : DbcTable
---@field [integer] dbc.row.v1215.Trophy
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Trophy
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Trophy|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Trophy
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Trophy>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Trophy[]
function tbl:GetByRelation(foreign_id) end

return {}
