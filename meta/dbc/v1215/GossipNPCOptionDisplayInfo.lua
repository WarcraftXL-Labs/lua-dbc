---@meta
-- Generated LuaLS annotations for GossipNPCOptionDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipNPCOptionDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.GossipNPCOptionDisplayInfo : RowProxy
---@field ID integer
---@field GossipNpcOption integer GossipConstants.GossipNpcOption
---@field IconFileDataID integer
---@field Flags integer GossipConstants.GossipNpcOptionDisplayFlags?! but that only has &1, db only has &2.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'GossipNpcOption'.
---@return integer value
function row:GetGossipNpcOption() end

---Sets the value of field 'GossipNpcOption'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo self
function row:SetGossipNpcOption(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo self
function row:SetFlags(value) end

---Table container for GossipNPCOptionDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipNPCOptionDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.GossipNPCOptionDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipNPCOptionDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipNPCOptionDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
