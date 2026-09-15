---@meta
-- Generated LuaLS annotations for ChrCustomizationChoice (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationChoice in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationChoice : RowProxy
---@field Name_lang string
---@field ID integer
---@field ChrCustomizationOptionID integer
---@field ChrCustomizationReqID integer
---@field ChrCustomizationVisReqID integer
---@field OrderIndex integer per ChrCustomizationOptionID - used to sort internal structures
---@field UiOrderIndex integer returned in lua
---@field Flags integer
---@field AddedInPatch integer
---@field SoundKitID integer
---@field SwatchColor integer[]

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetID(value) end

---Gets the value of field 'ChrCustomizationOptionID'.
---@return integer value
function row:GetChrCustomizationOptionID() end

---Sets the value of field 'ChrCustomizationOptionID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetChrCustomizationOptionID(value) end

---Navigates foreign relationship to 'ChrCustomizationOption' via 'ChrCustomizationOptionID'.
---@return dbc.row.v1215.ChrCustomizationOption|nil
function row:GetChrCustomizationOption() end

---Creates a related 'ChrCustomizationOption' row and automatically links 'ChrCustomizationOptionID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationOption
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationReqID'.
---@return integer value
function row:GetChrCustomizationReqID() end

---Sets the value of field 'ChrCustomizationReqID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetChrCustomizationReqID(value) end

---Navigates foreign relationship to 'ChrCustomizationReq' via 'ChrCustomizationReqID'.
---@return dbc.row.v1215.ChrCustomizationReq|nil
function row:GetChrCustomizationReq() end

---Creates a related 'ChrCustomizationReq' row and automatically links 'ChrCustomizationReqID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationReq
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationVisReqID'.
---@return integer value
function row:GetChrCustomizationVisReqID() end

---Sets the value of field 'ChrCustomizationVisReqID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetChrCustomizationVisReqID(value) end

---Navigates foreign relationship to 'ChrCustomizationVisReq' via 'ChrCustomizationVisReqID'.
---@return dbc.row.v1215.ChrCustomizationVisReq|nil
function row:GetChrCustomizationVisReq() end

---Creates a related 'ChrCustomizationVisReq' row and automatically links 'ChrCustomizationVisReqID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationVisReq
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetOrderIndex(value) end

---Gets the value of field 'UiOrderIndex'.
---@return integer value
function row:GetUiOrderIndex() end

---Sets the value of field 'UiOrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetUiOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetFlags(value) end

---Gets the value of field 'AddedInPatch'.
---@return integer value
function row:GetAddedInPatch() end

---Sets the value of field 'AddedInPatch'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetAddedInPatch(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SwatchColor'.
---@return integer[] value
function row:GetSwatchColor() end

---Sets the value of field 'SwatchColor'.
---@param value integer[]
---@return dbc.row.v1215.ChrCustomizationChoice self
function row:SetSwatchColor(value) end

---Gets element at 1-based index in 'SwatchColor'.
---@param index integer
---@return integer value
function row:GetSwatchColorItem(index) end

---Table container for ChrCustomizationChoice (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationChoice : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationChoice
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationChoice
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationChoice
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationChoice>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationChoice[]
function tbl:GetByRelation(foreign_id) end

return {}
