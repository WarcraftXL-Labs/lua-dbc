---@meta
-- Generated LuaLS annotations for SummonProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SummonProperties in build 12.1.5.69594.
---@class dbc.row.v1215.SummonProperties : RowProxy
---@field ID integer
---@field Control integer 2: Pet?; 3: Controllable
---@field Faction integer
---@field Title integer UNITNAME_SUMMON_TITLE%d
---@field Slot integer A summoner (e.g. player) has a list of slots for summons, one per slot. Pet = 0, Totem = 1..4, BattlePetCompanion = 5, Quest = 6.
---@field Flags integer[] &0x00000010: visible to summoner only; &0x00000020: PetCanBeDismissed; &0x00200000: IsBattlePetCompanion; &0x00800000: selection highlight color = dead?; &0x20000000: no title/summoned-by; &0x40000000: related to unit reaction

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SummonProperties self
function row:SetID(value) end

---Gets the value of field 'Control'.
---@return integer value
function row:GetControl() end

---Sets the value of field 'Control'.
---@param value integer
---@return dbc.row.v1215.SummonProperties self
function row:SetControl(value) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.SummonProperties self
function row:SetFaction(value) end

---Navigates foreign relationship to 'FactionTemplate' via 'Faction'.
---@return dbc.row.v1215.FactionTemplate|nil
function row:GetFaction() end

---Creates a related 'FactionTemplate' row and automatically links 'Faction'.
---@param data? table
---@return dbc.row.v1215.FactionTemplate
function row:CreateRelated(data) end

---Gets the value of field 'Title'.
---@return integer value
function row:GetTitle() end

---Sets the value of field 'Title'.
---@param value integer
---@return dbc.row.v1215.SummonProperties self
function row:SetTitle(value) end

---Gets the value of field 'Slot'.
---@return integer value
function row:GetSlot() end

---Sets the value of field 'Slot'.
---@param value integer
---@return dbc.row.v1215.SummonProperties self
function row:SetSlot(value) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.SummonProperties self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for SummonProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.SummonProperties : DbcTable
---@field [integer] dbc.row.v1215.SummonProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SummonProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SummonProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SummonProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SummonProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SummonProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
