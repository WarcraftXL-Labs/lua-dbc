---@meta
-- Generated LuaLS annotations for AreaTrigger (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTrigger in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTrigger : RowProxy
---@field Pos number[]
---@field ID integer
---@field ContinentID integer
---@field PhaseUseFlags integer
---@field PhaseID integer
---@field PhaseGroupID integer
---@field Radius number
---@field Box_length number
---@field Box_width number
---@field Box_height number
---@field Box_yaw number
---@field ShapeType integer AREA_TRIGGER_$x: 0: SPHERE, 1: BOX, 2*: 2D_QUAD, 3: ARBITRARY_SHAPE, 4: CYLINDER, 5*: SCRIPT_SHAPE, 6*: FROM_UNIT_SHAPE; *=enum assignment guessed
---@field ShapeID integer depending on ShapeType: 0: AreaTriggerSphereID, 1: AreaTriggerBoxID, 3: PathID, 4: AreaTriggerCylinderID, 7: AreaTriggerDiskID
---@field AreaTriggerActionSetID integer
---@field Flags integer

local row = {}

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.AreaTrigger self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v1215.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'PhaseUseFlags'.
---@return integer value
function row:GetPhaseUseFlags() end

---Sets the value of field 'PhaseUseFlags'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetPhaseUseFlags(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
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
---@return dbc.row.v1215.AreaTrigger self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseXPhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseXPhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseXPhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseXPhaseGroup
function row:CreateRelated(data) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.AreaTrigger self
function row:SetRadius(value) end

---Gets the value of field 'Box_length'.
---@return number value
function row:GetBox_length() end

---Sets the value of field 'Box_length'.
---@param value number
---@return dbc.row.v1215.AreaTrigger self
function row:SetBox_length(value) end

---Gets the value of field 'Box_width'.
---@return number value
function row:GetBox_width() end

---Sets the value of field 'Box_width'.
---@param value number
---@return dbc.row.v1215.AreaTrigger self
function row:SetBox_width(value) end

---Gets the value of field 'Box_height'.
---@return number value
function row:GetBox_height() end

---Sets the value of field 'Box_height'.
---@param value number
---@return dbc.row.v1215.AreaTrigger self
function row:SetBox_height(value) end

---Gets the value of field 'Box_yaw'.
---@return number value
function row:GetBox_yaw() end

---Sets the value of field 'Box_yaw'.
---@param value number
---@return dbc.row.v1215.AreaTrigger self
function row:SetBox_yaw(value) end

---Gets the value of field 'ShapeType'.
---@return integer value
function row:GetShapeType() end

---Sets the value of field 'ShapeType'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetShapeType(value) end

---Gets the value of field 'ShapeID'.
---@return integer value
function row:GetShapeID() end

---Sets the value of field 'ShapeID'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetShapeID(value) end

---Navigates foreign relationship to 'Shape' via 'ShapeID'.
---@return dbc.row.v1215.Shape|nil
function row:GetShape() end

---Creates a related 'Shape' row and automatically links 'ShapeID'.
---@param data? table
---@return dbc.row.v1215.Shape
function row:CreateRelated(data) end

---Gets the value of field 'AreaTriggerActionSetID'.
---@return integer value
function row:GetAreaTriggerActionSetID() end

---Sets the value of field 'AreaTriggerActionSetID'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetAreaTriggerActionSetID(value) end

---Navigates foreign relationship to 'AreaTriggerActionSet' via 'AreaTriggerActionSetID'.
---@return dbc.row.v1215.AreaTriggerActionSet|nil
function row:GetAreaTriggerActionSet() end

---Creates a related 'AreaTriggerActionSet' row and automatically links 'AreaTriggerActionSetID'.
---@param data? table
---@return dbc.row.v1215.AreaTriggerActionSet
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AreaTrigger self
function row:SetFlags(value) end

---Table container for AreaTrigger (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTrigger : DbcTable
---@field [integer] dbc.row.v1215.AreaTrigger
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTrigger
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTrigger|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTrigger
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTrigger>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTrigger[]
function tbl:GetByRelation(foreign_id) end

return {}
