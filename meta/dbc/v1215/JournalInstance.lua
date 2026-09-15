---@meta
-- Generated LuaLS annotations for JournalInstance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalInstance in build 12.1.5.69594.
---@class dbc.row.v1215.JournalInstance : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field MapID integer
---@field BackgroundFileDataID integer
---@field ButtonFileDataID integer
---@field ButtonSmallFileDataID integer
---@field LoreFileDataID integer
---@field Flags integer
---@field AreaID integer
---@field CovenantID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.JournalInstance self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.JournalInstance self
function row:SetDescription_lang(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'BackgroundFileDataID'.
---@return integer value
function row:GetBackgroundFileDataID() end

---Sets the value of field 'BackgroundFileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetBackgroundFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'BackgroundFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBackgroundFileData() end

---Creates a related 'FileData' row and automatically links 'BackgroundFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ButtonFileDataID'.
---@return integer value
function row:GetButtonFileDataID() end

---Sets the value of field 'ButtonFileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetButtonFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ButtonFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetButtonFileData() end

---Creates a related 'FileData' row and automatically links 'ButtonFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ButtonSmallFileDataID'.
---@return integer value
function row:GetButtonSmallFileDataID() end

---Sets the value of field 'ButtonSmallFileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetButtonSmallFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ButtonSmallFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetButtonSmallFileData() end

---Creates a related 'FileData' row and automatically links 'ButtonSmallFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LoreFileDataID'.
---@return integer value
function row:GetLoreFileDataID() end

---Sets the value of field 'LoreFileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetLoreFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LoreFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLoreFileData() end

---Creates a related 'FileData' row and automatically links 'LoreFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetFlags(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.JournalInstance self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Table container for JournalInstance (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalInstance : DbcTable
---@field [integer] dbc.row.v1215.JournalInstance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalInstance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalInstance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalInstance[]
function tbl:GetByRelation(foreign_id) end

return {}
