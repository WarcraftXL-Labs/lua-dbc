---@meta
-- Generated LuaLS annotations for GarrMechanicType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMechanicType in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMechanicType : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field IconFileDataID integer
---@field Category integer GARR_MECHANIC_CATEGORY: 0: Environment; 1: EnemyRace; 2: Encounter

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMechanicType self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrMechanicType self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrMechanicType self
function row:SetDescription_lang(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrMechanicType self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v1215.GarrMechanicType self
function row:SetCategory(value) end

---Table container for GarrMechanicType (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMechanicType : DbcTable
---@field [integer] dbc.row.v1215.GarrMechanicType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMechanicType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMechanicType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMechanicType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMechanicType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMechanicType[]
function tbl:GetByRelation(foreign_id) end

return {}
