---@meta
-- Generated LuaLS annotations for ChrRaceRacialAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrRaceRacialAbility in build 12.1.5.69594.
---@class dbc.row.v1215.ChrRaceRacialAbility : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field DescriptionShort_lang string
---@field Icon integer
---@field Order integer
---@field ChrRacesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetDescription_lang(value) end

---Gets the value of field 'DescriptionShort_lang'.
---@return string value
function row:GetDescriptionShort_lang() end

---Sets the value of field 'DescriptionShort_lang'.
---@param value string
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetDescriptionShort_lang(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetOrder(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.ChrRaceRacialAbility self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for ChrRaceRacialAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrRaceRacialAbility : DbcTable
---@field [integer] dbc.row.v1215.ChrRaceRacialAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrRaceRacialAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaceRacialAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrRaceRacialAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrRaceRacialAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrRaceRacialAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
