---@meta
-- Generated LuaLS annotations for Cfg_Regions (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Cfg_Regions in build 12.1.5.69594.
---@class dbc.row.v1215.Cfg_Regions : RowProxy
---@field ID integer
---@field Tag string
---@field Region_ID integer uint8, except for 666 (Dead Realm Graveyard) and 1038 (zzOLD QA Armory 1)
---@field Raidorigin integer
---@field Region_group_mask integer 1: US, 2: KR, 3: EU, 4: TW, 5: CN, 6: events, 7: test/automation, 8: third party test (ptr, vendors, censor), 9: development, 10: QA, 11: QA/CS?
---@field Challenge_origin integer
---@field Cfg_TimeEventRegionGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetID(value) end

---Gets the value of field 'Tag'.
---@return string value
function row:GetTag() end

---Sets the value of field 'Tag'.
---@param value string
---@return dbc.row.v1215.Cfg_Regions self
function row:SetTag(value) end

---Gets the value of field 'Region_ID'.
---@return integer value
function row:GetRegion_ID() end

---Sets the value of field 'Region_ID'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetRegion_ID(value) end

---Navigates foreign relationship to 'Region_' via 'Region_ID'.
---@return dbc.row.v1215.Region_|nil
function row:GetRegion_() end

---Creates a related 'Region_' row and automatically links 'Region_ID'.
---@param data? table
---@return dbc.row.v1215.Region_
function row:CreateRelated(data) end

---Gets the value of field 'Raidorigin'.
---@return integer value
function row:GetRaidorigin() end

---Sets the value of field 'Raidorigin'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetRaidorigin(value) end

---Gets the value of field 'Region_group_mask'.
---@return integer value
function row:GetRegion_group_mask() end

---Sets the value of field 'Region_group_mask'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetRegion_group_mask(value) end

---Gets the value of field 'Challenge_origin'.
---@return integer value
function row:GetChallenge_origin() end

---Sets the value of field 'Challenge_origin'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetChallenge_origin(value) end

---Gets the value of field 'Cfg_TimeEventRegionGroupID'.
---@return integer value
function row:GetCfg_TimeEventRegionGroupID() end

---Sets the value of field 'Cfg_TimeEventRegionGroupID'.
---@param value integer
---@return dbc.row.v1215.Cfg_Regions self
function row:SetCfg_TimeEventRegionGroupID(value) end

---Navigates foreign relationship to 'Cfg_TimeEventRegionGroup' via 'Cfg_TimeEventRegionGroupID'.
---@return dbc.row.v1215.Cfg_TimeEventRegionGroup|nil
function row:GetCfg_TimeEventRegionGroup() end

---Creates a related 'Cfg_TimeEventRegionGroup' row and automatically links 'Cfg_TimeEventRegionGroupID'.
---@param data? table
---@return dbc.row.v1215.Cfg_TimeEventRegionGroup
function row:CreateRelated(data) end

---Table container for Cfg_Regions (Build 12.1.5.69594).
---@class dbc.Table.v1215.Cfg_Regions : DbcTable
---@field [integer] dbc.row.v1215.Cfg_Regions
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Cfg_Regions
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Regions|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Regions
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Cfg_Regions>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Cfg_Regions[]
function tbl:GetByRelation(foreign_id) end

return {}
