---@meta
-- Generated LuaLS annotations for TransmogSituation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogSituation in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogSituation : RowProxy
---@field Name_lang string
---@field ID integer
---@field SituationEnum integer
---@field Flags integer 0x1: IsPlayerFacing, 0x2: SpecUseTalentLoadout, 0x4: AllSituation, 0x8: DefaultsToOn, 0x10: DynamicallyNamed, 0x20: NoneSituation, 0x40: DisabledSituation
---@field TransmogSituationGroupID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TransmogSituation self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogSituation self
function row:SetID(value) end

---Gets the value of field 'SituationEnum'.
---@return integer value
function row:GetSituationEnum() end

---Sets the value of field 'SituationEnum'.
---@param value integer
---@return dbc.row.v1215.TransmogSituation self
function row:SetSituationEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogSituation self
function row:SetFlags(value) end

---Gets the value of field 'TransmogSituationGroupID'.
---@return integer value
function row:GetTransmogSituationGroupID() end

---Sets the value of field 'TransmogSituationGroupID'.
---@param value integer
---@return dbc.row.v1215.TransmogSituation self
function row:SetTransmogSituationGroupID(value) end

---Navigates foreign relationship to 'TransmogSituationGroup' via 'TransmogSituationGroupID'.
---@return dbc.row.v1215.TransmogSituationGroup|nil
function row:GetTransmogSituationGroup() end

---Creates a related 'TransmogSituationGroup' row and automatically links 'TransmogSituationGroupID'.
---@param data? table
---@return dbc.row.v1215.TransmogSituationGroup
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.TransmogSituation self
function row:SetOrderIndex(value) end

---Table container for TransmogSituation (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogSituation : DbcTable
---@field [integer] dbc.row.v1215.TransmogSituation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogSituation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogSituation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogSituation[]
function tbl:GetByRelation(foreign_id) end

return {}
