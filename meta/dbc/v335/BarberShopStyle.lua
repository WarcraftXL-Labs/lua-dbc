---@meta
-- Generated LuaLS annotations for BarberShopStyle (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of BarberShopStyle in build 3.3.5.12340.
---@class dbc.row.v335.BarberShopStyle : RowProxy
---@field ID integer
---@field Type integer 1: hair style, 2: hair color, 3: facial hair, 4: skin, 5: face, 6: custom display 1, 7: custom display 2, 8: custom display 3, 9: custom display 4
---@field DisplayName_lang string
---@field Description_lang string
---@field Cost_Modifier number
---@field Race integer
---@field Sex integer
---@field Data integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetType(value) end

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v335.BarberShopStyle self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.BarberShopStyle self
function row:SetDescription_lang(value) end

---Gets the value of field 'Cost_Modifier'.
---@return number value
function row:GetCost_Modifier() end

---Sets the value of field 'Cost_Modifier'.
---@param value number
---@return dbc.row.v335.BarberShopStyle self
function row:SetCost_Modifier(value) end

---Gets the value of field 'Race'.
---@return integer value
function row:GetRace() end

---Sets the value of field 'Race'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetRace(value) end

---Navigates foreign relationship to 'ChrRaces' via 'Race'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'Race'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetSex(value) end

---Gets the value of field 'Data'.
---@return integer value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value integer
---@return dbc.row.v335.BarberShopStyle self
function row:SetData(value) end

---Table container for BarberShopStyle (Build 3.3.5.12340).
---@class dbc.Table.v335.BarberShopStyle : DbcTable
---@field [integer] dbc.row.v335.BarberShopStyle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.BarberShopStyle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.BarberShopStyle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.BarberShopStyle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.BarberShopStyle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.BarberShopStyle[]
function tbl:GetByRelation(foreign_id) end

return {}
