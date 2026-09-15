---@meta
-- Generated LuaLS annotations for WeaponTrail (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WeaponTrail in build 12.1.5.69594.
---@class dbc.row.v1215.WeaponTrail : RowProxy
---@field ID integer
---@field FileDataID integer
---@field Roll number
---@field Pitch number
---@field Yaw number
---@field TextureFileDataID integer[]
---@field TextureScrollRateU number[]
---@field TextureScrollRateV number[]
---@field TextureScaleU number[]
---@field TextureScaleV number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrail self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrail self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Roll'.
---@return number value
function row:GetRoll() end

---Sets the value of field 'Roll'.
---@param value number
---@return dbc.row.v1215.WeaponTrail self
function row:SetRoll(value) end

---Gets the value of field 'Pitch'.
---@return number value
function row:GetPitch() end

---Sets the value of field 'Pitch'.
---@param value number
---@return dbc.row.v1215.WeaponTrail self
function row:SetPitch(value) end

---Gets the value of field 'Yaw'.
---@return number value
function row:GetYaw() end

---Sets the value of field 'Yaw'.
---@param value number
---@return dbc.row.v1215.WeaponTrail self
function row:SetYaw(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer[] value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.WeaponTrail self
function row:SetTextureFileDataID(value) end

---Gets element at 1-based index in 'TextureFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'TextureScrollRateU'.
---@return number[] value
function row:GetTextureScrollRateU() end

---Sets the value of field 'TextureScrollRateU'.
---@param value number[]
---@return dbc.row.v1215.WeaponTrail self
function row:SetTextureScrollRateU(value) end

---Gets element at 1-based index in 'TextureScrollRateU'.
---@param index integer
---@return number value
function row:GetTextureScrollRateUItem(index) end

---Gets the value of field 'TextureScrollRateV'.
---@return number[] value
function row:GetTextureScrollRateV() end

---Sets the value of field 'TextureScrollRateV'.
---@param value number[]
---@return dbc.row.v1215.WeaponTrail self
function row:SetTextureScrollRateV(value) end

---Gets element at 1-based index in 'TextureScrollRateV'.
---@param index integer
---@return number value
function row:GetTextureScrollRateVItem(index) end

---Gets the value of field 'TextureScaleU'.
---@return number[] value
function row:GetTextureScaleU() end

---Sets the value of field 'TextureScaleU'.
---@param value number[]
---@return dbc.row.v1215.WeaponTrail self
function row:SetTextureScaleU(value) end

---Gets element at 1-based index in 'TextureScaleU'.
---@param index integer
---@return number value
function row:GetTextureScaleUItem(index) end

---Gets the value of field 'TextureScaleV'.
---@return number[] value
function row:GetTextureScaleV() end

---Sets the value of field 'TextureScaleV'.
---@param value number[]
---@return dbc.row.v1215.WeaponTrail self
function row:SetTextureScaleV(value) end

---Gets element at 1-based index in 'TextureScaleV'.
---@param index integer
---@return number value
function row:GetTextureScaleVItem(index) end

---Table container for WeaponTrail (Build 12.1.5.69594).
---@class dbc.Table.v1215.WeaponTrail : DbcTable
---@field [integer] dbc.row.v1215.WeaponTrail
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WeaponTrail
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrail|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrail
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WeaponTrail>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WeaponTrail[]
function tbl:GetByRelation(foreign_id) end

return {}
