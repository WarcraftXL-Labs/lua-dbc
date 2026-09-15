---@meta
-- Generated LuaLS annotations for Creature (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Creature in build 12.1.5.69594.
---@class dbc.row.v1215.Creature : RowProxy
---@field ID integer
---@field Name_lang string
---@field NameAlt_lang string
---@field Title_lang string
---@field TitleAlt_lang string
---@field Classification integer
---@field CreatureType integer
---@field CreatureFamily integer
---@field StartAnimState integer
---@field DisplayID integer[]
---@field DisplayProbability number[]
---@field AlwaysItem integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Creature self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Creature self
function row:SetName_lang(value) end

---Gets the value of field 'NameAlt_lang'.
---@return string value
function row:GetNameAlt_lang() end

---Sets the value of field 'NameAlt_lang'.
---@param value string
---@return dbc.row.v1215.Creature self
function row:SetNameAlt_lang(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.Creature self
function row:SetTitle_lang(value) end

---Gets the value of field 'TitleAlt_lang'.
---@return string value
function row:GetTitleAlt_lang() end

---Sets the value of field 'TitleAlt_lang'.
---@param value string
---@return dbc.row.v1215.Creature self
function row:SetTitleAlt_lang(value) end

---Gets the value of field 'Classification'.
---@return integer value
function row:GetClassification() end

---Sets the value of field 'Classification'.
---@param value integer
---@return dbc.row.v1215.Creature self
function row:SetClassification(value) end

---Gets the value of field 'CreatureType'.
---@return integer value
function row:GetCreatureType() end

---Sets the value of field 'CreatureType'.
---@param value integer
---@return dbc.row.v1215.Creature self
function row:SetCreatureType(value) end

---Navigates foreign relationship to 'CreatureType' via 'CreatureType'.
---@return dbc.row.v1215.CreatureType|nil
function row:GetCreatureType() end

---Creates a related 'CreatureType' row and automatically links 'CreatureType'.
---@param data? table
---@return dbc.row.v1215.CreatureType
function row:CreateRelated(data) end

---Gets the value of field 'CreatureFamily'.
---@return integer value
function row:GetCreatureFamily() end

---Sets the value of field 'CreatureFamily'.
---@param value integer
---@return dbc.row.v1215.Creature self
function row:SetCreatureFamily(value) end

---Navigates foreign relationship to 'CreatureFamily' via 'CreatureFamily'.
---@return dbc.row.v1215.CreatureFamily|nil
function row:GetCreatureFamily() end

---Creates a related 'CreatureFamily' row and automatically links 'CreatureFamily'.
---@param data? table
---@return dbc.row.v1215.CreatureFamily
function row:CreateRelated(data) end

---Gets the value of field 'StartAnimState'.
---@return integer value
function row:GetStartAnimState() end

---Sets the value of field 'StartAnimState'.
---@param value integer
---@return dbc.row.v1215.Creature self
function row:SetStartAnimState(value) end

---Gets the value of field 'DisplayID'.
---@return integer[] value
function row:GetDisplayID() end

---Sets the value of field 'DisplayID'.
---@param value integer[]
---@return dbc.row.v1215.Creature self
function row:SetDisplayID(value) end

---Gets element at 1-based index in 'DisplayID'.
---@param index integer
---@return integer value
function row:GetDisplayIDItem(index) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'DisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'DisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'DisplayProbability'.
---@return number[] value
function row:GetDisplayProbability() end

---Sets the value of field 'DisplayProbability'.
---@param value number[]
---@return dbc.row.v1215.Creature self
function row:SetDisplayProbability(value) end

---Gets element at 1-based index in 'DisplayProbability'.
---@param index integer
---@return number value
function row:GetDisplayProbabilityItem(index) end

---Gets the value of field 'AlwaysItem'.
---@return integer[] value
function row:GetAlwaysItem() end

---Sets the value of field 'AlwaysItem'.
---@param value integer[]
---@return dbc.row.v1215.Creature self
function row:SetAlwaysItem(value) end

---Gets element at 1-based index in 'AlwaysItem'.
---@param index integer
---@return integer value
function row:GetAlwaysItemItem(index) end

---Table container for Creature (Build 12.1.5.69594).
---@class dbc.Table.v1215.Creature : DbcTable
---@field [integer] dbc.row.v1215.Creature
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Creature
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Creature|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Creature
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Creature>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Creature[]
function tbl:GetByRelation(foreign_id) end

return {}
