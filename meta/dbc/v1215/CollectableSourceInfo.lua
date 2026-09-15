---@meta
-- Generated LuaLS annotations for CollectableSourceInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CollectableSourceInfo in build 12.1.5.69594.
---@class dbc.row.v1215.CollectableSourceInfo : RowProxy
---@field Description string
---@field ID integer
---@field SourceTypeEnum integer Defines in what CollectableSource table you can find this entry, 1-> Encounter, 2-> Quest, 3-> Vendor
---@field ItemModifiedAppearanceID integer
---@field HouseDecorID integer

local row = {}

---Gets the value of field 'Description'.
---@return string value
function row:GetDescription() end

---Sets the value of field 'Description'.
---@param value string
---@return dbc.row.v1215.CollectableSourceInfo self
function row:SetDescription(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceInfo self
function row:SetID(value) end

---Gets the value of field 'SourceTypeEnum'.
---@return integer value
function row:GetSourceTypeEnum() end

---Sets the value of field 'SourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceInfo self
function row:SetSourceTypeEnum(value) end

---Gets the value of field 'ItemModifiedAppearanceID'.
---@return integer value
function row:GetItemModifiedAppearanceID() end

---Sets the value of field 'ItemModifiedAppearanceID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceInfo self
function row:SetItemModifiedAppearanceID(value) end

---Navigates foreign relationship to 'ItemModifiedAppearance' via 'ItemModifiedAppearanceID'.
---@return dbc.row.v1215.ItemModifiedAppearance|nil
function row:GetItemModifiedAppearance() end

---Creates a related 'ItemModifiedAppearance' row and automatically links 'ItemModifiedAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemModifiedAppearance
function row:CreateRelated(data) end

---Gets the value of field 'HouseDecorID'.
---@return integer value
function row:GetHouseDecorID() end

---Sets the value of field 'HouseDecorID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceInfo self
function row:SetHouseDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'HouseDecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetHouseDecor() end

---Creates a related 'HouseDecor' row and automatically links 'HouseDecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Table container for CollectableSourceInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.CollectableSourceInfo : DbcTable
---@field [integer] dbc.row.v1215.CollectableSourceInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CollectableSourceInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CollectableSourceInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CollectableSourceInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
