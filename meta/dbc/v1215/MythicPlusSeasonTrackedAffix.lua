---@meta
-- Generated LuaLS annotations for MythicPlusSeasonTrackedAffix (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MythicPlusSeasonTrackedAffix in build 12.1.5.69594.
---@class dbc.row.v1215.MythicPlusSeasonTrackedAffix : RowProxy
---@field ID integer
---@field KeystoneAffixID integer
---@field BonusRating integer
---@field Field_9_1_0_38511_004 integer
---@field DisplaySeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix self
function row:SetID(value) end

---Gets the value of field 'KeystoneAffixID'.
---@return integer value
function row:GetKeystoneAffixID() end

---Sets the value of field 'KeystoneAffixID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix self
function row:SetKeystoneAffixID(value) end

---Navigates foreign relationship to 'KeystoneAffix' via 'KeystoneAffixID'.
---@return dbc.row.v1215.KeystoneAffix|nil
function row:GetKeystoneAffix() end

---Creates a related 'KeystoneAffix' row and automatically links 'KeystoneAffixID'.
---@param data? table
---@return dbc.row.v1215.KeystoneAffix
function row:CreateRelated(data) end

---Gets the value of field 'BonusRating'.
---@return integer value
function row:GetBonusRating() end

---Sets the value of field 'BonusRating'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix self
function row:SetBonusRating(value) end

---Gets the value of field 'Field_9_1_0_38511_004'.
---@return integer value
function row:GetField_9_1_0_38511_004() end

---Sets the value of field 'Field_9_1_0_38511_004'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix self
function row:SetField_9_1_0_38511_004(value) end

---Gets the value of field 'DisplaySeasonID'.
---@return integer value
function row:GetDisplaySeasonID() end

---Sets the value of field 'DisplaySeasonID'.
---@param value integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix self
function row:SetDisplaySeasonID(value) end

---Navigates foreign relationship to 'DisplaySeason' via 'DisplaySeasonID'.
---@return dbc.row.v1215.DisplaySeason|nil
function row:GetDisplaySeason() end

---Creates a related 'DisplaySeason' row and automatically links 'DisplaySeasonID'.
---@param data? table
---@return dbc.row.v1215.DisplaySeason
function row:CreateRelated(data) end

---Table container for MythicPlusSeasonTrackedAffix (Build 12.1.5.69594).
---@class dbc.Table.v1215.MythicPlusSeasonTrackedAffix : DbcTable
---@field [integer] dbc.row.v1215.MythicPlusSeasonTrackedAffix
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MythicPlusSeasonTrackedAffix>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MythicPlusSeasonTrackedAffix[]
function tbl:GetByRelation(foreign_id) end

return {}
