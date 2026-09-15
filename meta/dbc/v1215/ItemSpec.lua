---@meta
-- Generated LuaLS annotations for ItemSpec (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSpec in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSpec : RowProxy
---@field ID integer
---@field MinLevel integer
---@field MaxLevel integer
---@field ItemType integer
---@field PrimaryStat integer
---@field SecondaryStat integer
---@field SpecializationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetID(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetMaxLevel(value) end

---Gets the value of field 'ItemType'.
---@return integer value
function row:GetItemType() end

---Sets the value of field 'ItemType'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetItemType(value) end

---Gets the value of field 'PrimaryStat'.
---@return integer value
function row:GetPrimaryStat() end

---Sets the value of field 'PrimaryStat'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetPrimaryStat(value) end

---Gets the value of field 'SecondaryStat'.
---@return integer value
function row:GetSecondaryStat() end

---Sets the value of field 'SecondaryStat'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetSecondaryStat(value) end

---Gets the value of field 'SpecializationID'.
---@return integer value
function row:GetSpecializationID() end

---Sets the value of field 'SpecializationID'.
---@param value integer
---@return dbc.row.v1215.ItemSpec self
function row:SetSpecializationID(value) end

---Navigates foreign relationship to 'Specialization' via 'SpecializationID'.
---@return dbc.row.v1215.Specialization|nil
function row:GetSpecialization() end

---Creates a related 'Specialization' row and automatically links 'SpecializationID'.
---@param data? table
---@return dbc.row.v1215.Specialization
function row:CreateRelated(data) end

---Table container for ItemSpec (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSpec : DbcTable
---@field [integer] dbc.row.v1215.ItemSpec
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSpec
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSpec|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSpec
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSpec>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSpec[]
function tbl:GetByRelation(foreign_id) end

return {}
