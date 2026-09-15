---@meta
-- Generated LuaLS annotations for TerrainType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TerrainType in build 12.1.5.69594.
---@class dbc.row.v1215.TerrainType : RowProxy
---@field ID integer
---@field TerrainDesc string
---@field FootstepSprayRun integer
---@field FootstepSprayWalk integer
---@field SoundID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TerrainType self
function row:SetID(value) end

---Gets the value of field 'TerrainDesc'.
---@return string value
function row:GetTerrainDesc() end

---Sets the value of field 'TerrainDesc'.
---@param value string
---@return dbc.row.v1215.TerrainType self
function row:SetTerrainDesc(value) end

---Gets the value of field 'FootstepSprayRun'.
---@return integer value
function row:GetFootstepSprayRun() end

---Sets the value of field 'FootstepSprayRun'.
---@param value integer
---@return dbc.row.v1215.TerrainType self
function row:SetFootstepSprayRun(value) end

---Gets the value of field 'FootstepSprayWalk'.
---@return integer value
function row:GetFootstepSprayWalk() end

---Sets the value of field 'FootstepSprayWalk'.
---@param value integer
---@return dbc.row.v1215.TerrainType self
function row:SetFootstepSprayWalk(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.TerrainType self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'TerrainTypeSounds' via 'SoundID'.
---@return dbc.row.v1215.TerrainTypeSounds|nil
function row:GetSound() end

---Creates a related 'TerrainTypeSounds' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.TerrainTypeSounds
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TerrainType self
function row:SetFlags(value) end

---Table container for TerrainType (Build 12.1.5.69594).
---@class dbc.Table.v1215.TerrainType : DbcTable
---@field [integer] dbc.row.v1215.TerrainType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TerrainType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TerrainType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TerrainType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TerrainType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TerrainType[]
function tbl:GetByRelation(foreign_id) end

return {}
