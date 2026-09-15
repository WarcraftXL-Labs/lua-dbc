---@meta
-- Generated LuaLS annotations for CharHairTextures (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharHairTextures in build 3.3.5.12340.
---@class dbc.row.v335.CharHairTextures : RowProxy
---@field ID integer
---@field Field_0_5_3_3368_001_race integer
---@field Field_0_5_3_3368_002_gender integer
---@field Field_0_5_3_3368_003 integer
---@field Field_0_5_3_3368_004_mayberacemask integer
---@field Field_0_5_3_3368_005_the_x_in_hair_xy_blp integer Maybe the * of Hair*_x.blp?
---@field Field_0_5_3_3368_006 integer
---@field Field_0_5_3_3368_007 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetID(value) end

---Gets the value of field 'Field_0_5_3_3368_001_race'.
---@return integer value
function row:GetField_0_5_3_3368_001_race() end

---Sets the value of field 'Field_0_5_3_3368_001_race'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_001_race(value) end

---Navigates foreign relationship to 'ChrRaces' via 'Field_0_5_3_3368_001_race'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetField_0_5_3_3368_001_race() end

---Creates a related 'ChrRaces' row and automatically links 'Field_0_5_3_3368_001_race'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Field_0_5_3_3368_002_gender'.
---@return integer value
function row:GetField_0_5_3_3368_002_gender() end

---Sets the value of field 'Field_0_5_3_3368_002_gender'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_002_gender(value) end

---Gets the value of field 'Field_0_5_3_3368_003'.
---@return integer value
function row:GetField_0_5_3_3368_003() end

---Sets the value of field 'Field_0_5_3_3368_003'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_003(value) end

---Gets the value of field 'Field_0_5_3_3368_004_mayberacemask'.
---@return integer value
function row:GetField_0_5_3_3368_004_mayberacemask() end

---Sets the value of field 'Field_0_5_3_3368_004_mayberacemask'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_004_mayberacemask(value) end

---Gets the value of field 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp'.
---@return integer value
function row:GetField_0_5_3_3368_005_the_x_in_hair_xy_blp() end

---Sets the value of field 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_005_the_x_in_hair_xy_blp(value) end

---Gets the value of field 'Field_0_5_3_3368_006'.
---@return integer value
function row:GetField_0_5_3_3368_006() end

---Sets the value of field 'Field_0_5_3_3368_006'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_006(value) end

---Gets the value of field 'Field_0_5_3_3368_007'.
---@return integer value
function row:GetField_0_5_3_3368_007() end

---Sets the value of field 'Field_0_5_3_3368_007'.
---@param value integer
---@return dbc.row.v335.CharHairTextures self
function row:SetField_0_5_3_3368_007(value) end

---Table container for CharHairTextures (Build 3.3.5.12340).
---@class dbc.Table.v335.CharHairTextures : DbcTable
---@field [integer] dbc.row.v335.CharHairTextures
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharHairTextures
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharHairTextures|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharHairTextures
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharHairTextures>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharHairTextures[]
function tbl:GetByRelation(foreign_id) end

return {}
