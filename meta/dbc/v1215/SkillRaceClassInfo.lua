---@meta
-- Generated LuaLS annotations for SkillRaceClassInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SkillRaceClassInfo in build 12.1.5.69594.
---@class dbc.row.v1215.SkillRaceClassInfo : RowProxy
---@field ID integer
---@field SkillID integer
---@field ClassMask integer
---@field Flags integer
---@field Availability integer
---@field MinLevel integer
---@field SkillTierID integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetID(value) end

---Gets the value of field 'SkillID'.
---@return integer value
function row:GetSkillID() end

---Sets the value of field 'SkillID'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetSkillID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkill() end

---Creates a related 'SkillLine' row and automatically links 'SkillID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetClassMask(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetFlags(value) end

---Gets the value of field 'Availability'.
---@return integer value
function row:GetAvailability() end

---Sets the value of field 'Availability'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetAvailability(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetMinLevel(value) end

---Gets the value of field 'SkillTierID'.
---@return integer value
function row:GetSkillTierID() end

---Sets the value of field 'SkillTierID'.
---@param value integer
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetSkillTierID(value) end

---Navigates foreign relationship to 'SkillTiers' via 'SkillTierID'.
---@return dbc.row.v1215.SkillTiers|nil
function row:GetSkillTier() end

---Creates a related 'SkillTiers' row and automatically links 'SkillTierID'.
---@param data? table
---@return dbc.row.v1215.SkillTiers
function row:CreateRelated(data) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.SkillRaceClassInfo self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for SkillRaceClassInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.SkillRaceClassInfo : DbcTable
---@field [integer] dbc.row.v1215.SkillRaceClassInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SkillRaceClassInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SkillRaceClassInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SkillRaceClassInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SkillRaceClassInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SkillRaceClassInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
