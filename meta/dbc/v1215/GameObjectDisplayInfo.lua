---@meta
-- Generated LuaLS annotations for GameObjectDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectDisplayInfo : RowProxy
---@field ID integer
---@field GeoBox number[]
---@field FileDataID integer
---@field ObjectEffectPackageID integer
---@field OverrideLootEffectScale number
---@field OverrideNameScale number
---@field AlternateDisplayType integer 1 = creature, 2 = item
---@field ClientCreatureDisplayInfoID integer
---@field ClientItemID integer
---@field Field_11_0_0_54210_008 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'GeoBox'.
---@return number[] value
function row:GetGeoBox() end

---Sets the value of field 'GeoBox'.
---@param value number[]
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetGeoBox(value) end

---Gets element at 1-based index in 'GeoBox'.
---@param index integer
---@return number value
function row:GetGeoBoxItem(index) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ObjectEffectPackageID'.
---@return integer value
function row:GetObjectEffectPackageID() end

---Sets the value of field 'ObjectEffectPackageID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetObjectEffectPackageID(value) end

---Navigates foreign relationship to 'ObjectEffectPackage' via 'ObjectEffectPackageID'.
---@return dbc.row.v1215.ObjectEffectPackage|nil
function row:GetObjectEffectPackage() end

---Creates a related 'ObjectEffectPackage' row and automatically links 'ObjectEffectPackageID'.
---@param data? table
---@return dbc.row.v1215.ObjectEffectPackage
function row:CreateRelated(data) end

---Gets the value of field 'OverrideLootEffectScale'.
---@return number value
function row:GetOverrideLootEffectScale() end

---Sets the value of field 'OverrideLootEffectScale'.
---@param value number
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetOverrideLootEffectScale(value) end

---Gets the value of field 'OverrideNameScale'.
---@return number value
function row:GetOverrideNameScale() end

---Sets the value of field 'OverrideNameScale'.
---@param value number
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetOverrideNameScale(value) end

---Gets the value of field 'AlternateDisplayType'.
---@return integer value
function row:GetAlternateDisplayType() end

---Sets the value of field 'AlternateDisplayType'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetAlternateDisplayType(value) end

---Gets the value of field 'ClientCreatureDisplayInfoID'.
---@return integer value
function row:GetClientCreatureDisplayInfoID() end

---Sets the value of field 'ClientCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetClientCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'ClientCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetClientCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'ClientCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'ClientItemID'.
---@return integer value
function row:GetClientItemID() end

---Sets the value of field 'ClientItemID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetClientItemID(value) end

---Navigates foreign relationship to 'Item' via 'ClientItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetClientItem() end

---Creates a related 'Item' row and automatically links 'ClientItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54210_008'.
---@return integer value
function row:GetField_11_0_0_54210_008() end

---Sets the value of field 'Field_11_0_0_54210_008'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayInfo self
function row:SetField_11_0_0_54210_008(value) end

---Table container for GameObjectDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.GameObjectDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
