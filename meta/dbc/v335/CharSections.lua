---@meta
-- Generated LuaLS annotations for CharSections (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharSections in build 3.3.5.12340.
---@class dbc.row.v335.CharSections : RowProxy
---@field ID integer
---@field RaceID integer
---@field SexID integer
---@field BaseSection integer
---@field TextureName string[]
---@field Flags integer
---@field VariationIndex integer
---@field ColorIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetID(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v335.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v335.Sex
function row:CreateRelated(data) end

---Gets the value of field 'BaseSection'.
---@return integer value
function row:GetBaseSection() end

---Sets the value of field 'BaseSection'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetBaseSection(value) end

---Gets the value of field 'TextureName'.
---@return string[] value
function row:GetTextureName() end

---Sets the value of field 'TextureName'.
---@param value string[]
---@return dbc.row.v335.CharSections self
function row:SetTextureName(value) end

---Gets element at 1-based index in 'TextureName'.
---@param index integer
---@return string value
function row:GetTextureNameItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetFlags(value) end

---Gets the value of field 'VariationIndex'.
---@return integer value
function row:GetVariationIndex() end

---Sets the value of field 'VariationIndex'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetVariationIndex(value) end

---Gets the value of field 'ColorIndex'.
---@return integer value
function row:GetColorIndex() end

---Sets the value of field 'ColorIndex'.
---@param value integer
---@return dbc.row.v335.CharSections self
function row:SetColorIndex(value) end

---Table container for CharSections (Build 3.3.5.12340).
---@class dbc.Table.v335.CharSections : DbcTable
---@field [integer] dbc.row.v335.CharSections
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharSections
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharSections|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharSections
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharSections>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharSections[]
function tbl:GetByRelation(foreign_id) end

return {}
