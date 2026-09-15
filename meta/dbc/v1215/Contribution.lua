---@meta
-- Generated LuaLS annotations for Contribution (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Contribution in build 12.1.5.69594.
---@class dbc.row.v1215.Contribution : RowProxy
---@field ID integer
---@field Description_lang string
---@field Name_lang string
---@field ManagedWorldStateInputID integer
---@field OrderIndex integer
---@field ContributionStyleContainer integer
---@field UiTextureAtlasMemberID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Contribution self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Contribution self
function row:SetDescription_lang(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Contribution self
function row:SetName_lang(value) end

---Gets the value of field 'ManagedWorldStateInputID'.
---@return integer value
function row:GetManagedWorldStateInputID() end

---Sets the value of field 'ManagedWorldStateInputID'.
---@param value integer
---@return dbc.row.v1215.Contribution self
function row:SetManagedWorldStateInputID(value) end

---Navigates foreign relationship to 'ManagedWorldStateInput' via 'ManagedWorldStateInputID'.
---@return dbc.row.v1215.ManagedWorldStateInput|nil
function row:GetManagedWorldStateInput() end

---Creates a related 'ManagedWorldStateInput' row and automatically links 'ManagedWorldStateInputID'.
---@param data? table
---@return dbc.row.v1215.ManagedWorldStateInput
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.Contribution self
function row:SetOrderIndex(value) end

---Gets the value of field 'ContributionStyleContainer'.
---@return integer value
function row:GetContributionStyleContainer() end

---Sets the value of field 'ContributionStyleContainer'.
---@param value integer
---@return dbc.row.v1215.Contribution self
function row:SetContributionStyleContainer(value) end

---Navigates foreign relationship to 'ContributionStyleContainer' via 'ContributionStyleContainer'.
---@return dbc.row.v1215.ContributionStyleContainer|nil
function row:GetContributionStyleContainer() end

---Creates a related 'ContributionStyleContainer' row and automatically links 'ContributionStyleContainer'.
---@param data? table
---@return dbc.row.v1215.ContributionStyleContainer
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer[] value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer[]
---@return dbc.row.v1215.Contribution self
function row:SetUiTextureAtlasMemberID(value) end

---Gets element at 1-based index in 'UiTextureAtlasMemberID'.
---@param index integer
---@return integer value
function row:GetUiTextureAtlasMemberIDItem(index) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Table container for Contribution (Build 12.1.5.69594).
---@class dbc.Table.v1215.Contribution : DbcTable
---@field [integer] dbc.row.v1215.Contribution
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Contribution
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Contribution|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Contribution
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Contribution>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Contribution[]
function tbl:GetByRelation(foreign_id) end

return {}
