---@meta
-- Generated LuaLS annotations for ContentTuningXExpected (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContentTuningXExpected in build 12.1.5.69594.
---@class dbc.row.v1215.ContentTuningXExpected : RowProxy
---@field ID integer
---@field ExpectedStatModID integer
---@field MinMythicPlusSeasonID integer comparison to current season done using MythicPlusSeason::SubSeason field
---@field MaxMythicPlusSeasonID integer comparison to current season done using MythicPlusSeason::SubSeason field
---@field ContentTuningID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContentTuningXExpected self
function row:SetID(value) end

---Gets the value of field 'ExpectedStatModID'.
---@return integer value
function row:GetExpectedStatModID() end

---Sets the value of field 'ExpectedStatModID'.
---@param value integer
---@return dbc.row.v1215.ContentTuningXExpected self
function row:SetExpectedStatModID(value) end

---Navigates foreign relationship to 'ExpectedStatMod' via 'ExpectedStatModID'.
---@return dbc.row.v1215.ExpectedStatMod|nil
function row:GetExpectedStatMod() end

---Creates a related 'ExpectedStatMod' row and automatically links 'ExpectedStatModID'.
---@param data? table
---@return dbc.row.v1215.ExpectedStatMod
function row:CreateRelated(data) end

---Gets the value of field 'MinMythicPlusSeasonID'.
---@return integer value
function row:GetMinMythicPlusSeasonID() end

---Sets the value of field 'MinMythicPlusSeasonID'.
---@param value integer
---@return dbc.row.v1215.ContentTuningXExpected self
function row:SetMinMythicPlusSeasonID(value) end

---Navigates foreign relationship to 'MythicPlusSeason' via 'MinMythicPlusSeasonID'.
---@return dbc.row.v1215.MythicPlusSeason|nil
function row:GetMinMythicPlusSeason() end

---Creates a related 'MythicPlusSeason' row and automatically links 'MinMythicPlusSeasonID'.
---@param data? table
---@return dbc.row.v1215.MythicPlusSeason
function row:CreateRelated(data) end

---Gets the value of field 'MaxMythicPlusSeasonID'.
---@return integer value
function row:GetMaxMythicPlusSeasonID() end

---Sets the value of field 'MaxMythicPlusSeasonID'.
---@param value integer
---@return dbc.row.v1215.ContentTuningXExpected self
function row:SetMaxMythicPlusSeasonID(value) end

---Navigates foreign relationship to 'MythicPlusSeason' via 'MaxMythicPlusSeasonID'.
---@return dbc.row.v1215.MythicPlusSeason|nil
function row:GetMaxMythicPlusSeason() end

---Creates a related 'MythicPlusSeason' row and automatically links 'MaxMythicPlusSeasonID'.
---@param data? table
---@return dbc.row.v1215.MythicPlusSeason
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.ContentTuningXExpected self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Table container for ContentTuningXExpected (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContentTuningXExpected : DbcTable
---@field [integer] dbc.row.v1215.ContentTuningXExpected
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContentTuningXExpected
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContentTuningXExpected|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContentTuningXExpected
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContentTuningXExpected>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContentTuningXExpected[]
function tbl:GetByRelation(foreign_id) end

return {}
