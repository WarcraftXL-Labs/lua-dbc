---@meta
-- Generated LuaLS annotations for BattlePetAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetAbility in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetAbility : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field IconFileDataID integer
---@field PetTypeEnum integer
---@field Cooldown integer
---@field BattlePetVisualID integer
---@field Flags integer &1: hide aura, &2: no strong/weak hints in tooltips etc

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.BattlePetAbility self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.BattlePetAbility self
function row:SetDescription_lang(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PetTypeEnum'.
---@return integer value
function row:GetPetTypeEnum() end

---Sets the value of field 'PetTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetPetTypeEnum(value) end

---Gets the value of field 'Cooldown'.
---@return integer value
function row:GetCooldown() end

---Sets the value of field 'Cooldown'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetCooldown(value) end

---Gets the value of field 'BattlePetVisualID'.
---@return integer value
function row:GetBattlePetVisualID() end

---Sets the value of field 'BattlePetVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetBattlePetVisualID(value) end

---Navigates foreign relationship to 'BattlePetVisual' via 'BattlePetVisualID'.
---@return dbc.row.v1215.BattlePetVisual|nil
function row:GetBattlePetVisual() end

---Creates a related 'BattlePetVisual' row and automatically links 'BattlePetVisualID'.
---@param data? table
---@return dbc.row.v1215.BattlePetVisual
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbility self
function row:SetFlags(value) end

---Table container for BattlePetAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetAbility : DbcTable
---@field [integer] dbc.row.v1215.BattlePetAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
