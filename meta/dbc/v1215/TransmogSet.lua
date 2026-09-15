---@meta
-- Generated LuaLS annotations for TransmogSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogSet in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogSet : RowProxy
---@field Name_lang string
---@field ID integer
---@field ClassMask integer
---@field TrackingQuestID integer
---@field Flags integer
---@field TransmogSetGroupID integer
---@field ItemNameDescriptionID integer
---@field ParentTransmogSetID integer
---@field CompleteWorldStateID integer
---@field ExpansionID integer
---@field PatchIntroduced integer in '%d%02d%02d' % (major, minor, patch) form
---@field UiOrder integer
---@field ConditionID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TransmogSet self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetID(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetClassMask(value) end

---Gets the value of field 'TrackingQuestID'.
---@return integer value
function row:GetTrackingQuestID() end

---Sets the value of field 'TrackingQuestID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetTrackingQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'TrackingQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetTrackingQuest() end

---Creates a related 'QuestV2' row and automatically links 'TrackingQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetFlags(value) end

---Gets the value of field 'TransmogSetGroupID'.
---@return integer value
function row:GetTransmogSetGroupID() end

---Sets the value of field 'TransmogSetGroupID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetTransmogSetGroupID(value) end

---Navigates foreign relationship to 'TransmogSetGroup' via 'TransmogSetGroupID'.
---@return dbc.row.v1215.TransmogSetGroup|nil
function row:GetTransmogSetGroup() end

---Creates a related 'TransmogSetGroup' row and automatically links 'TransmogSetGroupID'.
---@param data? table
---@return dbc.row.v1215.TransmogSetGroup
function row:CreateRelated(data) end

---Gets the value of field 'ItemNameDescriptionID'.
---@return integer value
function row:GetItemNameDescriptionID() end

---Sets the value of field 'ItemNameDescriptionID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetItemNameDescriptionID(value) end

---Navigates foreign relationship to 'ItemNameDescription' via 'ItemNameDescriptionID'.
---@return dbc.row.v1215.ItemNameDescription|nil
function row:GetItemNameDescription() end

---Creates a related 'ItemNameDescription' row and automatically links 'ItemNameDescriptionID'.
---@param data? table
---@return dbc.row.v1215.ItemNameDescription
function row:CreateRelated(data) end

---Gets the value of field 'ParentTransmogSetID'.
---@return integer value
function row:GetParentTransmogSetID() end

---Sets the value of field 'ParentTransmogSetID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetParentTransmogSetID(value) end

---Navigates foreign relationship to 'TransmogSet' via 'ParentTransmogSetID'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetParentTransmogSet() end

---Creates a related 'TransmogSet' row and automatically links 'ParentTransmogSetID'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'CompleteWorldStateID'.
---@return integer value
function row:GetCompleteWorldStateID() end

---Sets the value of field 'CompleteWorldStateID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetCompleteWorldStateID(value) end

---Navigates foreign relationship to 'CompleteWorldState' via 'CompleteWorldStateID'.
---@return dbc.row.v1215.CompleteWorldState|nil
function row:GetCompleteWorldState() end

---Creates a related 'CompleteWorldState' row and automatically links 'CompleteWorldStateID'.
---@param data? table
---@return dbc.row.v1215.CompleteWorldState
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'PatchIntroduced'.
---@return integer value
function row:GetPatchIntroduced() end

---Sets the value of field 'PatchIntroduced'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetPatchIntroduced(value) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetUiOrder(value) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.TransmogSet self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for TransmogSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogSet : DbcTable
---@field [integer] dbc.row.v1215.TransmogSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogSet[]
function tbl:GetByRelation(foreign_id) end

return {}
