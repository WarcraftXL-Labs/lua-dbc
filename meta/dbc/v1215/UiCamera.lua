---@meta
-- Generated LuaLS annotations for UiCamera (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCamera in build 12.1.5.69594.
---@class dbc.row.v1215.UiCamera : RowProxy
---@field ID integer
---@field Name string
---@field Pos number[]
---@field LookAt number[]
---@field Up number[]
---@field UiCameraTypeID integer
---@field AnimID integer
---@field AnimFrame integer
---@field AnimVariation integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.UiCamera self
function row:SetName(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.UiCamera self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'LookAt'.
---@return number[] value
function row:GetLookAt() end

---Sets the value of field 'LookAt'.
---@param value number[]
---@return dbc.row.v1215.UiCamera self
function row:SetLookAt(value) end

---Gets element at 1-based index in 'LookAt'.
---@param index integer
---@return number value
function row:GetLookAtItem(index) end

---Gets the value of field 'Up'.
---@return number[] value
function row:GetUp() end

---Sets the value of field 'Up'.
---@param value number[]
---@return dbc.row.v1215.UiCamera self
function row:SetUp(value) end

---Gets element at 1-based index in 'Up'.
---@param index integer
---@return number value
function row:GetUpItem(index) end

---Gets the value of field 'UiCameraTypeID'.
---@return integer value
function row:GetUiCameraTypeID() end

---Sets the value of field 'UiCameraTypeID'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetUiCameraTypeID(value) end

---Navigates foreign relationship to 'UiCameraType' via 'UiCameraTypeID'.
---@return dbc.row.v1215.UiCameraType|nil
function row:GetUiCameraType() end

---Creates a related 'UiCameraType' row and automatically links 'UiCameraTypeID'.
---@param data? table
---@return dbc.row.v1215.UiCameraType
function row:CreateRelated(data) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'Anim' via 'AnimID'.
---@return dbc.row.v1215.Anim|nil
function row:GetAnim() end

---Creates a related 'Anim' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v1215.Anim
function row:CreateRelated(data) end

---Gets the value of field 'AnimFrame'.
---@return integer value
function row:GetAnimFrame() end

---Sets the value of field 'AnimFrame'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetAnimFrame(value) end

---Gets the value of field 'AnimVariation'.
---@return integer value
function row:GetAnimVariation() end

---Sets the value of field 'AnimVariation'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetAnimVariation(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiCamera self
function row:SetFlags(value) end

---Table container for UiCamera (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCamera : DbcTable
---@field [integer] dbc.row.v1215.UiCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
