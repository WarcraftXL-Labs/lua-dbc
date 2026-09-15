---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoCond in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoCond : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field Gender integer
---@field ClassMask integer
---@field CreatureModelDataID integer
---@field TextureVariationFileDataID integer[]
---@field RaceMasks integer[]
---@field CreatureDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetOrderIndex(value) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetGender(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetClassMask(value) end

---Gets the value of field 'CreatureModelDataID'.
---@return integer value
function row:GetCreatureModelDataID() end

---Sets the value of field 'CreatureModelDataID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetCreatureModelDataID(value) end

---Navigates foreign relationship to 'CreatureModelData' via 'CreatureModelDataID'.
---@return dbc.row.v1215.CreatureModelData|nil
function row:GetCreatureModelData() end

---Creates a related 'CreatureModelData' row and automatically links 'CreatureModelDataID'.
---@param data? table
---@return dbc.row.v1215.CreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'TextureVariationFileDataID'.
---@return integer[] value
function row:GetTextureVariationFileDataID() end

---Sets the value of field 'TextureVariationFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.CreatureDisplayInfoCond self
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

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoCond self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoCond : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoCond[]
function tbl:GetByRelation(foreign_id) end

return {}
