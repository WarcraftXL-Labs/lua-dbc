---@meta
-- Generated LuaLS annotations for AnimKitSegment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitSegment in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitSegment : RowProxy
---@field ID integer
---@field ParentAnimKitID integer
---@field OrderIndex integer
---@field AnimID integer
---@field AnimStartTime integer
---@field AnimKitConfigID integer
---@field StartCondition integer
---@field StartConditionParam integer
---@field StartConditionDelay integer
---@field EndCondition integer
---@field EndConditionParam integer
---@field EndConditionDelay integer
---@field Speed number
---@field SegmentFlags integer
---@field ForcedVariation integer
---@field OverrideConfigFlags integer
---@field LoopToSegmentIndex integer
---@field BlendInTimeMs integer
---@field BlendOutTimeMs integer
---@field Field_9_0_1_34278_018 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetID(value) end

---Gets the value of field 'ParentAnimKitID'.
---@return integer value
function row:GetParentAnimKitID() end

---Sets the value of field 'ParentAnimKitID'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetParentAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'ParentAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetParentAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'ParentAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetOrderIndex(value) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnim() end

---Creates a related 'AnimationData' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimStartTime'.
---@return integer value
function row:GetAnimStartTime() end

---Sets the value of field 'AnimStartTime'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetAnimStartTime(value) end

---Gets the value of field 'AnimKitConfigID'.
---@return integer value
function row:GetAnimKitConfigID() end

---Sets the value of field 'AnimKitConfigID'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetAnimKitConfigID(value) end

---Navigates foreign relationship to 'AnimKitConfig' via 'AnimKitConfigID'.
---@return dbc.row.v1215.AnimKitConfig|nil
function row:GetAnimKitConfig() end

---Creates a related 'AnimKitConfig' row and automatically links 'AnimKitConfigID'.
---@param data? table
---@return dbc.row.v1215.AnimKitConfig
function row:CreateRelated(data) end

---Gets the value of field 'StartCondition'.
---@return integer value
function row:GetStartCondition() end

---Sets the value of field 'StartCondition'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetStartCondition(value) end

---Gets the value of field 'StartConditionParam'.
---@return integer value
function row:GetStartConditionParam() end

---Sets the value of field 'StartConditionParam'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetStartConditionParam(value) end

---Gets the value of field 'StartConditionDelay'.
---@return integer value
function row:GetStartConditionDelay() end

---Sets the value of field 'StartConditionDelay'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetStartConditionDelay(value) end

---Gets the value of field 'EndCondition'.
---@return integer value
function row:GetEndCondition() end

---Sets the value of field 'EndCondition'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetEndCondition(value) end

---Gets the value of field 'EndConditionParam'.
---@return integer value
function row:GetEndConditionParam() end

---Sets the value of field 'EndConditionParam'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetEndConditionParam(value) end

---Gets the value of field 'EndConditionDelay'.
---@return integer value
function row:GetEndConditionDelay() end

---Sets the value of field 'EndConditionDelay'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetEndConditionDelay(value) end

---Gets the value of field 'Speed'.
---@return number value
function row:GetSpeed() end

---Sets the value of field 'Speed'.
---@param value number
---@return dbc.row.v1215.AnimKitSegment self
function row:SetSpeed(value) end

---Gets the value of field 'SegmentFlags'.
---@return integer value
function row:GetSegmentFlags() end

---Sets the value of field 'SegmentFlags'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetSegmentFlags(value) end

---Gets the value of field 'ForcedVariation'.
---@return integer value
function row:GetForcedVariation() end

---Sets the value of field 'ForcedVariation'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetForcedVariation(value) end

---Gets the value of field 'OverrideConfigFlags'.
---@return integer value
function row:GetOverrideConfigFlags() end

---Sets the value of field 'OverrideConfigFlags'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetOverrideConfigFlags(value) end

---Gets the value of field 'LoopToSegmentIndex'.
---@return integer value
function row:GetLoopToSegmentIndex() end

---Sets the value of field 'LoopToSegmentIndex'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetLoopToSegmentIndex(value) end

---Gets the value of field 'BlendInTimeMs'.
---@return integer value
function row:GetBlendInTimeMs() end

---Sets the value of field 'BlendInTimeMs'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetBlendInTimeMs(value) end

---Gets the value of field 'BlendOutTimeMs'.
---@return integer value
function row:GetBlendOutTimeMs() end

---Sets the value of field 'BlendOutTimeMs'.
---@param value integer
---@return dbc.row.v1215.AnimKitSegment self
function row:SetBlendOutTimeMs(value) end

---Gets the value of field 'Field_9_0_1_34278_018'.
---@return number value
function row:GetField_9_0_1_34278_018() end

---Sets the value of field 'Field_9_0_1_34278_018'.
---@param value number
---@return dbc.row.v1215.AnimKitSegment self
function row:SetField_9_0_1_34278_018(value) end

---Table container for AnimKitSegment (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitSegment : DbcTable
---@field [integer] dbc.row.v1215.AnimKitSegment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitSegment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitSegment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitSegment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitSegment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitSegment[]
function tbl:GetByRelation(foreign_id) end

return {}
