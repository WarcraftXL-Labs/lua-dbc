---@meta
-- Generated LuaLS annotations for GameObjects (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjects in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjects : RowProxy
---@field Name_lang string
---@field Pos number[]
---@field Rot number[]
---@field ID integer
---@field OwnerID integer
---@field DisplayID integer
---@field Flags integer 0x10000: Related to spherical range testing
---@field Scale number
---@field TypeID integer
---@field PhaseUseFlags integer
---@field PhaseID integer
---@field PhaseGroupID integer actually PhaseGroup::ID, but unshipped
---@field Field_11_0_0_54210_011 integer
---@field PropValue integer[]

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GameObjects self
function row:SetName_lang(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.GameObjects self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'Rot'.
---@return number[] value
function row:GetRot() end

---Sets the value of field 'Rot'.
---@param value number[]
---@return dbc.row.v1215.GameObjects self
function row:SetRot(value) end

---Gets element at 1-based index in 'Rot'.
---@param index integer
---@return number value
function row:GetRotItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetID(value) end

---Gets the value of field 'OwnerID'.
---@return integer value
function row:GetOwnerID() end

---Sets the value of field 'OwnerID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetOwnerID(value) end

---Navigates foreign relationship to 'Map' via 'OwnerID'.
---@return dbc.row.v1215.Map|nil
function row:GetOwner() end

---Creates a related 'Map' row and automatically links 'OwnerID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'DisplayID'.
---@return integer value
function row:GetDisplayID() end

---Sets the value of field 'DisplayID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetDisplayID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'DisplayID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetDisplay() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'DisplayID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetFlags(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.GameObjects self
function row:SetScale(value) end

---Gets the value of field 'TypeID'.
---@return integer value
function row:GetTypeID() end

---Sets the value of field 'TypeID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetTypeID(value) end

---Navigates foreign relationship to 'Type' via 'TypeID'.
---@return dbc.row.v1215.Type|nil
function row:GetType() end

---Creates a related 'Type' row and automatically links 'TypeID'.
---@param data? table
---@return dbc.row.v1215.Type
function row:CreateRelated(data) end

---Gets the value of field 'PhaseUseFlags'.
---@return integer value
function row:GetPhaseUseFlags() end

---Sets the value of field 'PhaseUseFlags'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetPhaseUseFlags(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'PhaseGroupID'.
---@return integer value
function row:GetPhaseGroupID() end

---Sets the value of field 'PhaseGroupID'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseXPhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseXPhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseXPhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseXPhaseGroup
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54210_011'.
---@return integer value
function row:GetField_11_0_0_54210_011() end

---Sets the value of field 'Field_11_0_0_54210_011'.
---@param value integer
---@return dbc.row.v1215.GameObjects self
function row:SetField_11_0_0_54210_011(value) end

---Gets the value of field 'PropValue'.
---@return integer[] value
function row:GetPropValue() end

---Sets the value of field 'PropValue'.
---@param value integer[]
---@return dbc.row.v1215.GameObjects self
function row:SetPropValue(value) end

---Gets element at 1-based index in 'PropValue'.
---@param index integer
---@return integer value
function row:GetPropValueItem(index) end

---Table container for GameObjects (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjects : DbcTable
---@field [integer] dbc.row.v1215.GameObjects
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjects
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjects|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjects
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjects>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjects[]
function tbl:GetByRelation(foreign_id) end

return {}
