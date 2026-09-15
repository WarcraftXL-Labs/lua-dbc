---@meta
-- Generated LuaLS annotations for ProfessionRating (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionRating in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionRating : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field EnumID integer 0: CraftCrit, 1: CraftReduction, 2: GatherExtra, 3: GatherTimeDecrease, 4: GatherDiscover, 5: CraftTimeDecrease, 6: CraftExtra, 7: GatherTimeIncrease, 8: GatherRange
---@field Field_10_0_0_44649_003 integer also EnumID, might be swapped.
---@field ProfessionRatingType integer 0: Craft, 1: Gather

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ProfessionRating self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ProfessionRating self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionRating self
function row:SetID(value) end

---Gets the value of field 'EnumID'.
---@return integer value
function row:GetEnumID() end

---Sets the value of field 'EnumID'.
---@param value integer
---@return dbc.row.v1215.ProfessionRating self
function row:SetEnumID(value) end

---Navigates foreign relationship to 'Enum' via 'EnumID'.
---@return dbc.row.v1215.Enum|nil
function row:GetEnum() end

---Creates a related 'Enum' row and automatically links 'EnumID'.
---@param data? table
---@return dbc.row.v1215.Enum
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44649_003'.
---@return integer value
function row:GetField_10_0_0_44649_003() end

---Sets the value of field 'Field_10_0_0_44649_003'.
---@param value integer
---@return dbc.row.v1215.ProfessionRating self
function row:SetField_10_0_0_44649_003(value) end

---Gets the value of field 'ProfessionRatingType'.
---@return integer value
function row:GetProfessionRatingType() end

---Sets the value of field 'ProfessionRatingType'.
---@param value integer
---@return dbc.row.v1215.ProfessionRating self
function row:SetProfessionRatingType(value) end

---Table container for ProfessionRating (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionRating : DbcTable
---@field [integer] dbc.row.v1215.ProfessionRating
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionRating
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionRating|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionRating
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionRating>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionRating[]
function tbl:GetByRelation(foreign_id) end

return {}
