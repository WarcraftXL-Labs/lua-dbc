---@meta
-- Generated LuaLS annotations for ArtifactItemToTransmog (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactItemToTransmog in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactItemToTransmog : RowProxy
---@field ID integer
---@field ChildItemID integer
---@field ItemID integer
---@field ArtifactID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactItemToTransmog self
function row:SetID(value) end

---Gets the value of field 'ChildItemID'.
---@return integer value
function row:GetChildItemID() end

---Sets the value of field 'ChildItemID'.
---@param value integer
---@return dbc.row.v1215.ArtifactItemToTransmog self
function row:SetChildItemID(value) end

---Navigates foreign relationship to 'Item' via 'ChildItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetChildItem() end

---Creates a related 'Item' row and automatically links 'ChildItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ArtifactItemToTransmog self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ArtifactID'.
---@return integer value
function row:GetArtifactID() end

---Sets the value of field 'ArtifactID'.
---@param value integer
---@return dbc.row.v1215.ArtifactItemToTransmog self
function row:SetArtifactID(value) end

---Navigates foreign relationship to 'Artifact' via 'ArtifactID'.
---@return dbc.row.v1215.Artifact|nil
function row:GetArtifact() end

---Creates a related 'Artifact' row and automatically links 'ArtifactID'.
---@param data? table
---@return dbc.row.v1215.Artifact
function row:CreateRelated(data) end

---Table container for ArtifactItemToTransmog (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactItemToTransmog : DbcTable
---@field [integer] dbc.row.v1215.ArtifactItemToTransmog
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactItemToTransmog
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactItemToTransmog|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactItemToTransmog
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactItemToTransmog>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactItemToTransmog[]
function tbl:GetByRelation(foreign_id) end

return {}
