---@meta
-- Generated LuaLS annotations for UnitPowerBar (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UnitPowerBar in build 12.1.5.69594.
---@class dbc.row.v1215.UnitPowerBar : RowProxy
---@field ID integer
---@field Name_lang string
---@field Cost_lang string
---@field OutOfError_lang string
---@field ToolTip_lang string
---@field MinPower integer
---@field MaxPower integer
---@field StartPower integer
---@field CenterPower integer
---@field RegenerationPeace number
---@field RegenerationCombat number
---@field BarType integer
---@field Flags integer
---@field StartInset number
---@field EndInset number
---@field FileDataID integer[]
---@field Color integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.UnitPowerBar self
function row:SetName_lang(value) end

---Gets the value of field 'Cost_lang'.
---@return string value
function row:GetCost_lang() end

---Sets the value of field 'Cost_lang'.
---@param value string
---@return dbc.row.v1215.UnitPowerBar self
function row:SetCost_lang(value) end

---Gets the value of field 'OutOfError_lang'.
---@return string value
function row:GetOutOfError_lang() end

---Sets the value of field 'OutOfError_lang'.
---@param value string
---@return dbc.row.v1215.UnitPowerBar self
function row:SetOutOfError_lang(value) end

---Gets the value of field 'ToolTip_lang'.
---@return string value
function row:GetToolTip_lang() end

---Sets the value of field 'ToolTip_lang'.
---@param value string
---@return dbc.row.v1215.UnitPowerBar self
function row:SetToolTip_lang(value) end

---Gets the value of field 'MinPower'.
---@return integer value
function row:GetMinPower() end

---Sets the value of field 'MinPower'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetMinPower(value) end

---Gets the value of field 'MaxPower'.
---@return integer value
function row:GetMaxPower() end

---Sets the value of field 'MaxPower'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetMaxPower(value) end

---Gets the value of field 'StartPower'.
---@return integer value
function row:GetStartPower() end

---Sets the value of field 'StartPower'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetStartPower(value) end

---Gets the value of field 'CenterPower'.
---@return integer value
function row:GetCenterPower() end

---Sets the value of field 'CenterPower'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetCenterPower(value) end

---Gets the value of field 'RegenerationPeace'.
---@return number value
function row:GetRegenerationPeace() end

---Sets the value of field 'RegenerationPeace'.
---@param value number
---@return dbc.row.v1215.UnitPowerBar self
function row:SetRegenerationPeace(value) end

---Gets the value of field 'RegenerationCombat'.
---@return number value
function row:GetRegenerationCombat() end

---Sets the value of field 'RegenerationCombat'.
---@param value number
---@return dbc.row.v1215.UnitPowerBar self
function row:SetRegenerationCombat(value) end

---Gets the value of field 'BarType'.
---@return integer value
function row:GetBarType() end

---Sets the value of field 'BarType'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetBarType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UnitPowerBar self
function row:SetFlags(value) end

---Gets the value of field 'StartInset'.
---@return number value
function row:GetStartInset() end

---Sets the value of field 'StartInset'.
---@param value number
---@return dbc.row.v1215.UnitPowerBar self
function row:SetStartInset(value) end

---Gets the value of field 'EndInset'.
---@return number value
function row:GetEndInset() end

---Sets the value of field 'EndInset'.
---@param value number
---@return dbc.row.v1215.UnitPowerBar self
function row:SetEndInset(value) end

---Gets the value of field 'FileDataID'.
---@return integer[] value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer[]
---@return dbc.row.v1215.UnitPowerBar self
function row:SetFileDataID(value) end

---Gets element at 1-based index in 'FileDataID'.
---@param index integer
---@return integer value
function row:GetFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Color'.
---@return integer[] value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer[]
---@return dbc.row.v1215.UnitPowerBar self
function row:SetColor(value) end

---Gets element at 1-based index in 'Color'.
---@param index integer
---@return integer value
function row:GetColorItem(index) end

---Table container for UnitPowerBar (Build 12.1.5.69594).
---@class dbc.Table.v1215.UnitPowerBar : DbcTable
---@field [integer] dbc.row.v1215.UnitPowerBar
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UnitPowerBar
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UnitPowerBar|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UnitPowerBar
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UnitPowerBar>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UnitPowerBar[]
function tbl:GetByRelation(foreign_id) end

return {}
