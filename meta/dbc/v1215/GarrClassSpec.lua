---@meta
-- Generated LuaLS annotations for GarrClassSpec (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrClassSpec in build 12.1.5.69594.
---@class dbc.row.v1215.GarrClassSpec : RowProxy
---@field ID integer
---@field ClassSpec_lang string
---@field ClassSpec_Male_lang string
---@field ClassSpec_Female_lang string
---@field UiTextureAtlasMemberID integer
---@field GarrFollItemSetID integer
---@field FollowerClassLimit integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpec self
function row:SetID(value) end

---Gets the value of field 'ClassSpec_lang'.
---@return string value
function row:GetClassSpec_lang() end

---Sets the value of field 'ClassSpec_lang'.
---@param value string
---@return dbc.row.v1215.GarrClassSpec self
function row:SetClassSpec_lang(value) end

---Gets the value of field 'ClassSpec_Male_lang'.
---@return string value
function row:GetClassSpec_Male_lang() end

---Sets the value of field 'ClassSpec_Male_lang'.
---@param value string
---@return dbc.row.v1215.GarrClassSpec self
function row:SetClassSpec_Male_lang(value) end

---Gets the value of field 'ClassSpec_Female_lang'.
---@return string value
function row:GetClassSpec_Female_lang() end

---Sets the value of field 'ClassSpec_Female_lang'.
---@param value string
---@return dbc.row.v1215.GarrClassSpec self
function row:SetClassSpec_Female_lang(value) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpec self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollItemSetID'.
---@return integer value
function row:GetGarrFollItemSetID() end

---Sets the value of field 'GarrFollItemSetID'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpec self
function row:SetGarrFollItemSetID(value) end

---Navigates foreign relationship to 'GarrFollItemSet' via 'GarrFollItemSetID'.
---@return dbc.row.v1215.GarrFollItemSet|nil
function row:GetGarrFollItemSet() end

---Creates a related 'GarrFollItemSet' row and automatically links 'GarrFollItemSetID'.
---@param data? table
---@return dbc.row.v1215.GarrFollItemSet
function row:CreateRelated(data) end

---Gets the value of field 'FollowerClassLimit'.
---@return integer value
function row:GetFollowerClassLimit() end

---Sets the value of field 'FollowerClassLimit'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpec self
function row:SetFollowerClassLimit(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrClassSpec self
function row:SetFlags(value) end

---Table container for GarrClassSpec (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrClassSpec : DbcTable
---@field [integer] dbc.row.v1215.GarrClassSpec
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrClassSpec
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrClassSpec|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrClassSpec
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrClassSpec>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrClassSpec[]
function tbl:GetByRelation(foreign_id) end

return {}
