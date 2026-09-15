---@meta
-- Generated LuaLS annotations for UiMapXMapArt (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapXMapArt in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapXMapArt : RowProxy
---@field ID integer
---@field PhaseID integer
---@field UiMapArtID integer
---@field UiMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapXMapArt self
function row:SetID(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.UiMapXMapArt self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'UiMapArtID'.
---@return integer value
function row:GetUiMapArtID() end

---Sets the value of field 'UiMapArtID'.
---@param value integer
---@return dbc.row.v1215.UiMapXMapArt self
function row:SetUiMapArtID(value) end

---Navigates foreign relationship to 'UiMapArt' via 'UiMapArtID'.
---@return dbc.row.v1215.UiMapArt|nil
function row:GetUiMapArt() end

---Creates a related 'UiMapArt' row and automatically links 'UiMapArtID'.
---@param data? table
---@return dbc.row.v1215.UiMapArt
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapXMapArt self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Table container for UiMapXMapArt (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapXMapArt : DbcTable
---@field [integer] dbc.row.v1215.UiMapXMapArt
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapXMapArt
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapXMapArt|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapXMapArt
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapXMapArt>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapXMapArt[]
function tbl:GetByRelation(foreign_id) end

return {}
