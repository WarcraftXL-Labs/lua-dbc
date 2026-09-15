---@meta
-- Generated LuaLS annotations for GameObjectDisplayInfoXSoundKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectDisplayInfoXSoundKit in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectDisplayInfoXSoundKit : RowProxy
---@field ID integer
---@field SoundKitID integer
---@field EventIndex integer
---@field GameObjectDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit self
function row:SetID(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'EventIndex'.
---@return integer value
function row:GetEventIndex() end

---Sets the value of field 'EventIndex'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit self
function row:SetEventIndex(value) end

---Gets the value of field 'GameObjectDisplayInfoID'.
---@return integer value
function row:GetGameObjectDisplayInfoID() end

---Sets the value of field 'GameObjectDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit self
function row:SetGameObjectDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'GameObjectDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetGameObjectDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'GameObjectDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Table container for GameObjectDisplayInfoXSoundKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectDisplayInfoXSoundKit : DbcTable
---@field [integer] dbc.row.v1215.GameObjectDisplayInfoXSoundKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectDisplayInfoXSoundKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectDisplayInfoXSoundKit[]
function tbl:GetByRelation(foreign_id) end

return {}
