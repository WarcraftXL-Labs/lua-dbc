---@meta
-- Generated LuaLS annotations for ItemDisplayInfoMaterialRes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemDisplayInfoMaterialRes in build 12.1.5.69594.
---@class dbc.row.v1215.ItemDisplayInfoMaterialRes : RowProxy
---@field ID integer
---@field ComponentSection integer
---@field MaterialResourcesID integer
---@field ItemDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes self
function row:SetID(value) end

---Gets the value of field 'ComponentSection'.
---@return integer value
function row:GetComponentSection() end

---Sets the value of field 'ComponentSection'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes self
function row:SetComponentSection(value) end

---Gets the value of field 'MaterialResourcesID'.
---@return integer value
function row:GetMaterialResourcesID() end

---Sets the value of field 'MaterialResourcesID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes self
function row:SetMaterialResourcesID(value) end

---Navigates foreign relationship to 'TextureFileData' via 'MaterialResourcesID'.
---@return dbc.row.v1215.TextureFileData|nil
function row:GetMaterialResources() end

---Creates a related 'TextureFileData' row and automatically links 'MaterialResourcesID'.
---@param data? table
---@return dbc.row.v1215.TextureFileData
function row:CreateRelated(data) end

---Gets the value of field 'ItemDisplayInfoID'.
---@return integer value
function row:GetItemDisplayInfoID() end

---Sets the value of field 'ItemDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes self
function row:SetItemDisplayInfoID(value) end

---Navigates foreign relationship to 'ItemDisplayInfo' via 'ItemDisplayInfoID'.
---@return dbc.row.v1215.ItemDisplayInfo|nil
function row:GetItemDisplayInfo() end

---Creates a related 'ItemDisplayInfo' row and automatically links 'ItemDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.ItemDisplayInfo
function row:CreateRelated(data) end

---Table container for ItemDisplayInfoMaterialRes (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemDisplayInfoMaterialRes : DbcTable
---@field [integer] dbc.row.v1215.ItemDisplayInfoMaterialRes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemDisplayInfoMaterialRes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemDisplayInfoMaterialRes[]
function tbl:GetByRelation(foreign_id) end

return {}
