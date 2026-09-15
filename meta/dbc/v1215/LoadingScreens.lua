---@meta
-- Generated LuaLS annotations for LoadingScreens (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LoadingScreens in build 12.1.5.69594.
---@class dbc.row.v1215.LoadingScreens : RowProxy
---@field ID integer
---@field NarrowScreenFileDataID integer
---@field WideScreenFileDataID integer
---@field WideScreen169FileDataID integer
---@field LoadingScreenSkinID integer
---@field MainImageFileDataID integer
---@field LogoFileDataID integer
---@field Field_8_1_5_28938_006 number
---@field Field_8_1_5_28938_007 number
---@field Field_8_1_5_28938_008 number
---@field Field_8_1_5_28938_009 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetID(value) end

---Gets the value of field 'NarrowScreenFileDataID'.
---@return integer value
function row:GetNarrowScreenFileDataID() end

---Sets the value of field 'NarrowScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetNarrowScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'NarrowScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetNarrowScreenFileData() end

---Creates a related 'FileData' row and automatically links 'NarrowScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WideScreenFileDataID'.
---@return integer value
function row:GetWideScreenFileDataID() end

---Sets the value of field 'WideScreenFileDataID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetWideScreenFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'WideScreenFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetWideScreenFileData() end

---Creates a related 'FileData' row and automatically links 'WideScreenFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WideScreen169FileDataID'.
---@return integer value
function row:GetWideScreen169FileDataID() end

---Sets the value of field 'WideScreen169FileDataID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetWideScreen169FileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'WideScreen169FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetWideScreen169FileData() end

---Creates a related 'FileData' row and automatically links 'WideScreen169FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LoadingScreenSkinID'.
---@return integer value
function row:GetLoadingScreenSkinID() end

---Sets the value of field 'LoadingScreenSkinID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetLoadingScreenSkinID(value) end

---Navigates foreign relationship to 'LoadingScreenSkin' via 'LoadingScreenSkinID'.
---@return dbc.row.v1215.LoadingScreenSkin|nil
function row:GetLoadingScreenSkin() end

---Creates a related 'LoadingScreenSkin' row and automatically links 'LoadingScreenSkinID'.
---@param data? table
---@return dbc.row.v1215.LoadingScreenSkin
function row:CreateRelated(data) end

---Gets the value of field 'MainImageFileDataID'.
---@return integer value
function row:GetMainImageFileDataID() end

---Sets the value of field 'MainImageFileDataID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetMainImageFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'MainImageFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetMainImageFileData() end

---Creates a related 'FileData' row and automatically links 'MainImageFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LogoFileDataID'.
---@return integer value
function row:GetLogoFileDataID() end

---Sets the value of field 'LogoFileDataID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreens self
function row:SetLogoFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LogoFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLogoFileData() end

---Creates a related 'FileData' row and automatically links 'LogoFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_1_5_28938_006'.
---@return number value
function row:GetField_8_1_5_28938_006() end

---Sets the value of field 'Field_8_1_5_28938_006'.
---@param value number
---@return dbc.row.v1215.LoadingScreens self
function row:SetField_8_1_5_28938_006(value) end

---Gets the value of field 'Field_8_1_5_28938_007'.
---@return number value
function row:GetField_8_1_5_28938_007() end

---Sets the value of field 'Field_8_1_5_28938_007'.
---@param value number
---@return dbc.row.v1215.LoadingScreens self
function row:SetField_8_1_5_28938_007(value) end

---Gets the value of field 'Field_8_1_5_28938_008'.
---@return number value
function row:GetField_8_1_5_28938_008() end

---Sets the value of field 'Field_8_1_5_28938_008'.
---@param value number
---@return dbc.row.v1215.LoadingScreens self
function row:SetField_8_1_5_28938_008(value) end

---Gets the value of field 'Field_8_1_5_28938_009'.
---@return number value
function row:GetField_8_1_5_28938_009() end

---Sets the value of field 'Field_8_1_5_28938_009'.
---@param value number
---@return dbc.row.v1215.LoadingScreens self
function row:SetField_8_1_5_28938_009(value) end

---Table container for LoadingScreens (Build 12.1.5.69594).
---@class dbc.Table.v1215.LoadingScreens : DbcTable
---@field [integer] dbc.row.v1215.LoadingScreens
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LoadingScreens
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreens|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreens
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LoadingScreens>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LoadingScreens[]
function tbl:GetByRelation(foreign_id) end

return {}
