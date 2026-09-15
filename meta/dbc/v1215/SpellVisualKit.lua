---@meta
-- Generated LuaLS annotations for SpellVisualKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKit in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKit : RowProxy
---@field ID integer
---@field ClutterLevel integer When displaying an effect, use this as an index into the correspondin SpellClutter* dbs.
---@field FallbackSpellVisualKitID integer
---@field DelayMin integer
---@field DelayMax integer
---@field MinimumSpellVisualDensityFilterType integer Type of visual adjustment used when spellVisualDensityFilterSetting CVar is set to 1, determines what is stored in MinimumSpellVisualDensityFilterParam (1/2 unknown, 3 is SpellVisualKit)
---@field MinimumSpellVisualDensityFilterParam integer When
---@field ReducedSpellVisualDensityFilterType integer Type of visual adjustment used when spellVisualDensityFilterSetting CVar is set to 2, determines what is stored in ReducedSpellVisualDensityFilterParam (1/2 unknown, 3 is SpellVisualKit)
---@field ReducedSpellVisualDensityFilterParam integer
---@field Flags integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetID(value) end

---Gets the value of field 'ClutterLevel'.
---@return integer value
function row:GetClutterLevel() end

---Sets the value of field 'ClutterLevel'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetClutterLevel(value) end

---Gets the value of field 'FallbackSpellVisualKitID'.
---@return integer value
function row:GetFallbackSpellVisualKitID() end

---Sets the value of field 'FallbackSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetFallbackSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FallbackSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFallbackSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'FallbackSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'DelayMin'.
---@return integer value
function row:GetDelayMin() end

---Sets the value of field 'DelayMin'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetDelayMin(value) end

---Gets the value of field 'DelayMax'.
---@return integer value
function row:GetDelayMax() end

---Sets the value of field 'DelayMax'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetDelayMax(value) end

---Gets the value of field 'MinimumSpellVisualDensityFilterType'.
---@return integer value
function row:GetMinimumSpellVisualDensityFilterType() end

---Sets the value of field 'MinimumSpellVisualDensityFilterType'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetMinimumSpellVisualDensityFilterType(value) end

---Gets the value of field 'MinimumSpellVisualDensityFilterParam'.
---@return integer value
function row:GetMinimumSpellVisualDensityFilterParam() end

---Sets the value of field 'MinimumSpellVisualDensityFilterParam'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetMinimumSpellVisualDensityFilterParam(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MinimumSpellVisualDensityFilterParam'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMinimumSpellVisualDensityFilterParam() end

---Creates a related 'SpellVisualKit' row and automatically links 'MinimumSpellVisualDensityFilterParam'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ReducedSpellVisualDensityFilterType'.
---@return integer value
function row:GetReducedSpellVisualDensityFilterType() end

---Sets the value of field 'ReducedSpellVisualDensityFilterType'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetReducedSpellVisualDensityFilterType(value) end

---Gets the value of field 'ReducedSpellVisualDensityFilterParam'.
---@return integer value
function row:GetReducedSpellVisualDensityFilterParam() end

---Sets the value of field 'ReducedSpellVisualDensityFilterParam'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKit self
function row:SetReducedSpellVisualDensityFilterParam(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ReducedSpellVisualDensityFilterParam'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetReducedSpellVisualDensityFilterParam() end

---Creates a related 'SpellVisualKit' row and automatically links 'ReducedSpellVisualDensityFilterParam'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.SpellVisualKit self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for SpellVisualKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKit : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKit[]
function tbl:GetByRelation(foreign_id) end

return {}
