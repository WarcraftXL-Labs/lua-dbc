---@meta
-- Generated LuaLS annotations for MapDifficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapDifficulty in build 12.1.5.69594.
---@class dbc.row.v1215.MapDifficulty : RowProxy
---@field Message_lang string
---@field ID integer
---@field DifficultyID integer
---@field LockID integer
---@field ResetInterval integer
---@field MaxPlayers integer
---@field ItemContext integer
---@field ItemContextPickerID integer
---@field Flags integer
---@field ContentTuningID integer
---@field WorldStateExpressionID integer
---@field MapID integer

local row = {}

---Gets the value of field 'Message_lang'.
---@return string value
function row:GetMessage_lang() end

---Sets the value of field 'Message_lang'.
---@param value string
---@return dbc.row.v1215.MapDifficulty self
function row:SetMessage_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'LockID'.
---@return integer value
function row:GetLockID() end

---Sets the value of field 'LockID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetLockID(value) end

---Navigates foreign relationship to 'Lock' via 'LockID'.
---@return dbc.row.v1215.Lock|nil
function row:GetLock() end

---Creates a related 'Lock' row and automatically links 'LockID'.
---@param data? table
---@return dbc.row.v1215.Lock
function row:CreateRelated(data) end

---Gets the value of field 'ResetInterval'.
---@return integer value
function row:GetResetInterval() end

---Sets the value of field 'ResetInterval'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetResetInterval(value) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetMaxPlayers(value) end

---Gets the value of field 'ItemContext'.
---@return integer value
function row:GetItemContext() end

---Sets the value of field 'ItemContext'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetItemContext(value) end

---Gets the value of field 'ItemContextPickerID'.
---@return integer value
function row:GetItemContextPickerID() end

---Sets the value of field 'ItemContextPickerID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetItemContextPickerID(value) end

---Navigates foreign relationship to 'ItemContextPicker' via 'ItemContextPickerID'.
---@return dbc.row.v1215.ItemContextPicker|nil
function row:GetItemContextPicker() end

---Creates a related 'ItemContextPicker' row and automatically links 'ItemContextPickerID'.
---@param data? table
---@return dbc.row.v1215.ItemContextPicker
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetFlags(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.MapDifficulty self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for MapDifficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapDifficulty : DbcTable
---@field [integer] dbc.row.v1215.MapDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
