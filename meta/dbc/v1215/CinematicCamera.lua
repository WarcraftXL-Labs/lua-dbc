---@meta
-- Generated LuaLS annotations for CinematicCamera (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CinematicCamera in build 12.1.5.69594.
---@class dbc.row.v1215.CinematicCamera : RowProxy
---@field ID integer
---@field Origin number[]
---@field SoundID integer
---@field OriginFacing number
---@field FileDataID integer
---@field ConversationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CinematicCamera self
function row:SetID(value) end

---Gets the value of field 'Origin'.
---@return number[] value
function row:GetOrigin() end

---Sets the value of field 'Origin'.
---@param value number[]
---@return dbc.row.v1215.CinematicCamera self
function row:SetOrigin(value) end

---Gets element at 1-based index in 'Origin'.
---@param index integer
---@return number value
function row:GetOriginItem(index) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.CinematicCamera self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'OriginFacing'.
---@return number value
function row:GetOriginFacing() end

---Sets the value of field 'OriginFacing'.
---@param value number
---@return dbc.row.v1215.CinematicCamera self
function row:SetOriginFacing(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.CinematicCamera self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ConversationID'.
---@return integer value
function row:GetConversationID() end

---Sets the value of field 'ConversationID'.
---@param value integer
---@return dbc.row.v1215.CinematicCamera self
function row:SetConversationID(value) end

---Navigates foreign relationship to 'Conversation' via 'ConversationID'.
---@return dbc.row.v1215.Conversation|nil
function row:GetConversation() end

---Creates a related 'Conversation' row and automatically links 'ConversationID'.
---@param data? table
---@return dbc.row.v1215.Conversation
function row:CreateRelated(data) end

---Table container for CinematicCamera (Build 12.1.5.69594).
---@class dbc.Table.v1215.CinematicCamera : DbcTable
---@field [integer] dbc.row.v1215.CinematicCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CinematicCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CinematicCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CinematicCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CinematicCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CinematicCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
