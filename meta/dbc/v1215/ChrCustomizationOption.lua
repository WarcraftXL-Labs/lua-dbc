---@meta
-- Generated LuaLS annotations for ChrCustomizationOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationOption in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationOption : RowProxy
---@field Name_lang string
---@field ID integer
---@field SecondaryID integer likely fk somewhere: has less holes than ID
---@field Flags integer 1 = Tattoo/Pattern, 2 = Skin/Hair Color, 3 = Skin/Tattoo Color, possibly flags
---@field ChrModelID integer
---@field OrderIndex integer per ChrModelID
---@field ChrCustomizationCategoryID integer
---@field OptionType integer 0 = Slider, 1 = Checkbox
---@field BarberShopCostModifier number
---@field ChrCustomizationID integer
---@field Requirement integer
---@field SecondaryOrderIndex integer also per ChrModelID, but often Skin Color and Face options swapped
---@field AddedInPatch integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetID(value) end

---Gets the value of field 'SecondaryID'.
---@return integer value
function row:GetSecondaryID() end

---Sets the value of field 'SecondaryID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetSecondaryID(value) end

---Navigates foreign relationship to 'Secondary' via 'SecondaryID'.
---@return dbc.row.v1215.Secondary|nil
function row:GetSecondary() end

---Creates a related 'Secondary' row and automatically links 'SecondaryID'.
---@param data? table
---@return dbc.row.v1215.Secondary
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetFlags(value) end

---Gets the value of field 'ChrModelID'.
---@return integer value
function row:GetChrModelID() end

---Sets the value of field 'ChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'ChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetChrModel() end

---Creates a related 'ChrModel' row and automatically links 'ChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetOrderIndex(value) end

---Gets the value of field 'ChrCustomizationCategoryID'.
---@return integer value
function row:GetChrCustomizationCategoryID() end

---Sets the value of field 'ChrCustomizationCategoryID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetChrCustomizationCategoryID(value) end

---Navigates foreign relationship to 'ChrCustomizationCategory' via 'ChrCustomizationCategoryID'.
---@return dbc.row.v1215.ChrCustomizationCategory|nil
function row:GetChrCustomizationCategory() end

---Creates a related 'ChrCustomizationCategory' row and automatically links 'ChrCustomizationCategoryID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationCategory
function row:CreateRelated(data) end

---Gets the value of field 'OptionType'.
---@return integer value
function row:GetOptionType() end

---Sets the value of field 'OptionType'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetOptionType(value) end

---Gets the value of field 'BarberShopCostModifier'.
---@return number value
function row:GetBarberShopCostModifier() end

---Sets the value of field 'BarberShopCostModifier'.
---@param value number
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetBarberShopCostModifier(value) end

---Gets the value of field 'ChrCustomizationID'.
---@return integer value
function row:GetChrCustomizationID() end

---Sets the value of field 'ChrCustomizationID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetChrCustomizationID(value) end

---Navigates foreign relationship to 'ChrCustomization' via 'ChrCustomizationID'.
---@return dbc.row.v1215.ChrCustomization|nil
function row:GetChrCustomization() end

---Creates a related 'ChrCustomization' row and automatically links 'ChrCustomizationID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomization
function row:CreateRelated(data) end

---Gets the value of field 'Requirement'.
---@return integer value
function row:GetRequirement() end

---Sets the value of field 'Requirement'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetRequirement(value) end

---Navigates foreign relationship to 'ChrCustomizationReq' via 'Requirement'.
---@return dbc.row.v1215.ChrCustomizationReq|nil
function row:GetRequirement() end

---Creates a related 'ChrCustomizationReq' row and automatically links 'Requirement'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationReq
function row:CreateRelated(data) end

---Gets the value of field 'SecondaryOrderIndex'.
---@return integer value
function row:GetSecondaryOrderIndex() end

---Sets the value of field 'SecondaryOrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetSecondaryOrderIndex(value) end

---Gets the value of field 'AddedInPatch'.
---@return integer value
function row:GetAddedInPatch() end

---Sets the value of field 'AddedInPatch'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationOption self
function row:SetAddedInPatch(value) end

---Table container for ChrCustomizationOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationOption : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationOption[]
function tbl:GetByRelation(foreign_id) end

return {}
