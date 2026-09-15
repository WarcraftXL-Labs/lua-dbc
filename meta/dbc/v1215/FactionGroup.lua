---@meta
-- Generated LuaLS annotations for FactionGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of FactionGroup in build 12.1.5.69594.
---@class dbc.row.v1215.FactionGroup : RowProxy
---@field ID integer
---@field InternalName string
---@field Name_lang string
---@field MaskID integer
---@field HonorCurrencyTextureFileID integer
---@field ConquestCurrencyTextureFileID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.FactionGroup self
function row:SetID(value) end

---Gets the value of field 'InternalName'.
---@return string value
function row:GetInternalName() end

---Sets the value of field 'InternalName'.
---@param value string
---@return dbc.row.v1215.FactionGroup self
function row:SetInternalName(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.FactionGroup self
function row:SetName_lang(value) end

---Gets the value of field 'MaskID'.
---@return integer value
function row:GetMaskID() end

---Sets the value of field 'MaskID'.
---@param value integer
---@return dbc.row.v1215.FactionGroup self
function row:SetMaskID(value) end

---Navigates foreign relationship to 'Mask' via 'MaskID'.
---@return dbc.row.v1215.Mask|nil
function row:GetMask() end

---Creates a related 'Mask' row and automatically links 'MaskID'.
---@param data? table
---@return dbc.row.v1215.Mask
function row:CreateRelated(data) end

---Gets the value of field 'HonorCurrencyTextureFileID'.
---@return integer value
function row:GetHonorCurrencyTextureFileID() end

---Sets the value of field 'HonorCurrencyTextureFileID'.
---@param value integer
---@return dbc.row.v1215.FactionGroup self
function row:SetHonorCurrencyTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'HonorCurrencyTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetHonorCurrencyTextureFile() end

---Creates a related 'FileData' row and automatically links 'HonorCurrencyTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ConquestCurrencyTextureFileID'.
---@return integer value
function row:GetConquestCurrencyTextureFileID() end

---Sets the value of field 'ConquestCurrencyTextureFileID'.
---@param value integer
---@return dbc.row.v1215.FactionGroup self
function row:SetConquestCurrencyTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'ConquestCurrencyTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetConquestCurrencyTextureFile() end

---Creates a related 'FileData' row and automatically links 'ConquestCurrencyTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for FactionGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.FactionGroup : DbcTable
---@field [integer] dbc.row.v1215.FactionGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.FactionGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.FactionGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.FactionGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.FactionGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.FactionGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
