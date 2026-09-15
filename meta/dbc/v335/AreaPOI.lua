---@meta
-- Generated LuaLS annotations for AreaPOI (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AreaPOI in build 3.3.5.12340.
---@class dbc.row.v335.AreaPOI : RowProxy
---@field ID integer
---@field Importance integer
---@field Icon integer[]
---@field FactionID integer
---@field Pos number[]
---@field ContinentID integer
---@field Flags integer &0x100000: ShouldGlow
---@field AreaID integer
---@field Name_lang string
---@field Description_lang string
---@field WorldStateID integer
---@field WorldMapLink integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetID(value) end

---Gets the value of field 'Importance'.
---@return integer value
function row:GetImportance() end

---Sets the value of field 'Importance'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetImportance(value) end

---Gets the value of field 'Icon'.
---@return integer[] value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer[]
---@return dbc.row.v335.AreaPOI self
function row:SetIcon(value) end

---Gets element at 1-based index in 'Icon'.
---@param index integer
---@return integer value
function row:GetIconItem(index) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'FactionTemplate' via 'FactionID'.
---@return dbc.row.v335.FactionTemplate|nil
function row:GetFaction() end

---Creates a related 'FactionTemplate' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v335.FactionTemplate
function row:CreateRelated(data) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v335.AreaPOI self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetFlags(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.AreaPOI self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.AreaPOI self
function row:SetDescription_lang(value) end

---Gets the value of field 'WorldStateID'.
---@return integer value
function row:GetWorldStateID() end

---Sets the value of field 'WorldStateID'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'WorldStateID'.
---@return dbc.row.v335.WorldState|nil
function row:GetWorldState() end

---Creates a related 'WorldState' row and automatically links 'WorldStateID'.
---@param data? table
---@return dbc.row.v335.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'WorldMapLink'.
---@return integer value
function row:GetWorldMapLink() end

---Sets the value of field 'WorldMapLink'.
---@param value integer
---@return dbc.row.v335.AreaPOI self
function row:SetWorldMapLink(value) end

---Table container for AreaPOI (Build 3.3.5.12340).
---@class dbc.Table.v335.AreaPOI : DbcTable
---@field [integer] dbc.row.v335.AreaPOI
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AreaPOI
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AreaPOI|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AreaPOI
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AreaPOI>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AreaPOI[]
function tbl:GetByRelation(foreign_id) end

return {}
