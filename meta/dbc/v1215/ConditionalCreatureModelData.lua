---@meta
-- Generated LuaLS annotations for ConditionalCreatureModelData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConditionalCreatureModelData in build 12.1.5.69594.
---@class dbc.row.v1215.ConditionalCreatureModelData : RowProxy
---@field ID integer
---@field CreatureModelDataID integer
---@field PortraitCreatureDisplayInfoID integer
---@field PlayerConditionID integer
---@field TextureVariationFileDataID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConditionalCreatureModelData self
function row:SetID(value) end

---Gets the value of field 'CreatureModelDataID'.
---@return integer value
function row:GetCreatureModelDataID() end

---Sets the value of field 'CreatureModelDataID'.
---@param value integer
---@return dbc.row.v1215.ConditionalCreatureModelData self
function row:SetCreatureModelDataID(value) end

---Navigates foreign relationship to 'CreatureModelData' via 'CreatureModelDataID'.
---@return dbc.row.v1215.CreatureModelData|nil
function row:GetCreatureModelData() end

---Creates a related 'CreatureModelData' row and automatically links 'CreatureModelDataID'.
---@param data? table
---@return dbc.row.v1215.CreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'PortraitCreatureDisplayInfoID'.
---@return integer value
function row:GetPortraitCreatureDisplayInfoID() end

---Sets the value of field 'PortraitCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ConditionalCreatureModelData self
function row:SetPortraitCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'PortraitCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetPortraitCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'PortraitCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ConditionalCreatureModelData self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'TextureVariationFileDataID'.
---@return integer[] value
function row:GetTextureVariationFileDataID() end

---Sets the value of field 'TextureVariationFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.ConditionalCreatureModelData self
function row:SetTextureVariationFileDataID(value) end

---Gets element at 1-based index in 'TextureVariationFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureVariationFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureVariationFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureVariationFileData() end

---Creates a related 'FileData' row and automatically links 'TextureVariationFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ConditionalCreatureModelData (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConditionalCreatureModelData : DbcTable
---@field [integer] dbc.row.v1215.ConditionalCreatureModelData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConditionalCreatureModelData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalCreatureModelData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalCreatureModelData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConditionalCreatureModelData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConditionalCreatureModelData[]
function tbl:GetByRelation(foreign_id) end

return {}
