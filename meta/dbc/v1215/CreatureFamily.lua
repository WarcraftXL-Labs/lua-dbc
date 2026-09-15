---@meta
-- Generated LuaLS annotations for CreatureFamily (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureFamily in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureFamily : RowProxy
---@field ID integer
---@field Name_lang string
---@field MinScale number
---@field MinScaleLevel integer
---@field MaxScale number
---@field MaxScaleLevel integer
---@field PetFoodMask integer
---@field PetTalentType integer
---@field CategoryEnumID integer
---@field IconFileID integer
---@field SkillLine integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.CreatureFamily self
function row:SetName_lang(value) end

---Gets the value of field 'MinScale'.
---@return number value
function row:GetMinScale() end

---Sets the value of field 'MinScale'.
---@param value number
---@return dbc.row.v1215.CreatureFamily self
function row:SetMinScale(value) end

---Gets the value of field 'MinScaleLevel'.
---@return integer value
function row:GetMinScaleLevel() end

---Sets the value of field 'MinScaleLevel'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetMinScaleLevel(value) end

---Gets the value of field 'MaxScale'.
---@return number value
function row:GetMaxScale() end

---Sets the value of field 'MaxScale'.
---@param value number
---@return dbc.row.v1215.CreatureFamily self
function row:SetMaxScale(value) end

---Gets the value of field 'MaxScaleLevel'.
---@return integer value
function row:GetMaxScaleLevel() end

---Sets the value of field 'MaxScaleLevel'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetMaxScaleLevel(value) end

---Gets the value of field 'PetFoodMask'.
---@return integer value
function row:GetPetFoodMask() end

---Sets the value of field 'PetFoodMask'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetPetFoodMask(value) end

---Gets the value of field 'PetTalentType'.
---@return integer value
function row:GetPetTalentType() end

---Sets the value of field 'PetTalentType'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetPetTalentType(value) end

---Gets the value of field 'CategoryEnumID'.
---@return integer value
function row:GetCategoryEnumID() end

---Sets the value of field 'CategoryEnumID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetCategoryEnumID(value) end

---Navigates foreign relationship to 'CategoryEnum' via 'CategoryEnumID'.
---@return dbc.row.v1215.CategoryEnum|nil
function row:GetCategoryEnum() end

---Creates a related 'CategoryEnum' row and automatically links 'CategoryEnumID'.
---@param data? table
---@return dbc.row.v1215.CategoryEnum
function row:CreateRelated(data) end

---Gets the value of field 'IconFileID'.
---@return integer value
function row:GetIconFileID() end

---Sets the value of field 'IconFileID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamily self
function row:SetIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFile() end

---Creates a related 'FileData' row and automatically links 'IconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SkillLine'.
---@return integer[] value
function row:GetSkillLine() end

---Sets the value of field 'SkillLine'.
---@param value integer[]
---@return dbc.row.v1215.CreatureFamily self
function row:SetSkillLine(value) end

---Gets element at 1-based index in 'SkillLine'.
---@param index integer
---@return integer value
function row:GetSkillLineItem(index) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLine'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLine'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Table container for CreatureFamily (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureFamily : DbcTable
---@field [integer] dbc.row.v1215.CreatureFamily
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureFamily
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureFamily|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureFamily
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureFamily>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureFamily[]
function tbl:GetByRelation(foreign_id) end

return {}
