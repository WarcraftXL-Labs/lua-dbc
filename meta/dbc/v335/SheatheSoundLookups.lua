---@meta
-- Generated LuaLS annotations for SheatheSoundLookups (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SheatheSoundLookups in build 3.3.5.12340.
---@class dbc.row.v335.SheatheSoundLookups : RowProxy
---@field ID integer
---@field ClassID integer
---@field SubclassID integer
---@field Material integer always if 1 then PARRYMATERIAL_METAL else PARRYMATERIAL_WOOD
---@field CheckMaterial integer If set, the explicit class/subclass/material combinations are used and missing materials are not assigned a sound. If not set, entries are created for all DB/Material with the same class, subclass and sounds as the record. Used in <code>InitializeSheatheSounds()</code>.
---@field SheatheSound integer
---@field UnsheatheSound integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemSubClass' via 'ClassID'.
---@return dbc.row.v335.ItemSubClass|nil
function row:GetClass() end

---Creates a related 'ItemSubClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.ItemSubClass
function row:CreateRelated(data) end

---Gets the value of field 'SubclassID'.
---@return integer value
function row:GetSubclassID() end

---Sets the value of field 'SubclassID'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetSubclassID(value) end

---Navigates foreign relationship to 'ItemSubClass' via 'SubclassID'.
---@return dbc.row.v335.ItemSubClass|nil
function row:GetSubclass() end

---Creates a related 'ItemSubClass' row and automatically links 'SubclassID'.
---@param data? table
---@return dbc.row.v335.ItemSubClass
function row:CreateRelated(data) end

---Gets the value of field 'Material'.
---@return integer value
function row:GetMaterial() end

---Sets the value of field 'Material'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetMaterial(value) end

---Navigates foreign relationship to 'Material' via 'Material'.
---@return dbc.row.v335.Material|nil
function row:GetMaterial() end

---Creates a related 'Material' row and automatically links 'Material'.
---@param data? table
---@return dbc.row.v335.Material
function row:CreateRelated(data) end

---Gets the value of field 'CheckMaterial'.
---@return integer value
function row:GetCheckMaterial() end

---Sets the value of field 'CheckMaterial'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetCheckMaterial(value) end

---Gets the value of field 'SheatheSound'.
---@return integer value
function row:GetSheatheSound() end

---Sets the value of field 'SheatheSound'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetSheatheSound(value) end

---Gets the value of field 'UnsheatheSound'.
---@return integer value
function row:GetUnsheatheSound() end

---Sets the value of field 'UnsheatheSound'.
---@param value integer
---@return dbc.row.v335.SheatheSoundLookups self
function row:SetUnsheatheSound(value) end

---Table container for SheatheSoundLookups (Build 3.3.5.12340).
---@class dbc.Table.v335.SheatheSoundLookups : DbcTable
---@field [integer] dbc.row.v335.SheatheSoundLookups
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SheatheSoundLookups
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SheatheSoundLookups|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SheatheSoundLookups
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SheatheSoundLookups>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SheatheSoundLookups[]
function tbl:GetByRelation(foreign_id) end

return {}
