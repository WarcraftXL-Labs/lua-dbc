---@meta
-- Generated LuaLS annotations for Material (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Material in build 3.3.5.12340.
---@class dbc.row.v335.Material : RowProxy
---@field ID integer
---@field Flags integer
---@field FoleySoundID integer
---@field SheatheSoundID integer
---@field UnsheatheSoundID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Material self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Material self
function row:SetFlags(value) end

---Gets the value of field 'FoleySoundID'.
---@return integer value
function row:GetFoleySoundID() end

---Sets the value of field 'FoleySoundID'.
---@param value integer
---@return dbc.row.v335.Material self
function row:SetFoleySoundID(value) end

---Navigates foreign relationship to 'SoundKit' via 'FoleySoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetFoleySound() end

---Creates a related 'SoundKit' row and automatically links 'FoleySoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SheatheSoundID'.
---@return integer value
function row:GetSheatheSoundID() end

---Sets the value of field 'SheatheSoundID'.
---@param value integer
---@return dbc.row.v335.Material self
function row:SetSheatheSoundID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SheatheSoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetSheatheSound() end

---Creates a related 'SoundKit' row and automatically links 'SheatheSoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'UnsheatheSoundID'.
---@return integer value
function row:GetUnsheatheSoundID() end

---Sets the value of field 'UnsheatheSoundID'.
---@param value integer
---@return dbc.row.v335.Material self
function row:SetUnsheatheSoundID(value) end

---Navigates foreign relationship to 'SoundKit' via 'UnsheatheSoundID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetUnsheatheSound() end

---Creates a related 'SoundKit' row and automatically links 'UnsheatheSoundID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Table container for Material (Build 3.3.5.12340).
---@class dbc.Table.v335.Material : DbcTable
---@field [integer] dbc.row.v335.Material
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Material
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Material|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Material
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Material>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Material[]
function tbl:GetByRelation(foreign_id) end

return {}
