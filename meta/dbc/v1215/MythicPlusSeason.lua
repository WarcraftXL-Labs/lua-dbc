---@meta
-- Generated LuaLS annotations for MythicPlusSeason (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MythicPlusSeason in build 12.1.5.69594.
---@class dbc.row.v1215.MythicPlusSeason : RowProxy
---@field ID integer
---@field MilestoneSeason integer
---@field StartTimeEvent integer TimeEvent
---@field ExpansionLevel integer
---@field HeroicLFGDungeonMinGear integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeason self
function row:SetID(value) end

---Gets the value of field 'MilestoneSeason'.
---@return integer value
function row:GetMilestoneSeason() end

---Sets the value of field 'MilestoneSeason'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeason self
function row:SetMilestoneSeason(value) end

---Gets the value of field 'StartTimeEvent'.
---@return integer value
function row:GetStartTimeEvent() end

---Sets the value of field 'StartTimeEvent'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeason self
function row:SetStartTimeEvent(value) end

---Gets the value of field 'ExpansionLevel'.
---@return integer value
function row:GetExpansionLevel() end

---Sets the value of field 'ExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeason self
function row:SetExpansionLevel(value) end

---Gets the value of field 'HeroicLFGDungeonMinGear'.
---@return integer value
function row:GetHeroicLFGDungeonMinGear() end

---Sets the value of field 'HeroicLFGDungeonMinGear'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeason self
function row:SetHeroicLFGDungeonMinGear(value) end

---Table container for MythicPlusSeason (Build 12.1.5.69594).
---@class dbc.Table.v1215.MythicPlusSeason : DbcTable
---@field [integer] dbc.row.v1215.MythicPlusSeason
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MythicPlusSeason
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeason|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeason
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MythicPlusSeason>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MythicPlusSeason[]
function tbl:GetByRelation(foreign_id) end

return {}
