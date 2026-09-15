---@meta
-- Generated LuaLS annotations for ModelRibbonQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModelRibbonQuality in build 12.1.5.69594.
---@class dbc.row.v1215.ModelRibbonQuality : RowProxy
---@field ID integer
---@field RibbonQualityID integer
---@field FileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModelRibbonQuality self
function row:SetID(value) end

---Gets the value of field 'RibbonQualityID'.
---@return integer value
function row:GetRibbonQualityID() end

---Sets the value of field 'RibbonQualityID'.
---@param value integer
---@return dbc.row.v1215.ModelRibbonQuality self
function row:SetRibbonQualityID(value) end

---Navigates foreign relationship to 'RibbonQuality' via 'RibbonQualityID'.
---@return dbc.row.v1215.RibbonQuality|nil
function row:GetRibbonQuality() end

---Creates a related 'RibbonQuality' row and automatically links 'RibbonQualityID'.
---@param data? table
---@return dbc.row.v1215.RibbonQuality
function row:CreateRelated(data) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.ModelRibbonQuality self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ModelRibbonQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModelRibbonQuality : DbcTable
---@field [integer] dbc.row.v1215.ModelRibbonQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModelRibbonQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModelRibbonQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModelRibbonQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModelRibbonQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModelRibbonQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
