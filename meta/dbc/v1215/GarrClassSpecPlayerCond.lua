---@meta
-- Generated LuaLS annotations for GarrClassSpecPlayerCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrClassSpecPlayerCond in build 12.1.5.69594.
---@class dbc.row.v1215.GarrClassSpecPlayerCond : RowProxy
---@field ID integer
---@field Name_lang string
---@field GarrClassSpecID integer
---@field PlayerConditionID integer
---@field IconFileDataID integer
---@field FlavorGarrStringID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetName_lang(value) end

---Gets the value of field 'GarrClassSpecID'.
---@return integer value
function row:GetGarrClassSpecID() end

---Sets the value of field 'GarrClassSpecID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetGarrClassSpecID(value) end

---Navigates foreign relationship to 'GarrClassSpec' via 'GarrClassSpecID'.
---@return dbc.row.v1215.GarrClassSpec|nil
function row:GetGarrClassSpec() end

---Creates a related 'GarrClassSpec' row and automatically links 'GarrClassSpecID'.
---@param data? table
---@return dbc.row.v1215.GarrClassSpec
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'FlavorGarrStringID'.
---@return integer value
function row:GetFlavorGarrStringID() end

---Sets the value of field 'FlavorGarrStringID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetFlavorGarrStringID(value) end

---Navigates foreign relationship to 'GarrString' via 'FlavorGarrStringID'.
---@return dbc.row.v1215.GarrString|nil
function row:GetFlavorGarrString() end

---Creates a related 'GarrString' row and automatically links 'FlavorGarrStringID'.
---@param data? table
---@return dbc.row.v1215.GarrString
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond self
function row:SetOrderIndex(value) end

---Table container for GarrClassSpecPlayerCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrClassSpecPlayerCond : DbcTable
---@field [integer] dbc.row.v1215.GarrClassSpecPlayerCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrClassSpecPlayerCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrClassSpecPlayerCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrClassSpecPlayerCond[]
function tbl:GetByRelation(foreign_id) end

return {}
