---@meta
-- Generated LuaLS annotations for GameObjectDiffAnimMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectDiffAnimMap in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectDiffAnimMap : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field Animation integer
---@field AttachmentDisplayID integer
---@field GameObjectDiffAnimID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDiffAnimMap self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDiffAnimMap self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'Animation'.
---@return integer value
function row:GetAnimation() end

---Sets the value of field 'Animation'.
---@param value integer
---@return dbc.row.v1215.GameObjectDiffAnimMap self
function row:SetAnimation(value) end

---Gets the value of field 'AttachmentDisplayID'.
---@return integer value
function row:GetAttachmentDisplayID() end

---Sets the value of field 'AttachmentDisplayID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDiffAnimMap self
function row:SetAttachmentDisplayID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'AttachmentDisplayID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetAttachmentDisplay() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'AttachmentDisplayID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'GameObjectDiffAnimID'.
---@return integer value
function row:GetGameObjectDiffAnimID() end

---Sets the value of field 'GameObjectDiffAnimID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDiffAnimMap self
function row:SetGameObjectDiffAnimID(value) end

---Navigates foreign relationship to 'GameObjectDiffAnim' via 'GameObjectDiffAnimID'.
---@return dbc.row.v1215.GameObjectDiffAnim|nil
function row:GetGameObjectDiffAnim() end

---Creates a related 'GameObjectDiffAnim' row and automatically links 'GameObjectDiffAnimID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDiffAnim
function row:CreateRelated(data) end

---Table container for GameObjectDiffAnimMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectDiffAnimMap : DbcTable
---@field [integer] dbc.row.v1215.GameObjectDiffAnimMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectDiffAnimMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDiffAnimMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDiffAnimMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectDiffAnimMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectDiffAnimMap[]
function tbl:GetByRelation(foreign_id) end

return {}
