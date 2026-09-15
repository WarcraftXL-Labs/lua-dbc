---@meta
-- Generated LuaLS annotations for TraitCondAccountElement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitCondAccountElement in build 12.1.5.69594.
---@class dbc.row.v1215.TraitCondAccountElement : RowProxy
---@field Value integer
---@field ID integer
---@field PlayerDataElementAccountID integer
---@field CompareType integer
---@field Field_11_1_0_58221_004 integer
---@field PlayerDataElementCharacterID integer

local row = {}

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetValue(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetID(value) end

---Gets the value of field 'PlayerDataElementAccountID'.
---@return integer value
function row:GetPlayerDataElementAccountID() end

---Sets the value of field 'PlayerDataElementAccountID'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetPlayerDataElementAccountID(value) end

---Navigates foreign relationship to 'PlayerDataElementAccount' via 'PlayerDataElementAccountID'.
---@return dbc.row.v1215.PlayerDataElementAccount|nil
function row:GetPlayerDataElementAccount() end

---Creates a related 'PlayerDataElementAccount' row and automatically links 'PlayerDataElementAccountID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementAccount
function row:CreateRelated(data) end

---Gets the value of field 'CompareType'.
---@return integer value
function row:GetCompareType() end

---Sets the value of field 'CompareType'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetCompareType(value) end

---Gets the value of field 'Field_11_1_0_58221_004'.
---@return integer value
function row:GetField_11_1_0_58221_004() end

---Sets the value of field 'Field_11_1_0_58221_004'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetField_11_1_0_58221_004(value) end

---Gets the value of field 'PlayerDataElementCharacterID'.
---@return integer value
function row:GetPlayerDataElementCharacterID() end

---Sets the value of field 'PlayerDataElementCharacterID'.
---@param value integer
---@return dbc.row.v1215.TraitCondAccountElement self
function row:SetPlayerDataElementCharacterID(value) end

---Navigates foreign relationship to 'PlayerDataElementCharacter' via 'PlayerDataElementCharacterID'.
---@return dbc.row.v1215.PlayerDataElementCharacter|nil
function row:GetPlayerDataElementCharacter() end

---Creates a related 'PlayerDataElementCharacter' row and automatically links 'PlayerDataElementCharacterID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementCharacter
function row:CreateRelated(data) end

---Table container for TraitCondAccountElement (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitCondAccountElement : DbcTable
---@field [integer] dbc.row.v1215.TraitCondAccountElement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitCondAccountElement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitCondAccountElement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitCondAccountElement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitCondAccountElement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitCondAccountElement[]
function tbl:GetByRelation(foreign_id) end

return {}
