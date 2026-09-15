---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoExtra (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoExtra in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoExtra : RowProxy
---@field ID integer
---@field DisplayRaceID integer
---@field DisplaySexID integer
---@field DisplayClassID integer
---@field Flags integer
---@field BakeMaterialResourcesID integer
---@field HDBakeMaterialResourcesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetID(value) end

---Gets the value of field 'DisplayRaceID'.
---@return integer value
function row:GetDisplayRaceID() end

---Sets the value of field 'DisplayRaceID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetDisplayRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'DisplayRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetDisplayRace() end

---Creates a related 'ChrRaces' row and automatically links 'DisplayRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'DisplaySexID'.
---@return integer value
function row:GetDisplaySexID() end

---Sets the value of field 'DisplaySexID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetDisplaySexID(value) end

---Navigates foreign relationship to 'DisplaySex' via 'DisplaySexID'.
---@return dbc.row.v1215.DisplaySex|nil
function row:GetDisplaySex() end

---Creates a related 'DisplaySex' row and automatically links 'DisplaySexID'.
---@param data? table
---@return dbc.row.v1215.DisplaySex
function row:CreateRelated(data) end

---Gets the value of field 'DisplayClassID'.
---@return integer value
function row:GetDisplayClassID() end

---Sets the value of field 'DisplayClassID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetDisplayClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'DisplayClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetDisplayClass() end

---Creates a related 'ChrClasses' row and automatically links 'DisplayClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetFlags(value) end

---Gets the value of field 'BakeMaterialResourcesID'.
---@return integer value
function row:GetBakeMaterialResourcesID() end

---Sets the value of field 'BakeMaterialResourcesID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetBakeMaterialResourcesID(value) end

---Navigates foreign relationship to 'TextureFileData' via 'BakeMaterialResourcesID'.
---@return dbc.row.v1215.TextureFileData|nil
function row:GetBakeMaterialResources() end

---Creates a related 'TextureFileData' row and automatically links 'BakeMaterialResourcesID'.
---@param data? table
---@return dbc.row.v1215.TextureFileData
function row:CreateRelated(data) end

---Gets the value of field 'HDBakeMaterialResourcesID'.
---@return integer value
function row:GetHDBakeMaterialResourcesID() end

---Sets the value of field 'HDBakeMaterialResourcesID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra self
function row:SetHDBakeMaterialResourcesID(value) end

---Navigates foreign relationship to 'TextureFileData' via 'HDBakeMaterialResourcesID'.
---@return dbc.row.v1215.TextureFileData|nil
function row:GetHDBakeMaterialResources() end

---Creates a related 'TextureFileData' row and automatically links 'HDBakeMaterialResourcesID'.
---@param data? table
---@return dbc.row.v1215.TextureFileData
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoExtra (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoExtra : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoExtra
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoExtra
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoExtra>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoExtra[]
function tbl:GetByRelation(foreign_id) end

return {}
