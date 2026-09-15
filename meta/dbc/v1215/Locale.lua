---@meta
-- Generated LuaLS annotations for Locale (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Locale in build 12.1.5.69594.
---@class dbc.row.v1215.Locale : RowProxy
---@field ID integer
---@field WowLocale integer
---@field FontFileDataID integer
---@field ClientDisplayExpansion integer
---@field Secondary integer
---@field Cfg_regionsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetID(value) end

---Gets the value of field 'WowLocale'.
---@return integer value
function row:GetWowLocale() end

---Sets the value of field 'WowLocale'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetWowLocale(value) end

---Gets the value of field 'FontFileDataID'.
---@return integer value
function row:GetFontFileDataID() end

---Sets the value of field 'FontFileDataID'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetFontFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FontFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFontFileData() end

---Creates a related 'FileData' row and automatically links 'FontFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ClientDisplayExpansion'.
---@return integer value
function row:GetClientDisplayExpansion() end

---Sets the value of field 'ClientDisplayExpansion'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetClientDisplayExpansion(value) end

---Gets the value of field 'Secondary'.
---@return integer value
function row:GetSecondary() end

---Sets the value of field 'Secondary'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetSecondary(value) end

---Gets the value of field 'Cfg_regionsID'.
---@return integer value
function row:GetCfg_regionsID() end

---Sets the value of field 'Cfg_regionsID'.
---@param value integer
---@return dbc.row.v1215.Locale self
function row:SetCfg_regionsID(value) end

---Navigates foreign relationship to 'Cfg_Regions' via 'Cfg_regionsID'.
---@return dbc.row.v1215.Cfg_Regions|nil
function row:GetCfg_regions() end

---Creates a related 'Cfg_Regions' row and automatically links 'Cfg_regionsID'.
---@param data? table
---@return dbc.row.v1215.Cfg_Regions
function row:CreateRelated(data) end

---Table container for Locale (Build 12.1.5.69594).
---@class dbc.Table.v1215.Locale : DbcTable
---@field [integer] dbc.row.v1215.Locale
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Locale
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Locale|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Locale
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Locale>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Locale[]
function tbl:GetByRelation(foreign_id) end

return {}
