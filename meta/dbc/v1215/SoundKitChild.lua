---@meta
-- Generated LuaLS annotations for SoundKitChild (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundKitChild in build 12.1.5.69594.
---@class dbc.row.v1215.SoundKitChild : RowProxy
---@field ID integer
---@field SoundKitID integer
---@field ParentSoundKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundKitChild self
function row:SetID(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoundKitChild self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'ParentSoundKitID'.
---@return integer value
function row:GetParentSoundKitID() end

---Sets the value of field 'ParentSoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoundKitChild self
function row:SetParentSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'ParentSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetParentSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'ParentSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for SoundKitChild (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundKitChild : DbcTable
---@field [integer] dbc.row.v1215.SoundKitChild
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundKitChild
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitChild|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundKitChild
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundKitChild>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundKitChild[]
function tbl:GetByRelation(foreign_id) end

return {}
